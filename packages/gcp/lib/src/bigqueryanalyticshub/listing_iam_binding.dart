import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_iam_binding_args.dart';
import 'listing_iam_binding_condition.dart';

/// Three different resources help you manage your IAM policy for BigQuery Analytics Hub Listing. Each of these resources serves a different use case:
///
/// * `gcp.bigqueryanalyticshub.ListingIamPolicy`: Authoritative. Sets the IAM policy for the listing and replaces any existing policy already attached.
/// * `gcp.bigqueryanalyticshub.ListingIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the listing are preserved.
/// * `gcp.bigqueryanalyticshub.ListingIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the listing are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.bigqueryanalyticshub.ListingIamPolicy`: Retrieves the IAM policy for the listing
///
/// > **Note:** `gcp.bigqueryanalyticshub.ListingIamPolicy` **cannot** be used in conjunction with `gcp.bigqueryanalyticshub.ListingIamBinding` and `gcp.bigqueryanalyticshub.ListingIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.bigqueryanalyticshub.ListingIamBinding` resources **can be** used in conjunction with `gcp.bigqueryanalyticshub.ListingIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.bigqueryanalyticshub.ListingIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.bigqueryanalyticshub.ListingIamPolicy("policy", {
///     project: listing.project,
///     location: listing.location,
///     dataExchangeId: listing.dataExchangeId,
///     listingId: listing.listingId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.bigqueryanalyticshub.ListingIamPolicy("policy",
///     project=listing["project"],
///     location=listing["location"],
///     data_exchange_id=listing["dataExchangeId"],
///     listing_id=listing["listingId"],
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.BigQueryAnalyticsHub.ListingIamPolicy("policy", new()
///     {
///         Project = listing.Project,
///         Location = listing.Location,
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = listing.ListingId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListingIamPolicy(ctx, "policy", &bigqueryanalyticshub.ListingIamPolicyArgs{
/// 			Project:        pulumi.Any(listing.Project),
/// 			Location:       pulumi.Any(listing.Location),
/// 			DataExchangeId: pulumi.Any(listing.DataExchangeId),
/// 			ListingId:      pulumi.Any(listing.ListingId),
/// 			PolicyData:     pulumi.String(admin.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamPolicy;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new ListingIamPolicy("policy", ListingIamPolicyArgs.builder()
///             .project(listing.project())
///             .location(listing.location())
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId(listing.listingId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:bigqueryanalyticshub:ListingIamPolicy
///     properties:
///       project: ${listing.project}
///       location: ${listing.location}
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: ${listing.listingId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.bigqueryanalyticshub.ListingIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigqueryanalyticshub.ListingIamBinding("binding", {
///     project: listing.project,
///     location: listing.location,
///     dataExchangeId: listing.dataExchangeId,
///     listingId: listing.listingId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigqueryanalyticshub.ListingIamBinding("binding",
///     project=listing["project"],
///     location=listing["location"],
///     data_exchange_id=listing["dataExchangeId"],
///     listing_id=listing["listingId"],
///     role="roles/viewer",
///     members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var binding = new Gcp.BigQueryAnalyticsHub.ListingIamBinding("binding", new()
///     {
///         Project = listing.Project,
///         Location = listing.Location,
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = listing.ListingId,
///         Role = "roles/viewer",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigqueryanalyticshub.NewListingIamBinding(ctx, "binding", &bigqueryanalyticshub.ListingIamBindingArgs{
/// 			Project:        pulumi.Any(listing.Project),
/// 			Location:       pulumi.Any(listing.Location),
/// 			DataExchangeId: pulumi.Any(listing.DataExchangeId),
/// 			ListingId:      pulumi.Any(listing.ListingId),
/// 			Role:           pulumi.String("roles/viewer"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamBinding;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamBindingArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var binding = new ListingIamBinding("binding", ListingIamBindingArgs.builder()
///             .project(listing.project())
///             .location(listing.location())
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId(listing.listingId())
///             .role("roles/viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:bigqueryanalyticshub:ListingIamBinding
///     properties:
///       project: ${listing.project}
///       location: ${listing.location}
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: ${listing.listingId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigqueryanalyticshub.ListingIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigqueryanalyticshub.ListingIamMember("member", {
///     project: listing.project,
///     location: listing.location,
///     dataExchangeId: listing.dataExchangeId,
///     listingId: listing.listingId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigqueryanalyticshub.ListingIamMember("member",
///     project=listing["project"],
///     location=listing["location"],
///     data_exchange_id=listing["dataExchangeId"],
///     listing_id=listing["listingId"],
///     role="roles/viewer",
///     member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var member = new Gcp.BigQueryAnalyticsHub.ListingIamMember("member", new()
///     {
///         Project = listing.Project,
///         Location = listing.Location,
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = listing.ListingId,
///         Role = "roles/viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigqueryanalyticshub.NewListingIamMember(ctx, "member", &bigqueryanalyticshub.ListingIamMemberArgs{
/// 			Project:        pulumi.Any(listing.Project),
/// 			Location:       pulumi.Any(listing.Location),
/// 			DataExchangeId: pulumi.Any(listing.DataExchangeId),
/// 			ListingId:      pulumi.Any(listing.ListingId),
/// 			Role:           pulumi.String("roles/viewer"),
/// 			Member:         pulumi.String("user:jane@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamMember;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamMemberArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var member = new ListingIamMember("member", ListingIamMemberArgs.builder()
///             .project(listing.project())
///             .location(listing.location())
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId(listing.listingId())
///             .role("roles/viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:bigqueryanalyticshub:ListingIamMember
///     properties:
///       project: ${listing.project}
///       location: ${listing.location}
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: ${listing.listingId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for BigQuery Analytics Hub Listing
///
/// Three different resources help you manage your IAM policy for BigQuery Analytics Hub Listing. Each of these resources serves a different use case:
///
/// * `gcp.bigqueryanalyticshub.ListingIamPolicy`: Authoritative. Sets the IAM policy for the listing and replaces any existing policy already attached.
/// * `gcp.bigqueryanalyticshub.ListingIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the listing are preserved.
/// * `gcp.bigqueryanalyticshub.ListingIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the listing are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.bigqueryanalyticshub.ListingIamPolicy`: Retrieves the IAM policy for the listing
///
/// > **Note:** `gcp.bigqueryanalyticshub.ListingIamPolicy` **cannot** be used in conjunction with `gcp.bigqueryanalyticshub.ListingIamBinding` and `gcp.bigqueryanalyticshub.ListingIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.bigqueryanalyticshub.ListingIamBinding` resources **can be** used in conjunction with `gcp.bigqueryanalyticshub.ListingIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.bigqueryanalyticshub.ListingIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.bigqueryanalyticshub.ListingIamPolicy("policy", {
///     project: listing.project,
///     location: listing.location,
///     dataExchangeId: listing.dataExchangeId,
///     listingId: listing.listingId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.bigqueryanalyticshub.ListingIamPolicy("policy",
///     project=listing["project"],
///     location=listing["location"],
///     data_exchange_id=listing["dataExchangeId"],
///     listing_id=listing["listingId"],
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.BigQueryAnalyticsHub.ListingIamPolicy("policy", new()
///     {
///         Project = listing.Project,
///         Location = listing.Location,
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = listing.ListingId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListingIamPolicy(ctx, "policy", &bigqueryanalyticshub.ListingIamPolicyArgs{
/// 			Project:        pulumi.Any(listing.Project),
/// 			Location:       pulumi.Any(listing.Location),
/// 			DataExchangeId: pulumi.Any(listing.DataExchangeId),
/// 			ListingId:      pulumi.Any(listing.ListingId),
/// 			PolicyData:     pulumi.String(admin.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamPolicy;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new ListingIamPolicy("policy", ListingIamPolicyArgs.builder()
///             .project(listing.project())
///             .location(listing.location())
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId(listing.listingId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:bigqueryanalyticshub:ListingIamPolicy
///     properties:
///       project: ${listing.project}
///       location: ${listing.location}
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: ${listing.listingId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.bigqueryanalyticshub.ListingIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigqueryanalyticshub.ListingIamBinding("binding", {
///     project: listing.project,
///     location: listing.location,
///     dataExchangeId: listing.dataExchangeId,
///     listingId: listing.listingId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigqueryanalyticshub.ListingIamBinding("binding",
///     project=listing["project"],
///     location=listing["location"],
///     data_exchange_id=listing["dataExchangeId"],
///     listing_id=listing["listingId"],
///     role="roles/viewer",
///     members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var binding = new Gcp.BigQueryAnalyticsHub.ListingIamBinding("binding", new()
///     {
///         Project = listing.Project,
///         Location = listing.Location,
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = listing.ListingId,
///         Role = "roles/viewer",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigqueryanalyticshub.NewListingIamBinding(ctx, "binding", &bigqueryanalyticshub.ListingIamBindingArgs{
/// 			Project:        pulumi.Any(listing.Project),
/// 			Location:       pulumi.Any(listing.Location),
/// 			DataExchangeId: pulumi.Any(listing.DataExchangeId),
/// 			ListingId:      pulumi.Any(listing.ListingId),
/// 			Role:           pulumi.String("roles/viewer"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamBinding;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamBindingArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var binding = new ListingIamBinding("binding", ListingIamBindingArgs.builder()
///             .project(listing.project())
///             .location(listing.location())
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId(listing.listingId())
///             .role("roles/viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:bigqueryanalyticshub:ListingIamBinding
///     properties:
///       project: ${listing.project}
///       location: ${listing.location}
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: ${listing.listingId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigqueryanalyticshub.ListingIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigqueryanalyticshub.ListingIamMember("member", {
///     project: listing.project,
///     location: listing.location,
///     dataExchangeId: listing.dataExchangeId,
///     listingId: listing.listingId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigqueryanalyticshub.ListingIamMember("member",
///     project=listing["project"],
///     location=listing["location"],
///     data_exchange_id=listing["dataExchangeId"],
///     listing_id=listing["listingId"],
///     role="roles/viewer",
///     member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var member = new Gcp.BigQueryAnalyticsHub.ListingIamMember("member", new()
///     {
///         Project = listing.Project,
///         Location = listing.Location,
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = listing.ListingId,
///         Role = "roles/viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigqueryanalyticshub.NewListingIamMember(ctx, "member", &bigqueryanalyticshub.ListingIamMemberArgs{
/// 			Project:        pulumi.Any(listing.Project),
/// 			Location:       pulumi.Any(listing.Location),
/// 			DataExchangeId: pulumi.Any(listing.DataExchangeId),
/// 			ListingId:      pulumi.Any(listing.ListingId),
/// 			Role:           pulumi.String("roles/viewer"),
/// 			Member:         pulumi.String("user:jane@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamMember;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamMemberArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var member = new ListingIamMember("member", ListingIamMemberArgs.builder()
///             .project(listing.project())
///             .location(listing.location())
///             .dataExchangeId(listing.dataExchangeId())
///             .listingId(listing.listingId())
///             .role("roles/viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:bigqueryanalyticshub:ListingIamMember
///     properties:
///       project: ${listing.project}
///       location: ${listing.location}
///       dataExchangeId: ${listing.dataExchangeId}
///       listingId: ${listing.listingId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/listings/{{listing_id}}
///
/// * {{project}}/{{location}}/{{data_exchange_id}}/{{listing_id}}
///
/// * {{location}}/{{data_exchange_id}}/{{listing_id}}
///
/// * {{listing_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BigQuery Analytics Hub listing IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listingIamBinding:ListingIamBinding editor "projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/listings/{{listing_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listingIamBinding:ListingIamBinding editor "projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/listings/{{listing_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listingIamBinding:ListingIamBinding editor projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/listings/{{listing_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ListingIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<ListingIamBindingCondition?> condition;

  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> dataExchangeId;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> listingId;

  /// The name of the location this data exchange listing.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  late final pulumi.Output<List<String>> members;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// The role that should be applied. Only one
  /// `gcp.bigqueryanalyticshub.ListingIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [ListingIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ListingIamBinding]. {@macro pulumi_bigqueryanalyticshub_listing_iam_binding_listing_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ListingIamBinding(
    String name, {
    ListingIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/listingIamBinding:ListingIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<ListingIamBindingCondition?>('condition');
    this.dataExchangeId = registerOutput<String>('dataExchangeId');
    this.etag = registerOutput<String>('etag');
    this.listingId = registerOutput<String>('listingId');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
