import 'package:pulumi/pulumi.dart' as pulumi;
import 'datapolicyv2_data_policy_iam_binding_args.dart';
import 'datapolicyv2_data_policy_iam_binding_condition.dart';

/// Three different resources help you manage your IAM policy for BigQuery Data Policy V2 DataPolicy. Each of these resources serves a different use case:
///
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`: Authoritative. Sets the IAM policy for the datapolicy and replaces any existing policy already attached.
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the datapolicy are preserved.
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the datapolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`: Retrieves the IAM policy for the datapolicy
///
/// > **Note:** `gcp.bigquery.Datapolicyv2DataPolicyIamPolicy` **cannot** be used in conjunction with `gcp.bigquery.Datapolicyv2DataPolicyIamBinding` and `gcp.bigquery.Datapolicyv2DataPolicyIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.bigquery.Datapolicyv2DataPolicyIamBinding` resources **can be** used in conjunction with `gcp.bigquery.Datapolicyv2DataPolicyIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
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
/// const policy = new gcp.bigquery.Datapolicyv2DataPolicyIamPolicy("policy", {
///     project: basicDataPolicy.project,
///     location: basicDataPolicy.location,
///     dataPolicyId: basicDataPolicy.dataPolicyId,
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
/// policy = gcp.bigquery.Datapolicyv2DataPolicyIamPolicy("policy",
///     project=basic_data_policy["project"],
///     location=basic_data_policy["location"],
///     data_policy_id=basic_data_policy["dataPolicyId"],
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
///     var policy = new Gcp.BigQuery.Datapolicyv2DataPolicyIamPolicy("policy", new()
///     {
///         Project = basicDataPolicy.Project,
///         Location = basicDataPolicy.Location,
///         DataPolicyId = basicDataPolicy.DataPolicyId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
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
/// 		_, err = bigquery.NewDatapolicyv2DataPolicyIamPolicy(ctx, "policy", &bigquery.Datapolicyv2DataPolicyIamPolicyArgs{
/// 			Project:      pulumi.Any(basicDataPolicy.Project),
/// 			Location:     pulumi.Any(basicDataPolicy.Location),
/// 			DataPolicyId: pulumi.Any(basicDataPolicy.DataPolicyId),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamPolicy;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamPolicyArgs;
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
///         var policy = new Datapolicyv2DataPolicyIamPolicy("policy", Datapolicyv2DataPolicyIamPolicyArgs.builder()
///             .project(basicDataPolicy.project())
///             .location(basicDataPolicy.location())
///             .dataPolicyId(basicDataPolicy.dataPolicyId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:bigquery:Datapolicyv2DataPolicyIamPolicy
///     properties:
///       project: ${basicDataPolicy.project}
///       location: ${basicDataPolicy.location}
///       dataPolicyId: ${basicDataPolicy.dataPolicyId}
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
/// ## gcp.bigquery.Datapolicyv2DataPolicyIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigquery.Datapolicyv2DataPolicyIamBinding("binding", {
///     project: basicDataPolicy.project,
///     location: basicDataPolicy.location,
///     dataPolicyId: basicDataPolicy.dataPolicyId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigquery.Datapolicyv2DataPolicyIamBinding("binding",
///     project=basic_data_policy["project"],
///     location=basic_data_policy["location"],
///     data_policy_id=basic_data_policy["dataPolicyId"],
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
///     var binding = new Gcp.BigQuery.Datapolicyv2DataPolicyIamBinding("binding", new()
///     {
///         Project = basicDataPolicy.Project,
///         Location = basicDataPolicy.Location,
///         DataPolicyId = basicDataPolicy.DataPolicyId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewDatapolicyv2DataPolicyIamBinding(ctx, "binding", &bigquery.Datapolicyv2DataPolicyIamBindingArgs{
/// 			Project:      pulumi.Any(basicDataPolicy.Project),
/// 			Location:     pulumi.Any(basicDataPolicy.Location),
/// 			DataPolicyId: pulumi.Any(basicDataPolicy.DataPolicyId),
/// 			Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamBinding;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamBindingArgs;
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
///         var binding = new Datapolicyv2DataPolicyIamBinding("binding", Datapolicyv2DataPolicyIamBindingArgs.builder()
///             .project(basicDataPolicy.project())
///             .location(basicDataPolicy.location())
///             .dataPolicyId(basicDataPolicy.dataPolicyId())
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
///     type: gcp:bigquery:Datapolicyv2DataPolicyIamBinding
///     properties:
///       project: ${basicDataPolicy.project}
///       location: ${basicDataPolicy.location}
///       dataPolicyId: ${basicDataPolicy.dataPolicyId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigquery.Datapolicyv2DataPolicyIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigquery.Datapolicyv2DataPolicyIamMember("member", {
///     project: basicDataPolicy.project,
///     location: basicDataPolicy.location,
///     dataPolicyId: basicDataPolicy.dataPolicyId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigquery.Datapolicyv2DataPolicyIamMember("member",
///     project=basic_data_policy["project"],
///     location=basic_data_policy["location"],
///     data_policy_id=basic_data_policy["dataPolicyId"],
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
///     var member = new Gcp.BigQuery.Datapolicyv2DataPolicyIamMember("member", new()
///     {
///         Project = basicDataPolicy.Project,
///         Location = basicDataPolicy.Location,
///         DataPolicyId = basicDataPolicy.DataPolicyId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewDatapolicyv2DataPolicyIamMember(ctx, "member", &bigquery.Datapolicyv2DataPolicyIamMemberArgs{
/// 			Project:      pulumi.Any(basicDataPolicy.Project),
/// 			Location:     pulumi.Any(basicDataPolicy.Location),
/// 			DataPolicyId: pulumi.Any(basicDataPolicy.DataPolicyId),
/// 			Role:         pulumi.String("roles/viewer"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamMember;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamMemberArgs;
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
///         var member = new Datapolicyv2DataPolicyIamMember("member", Datapolicyv2DataPolicyIamMemberArgs.builder()
///             .project(basicDataPolicy.project())
///             .location(basicDataPolicy.location())
///             .dataPolicyId(basicDataPolicy.dataPolicyId())
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
///     type: gcp:bigquery:Datapolicyv2DataPolicyIamMember
///     properties:
///       project: ${basicDataPolicy.project}
///       location: ${basicDataPolicy.location}
///       dataPolicyId: ${basicDataPolicy.dataPolicyId}
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
/// # IAM policy for BigQuery Data Policy V2 DataPolicy
///
/// Three different resources help you manage your IAM policy for BigQuery Data Policy V2 DataPolicy. Each of these resources serves a different use case:
///
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`: Authoritative. Sets the IAM policy for the datapolicy and replaces any existing policy already attached.
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the datapolicy are preserved.
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the datapolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`: Retrieves the IAM policy for the datapolicy
///
/// > **Note:** `gcp.bigquery.Datapolicyv2DataPolicyIamPolicy` **cannot** be used in conjunction with `gcp.bigquery.Datapolicyv2DataPolicyIamBinding` and `gcp.bigquery.Datapolicyv2DataPolicyIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.bigquery.Datapolicyv2DataPolicyIamBinding` resources **can be** used in conjunction with `gcp.bigquery.Datapolicyv2DataPolicyIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
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
/// const policy = new gcp.bigquery.Datapolicyv2DataPolicyIamPolicy("policy", {
///     project: basicDataPolicy.project,
///     location: basicDataPolicy.location,
///     dataPolicyId: basicDataPolicy.dataPolicyId,
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
/// policy = gcp.bigquery.Datapolicyv2DataPolicyIamPolicy("policy",
///     project=basic_data_policy["project"],
///     location=basic_data_policy["location"],
///     data_policy_id=basic_data_policy["dataPolicyId"],
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
///     var policy = new Gcp.BigQuery.Datapolicyv2DataPolicyIamPolicy("policy", new()
///     {
///         Project = basicDataPolicy.Project,
///         Location = basicDataPolicy.Location,
///         DataPolicyId = basicDataPolicy.DataPolicyId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
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
/// 		_, err = bigquery.NewDatapolicyv2DataPolicyIamPolicy(ctx, "policy", &bigquery.Datapolicyv2DataPolicyIamPolicyArgs{
/// 			Project:      pulumi.Any(basicDataPolicy.Project),
/// 			Location:     pulumi.Any(basicDataPolicy.Location),
/// 			DataPolicyId: pulumi.Any(basicDataPolicy.DataPolicyId),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamPolicy;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamPolicyArgs;
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
///         var policy = new Datapolicyv2DataPolicyIamPolicy("policy", Datapolicyv2DataPolicyIamPolicyArgs.builder()
///             .project(basicDataPolicy.project())
///             .location(basicDataPolicy.location())
///             .dataPolicyId(basicDataPolicy.dataPolicyId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:bigquery:Datapolicyv2DataPolicyIamPolicy
///     properties:
///       project: ${basicDataPolicy.project}
///       location: ${basicDataPolicy.location}
///       dataPolicyId: ${basicDataPolicy.dataPolicyId}
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
/// ## gcp.bigquery.Datapolicyv2DataPolicyIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigquery.Datapolicyv2DataPolicyIamBinding("binding", {
///     project: basicDataPolicy.project,
///     location: basicDataPolicy.location,
///     dataPolicyId: basicDataPolicy.dataPolicyId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigquery.Datapolicyv2DataPolicyIamBinding("binding",
///     project=basic_data_policy["project"],
///     location=basic_data_policy["location"],
///     data_policy_id=basic_data_policy["dataPolicyId"],
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
///     var binding = new Gcp.BigQuery.Datapolicyv2DataPolicyIamBinding("binding", new()
///     {
///         Project = basicDataPolicy.Project,
///         Location = basicDataPolicy.Location,
///         DataPolicyId = basicDataPolicy.DataPolicyId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewDatapolicyv2DataPolicyIamBinding(ctx, "binding", &bigquery.Datapolicyv2DataPolicyIamBindingArgs{
/// 			Project:      pulumi.Any(basicDataPolicy.Project),
/// 			Location:     pulumi.Any(basicDataPolicy.Location),
/// 			DataPolicyId: pulumi.Any(basicDataPolicy.DataPolicyId),
/// 			Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamBinding;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamBindingArgs;
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
///         var binding = new Datapolicyv2DataPolicyIamBinding("binding", Datapolicyv2DataPolicyIamBindingArgs.builder()
///             .project(basicDataPolicy.project())
///             .location(basicDataPolicy.location())
///             .dataPolicyId(basicDataPolicy.dataPolicyId())
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
///     type: gcp:bigquery:Datapolicyv2DataPolicyIamBinding
///     properties:
///       project: ${basicDataPolicy.project}
///       location: ${basicDataPolicy.location}
///       dataPolicyId: ${basicDataPolicy.dataPolicyId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigquery.Datapolicyv2DataPolicyIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigquery.Datapolicyv2DataPolicyIamMember("member", {
///     project: basicDataPolicy.project,
///     location: basicDataPolicy.location,
///     dataPolicyId: basicDataPolicy.dataPolicyId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigquery.Datapolicyv2DataPolicyIamMember("member",
///     project=basic_data_policy["project"],
///     location=basic_data_policy["location"],
///     data_policy_id=basic_data_policy["dataPolicyId"],
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
///     var member = new Gcp.BigQuery.Datapolicyv2DataPolicyIamMember("member", new()
///     {
///         Project = basicDataPolicy.Project,
///         Location = basicDataPolicy.Location,
///         DataPolicyId = basicDataPolicy.DataPolicyId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewDatapolicyv2DataPolicyIamMember(ctx, "member", &bigquery.Datapolicyv2DataPolicyIamMemberArgs{
/// 			Project:      pulumi.Any(basicDataPolicy.Project),
/// 			Location:     pulumi.Any(basicDataPolicy.Location),
/// 			DataPolicyId: pulumi.Any(basicDataPolicy.DataPolicyId),
/// 			Role:         pulumi.String("roles/viewer"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamMember;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamMemberArgs;
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
///         var member = new Datapolicyv2DataPolicyIamMember("member", Datapolicyv2DataPolicyIamMemberArgs.builder()
///             .project(basicDataPolicy.project())
///             .location(basicDataPolicy.location())
///             .dataPolicyId(basicDataPolicy.dataPolicyId())
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
///     type: gcp:bigquery:Datapolicyv2DataPolicyIamMember
///     properties:
///       project: ${basicDataPolicy.project}
///       location: ${basicDataPolicy.location}
///       dataPolicyId: ${basicDataPolicy.dataPolicyId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}
///
/// * {{project}}/{{location}}/{{data_policy_id}}
///
/// * {{location}}/{{data_policy_id}}
///
/// * {{data_policy_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BigQuery Data Policy V2 datapolicy IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicyIamBinding:Datapolicyv2DataPolicyIamBinding editor "projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicyIamBinding:Datapolicyv2DataPolicyIamBinding editor "projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicyIamBinding:Datapolicyv2DataPolicyIamBinding editor projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class Datapolicyv2DataPolicyIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<Datapolicyv2DataPolicyIamBindingCondition?> condition;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> dataPolicyId;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
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
  /// `gcp.bigquery.Datapolicyv2DataPolicyIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [Datapolicyv2DataPolicyIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Datapolicyv2DataPolicyIamBinding]. {@macro pulumi_bigquery_datapolicyv2_data_policy_iam_binding_datapolicyv2_data_policy_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Datapolicyv2DataPolicyIamBinding(
    String name, {
    Datapolicyv2DataPolicyIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/datapolicyv2DataPolicyIamBinding:Datapolicyv2DataPolicyIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<Datapolicyv2DataPolicyIamBindingCondition?>('condition');
    this.dataPolicyId = registerOutput<String>('dataPolicyId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
