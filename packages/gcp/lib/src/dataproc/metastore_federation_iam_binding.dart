import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_federation_iam_binding_args.dart';
import 'metastore_federation_iam_binding_condition.dart';

/// Three different resources help you manage your IAM policy for Dataproc Metastore Federation. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.MetastoreFederationIamPolicy`: Authoritative. Sets the IAM policy for the federation and replaces any existing policy already attached.
/// * `gcp.dataproc.MetastoreFederationIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the federation are preserved.
/// * `gcp.dataproc.MetastoreFederationIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the federation are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.MetastoreFederationIamPolicy`: Retrieves the IAM policy for the federation
///
/// > **Note:** `gcp.dataproc.MetastoreFederationIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.MetastoreFederationIamBinding` and `gcp.dataproc.MetastoreFederationIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataproc.MetastoreFederationIamBinding` resources **can be** used in conjunction with `gcp.dataproc.MetastoreFederationIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataproc.MetastoreFederationIamPolicy
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
/// const policy = new gcp.dataproc.MetastoreFederationIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     federationId: _default.federationId,
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
/// policy = gcp.dataproc.MetastoreFederationIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     federation_id=default["federationId"],
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
///     var policy = new Gcp.Dataproc.MetastoreFederationIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         FederationId = @default.FederationId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
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
/// 		_, err = dataproc.NewMetastoreFederationIamPolicy(ctx, "policy", &dataproc.MetastoreFederationIamPolicyArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			FederationId: pulumi.Any(_default.FederationId),
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
/// import com.pulumi.gcp.dataproc.MetastoreFederationIamPolicy;
/// import com.pulumi.gcp.dataproc.MetastoreFederationIamPolicyArgs;
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
///         var policy = new MetastoreFederationIamPolicy("policy", MetastoreFederationIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .federationId(default_.federationId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataproc:MetastoreFederationIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       federationId: ${default.federationId}
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
/// ## gcp.dataproc.MetastoreFederationIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.MetastoreFederationIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     federationId: _default.federationId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.MetastoreFederationIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     federation_id=default["federationId"],
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
///     var binding = new Gcp.Dataproc.MetastoreFederationIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         FederationId = @default.FederationId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewMetastoreFederationIamBinding(ctx, "binding", &dataproc.MetastoreFederationIamBindingArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			FederationId: pulumi.Any(_default.FederationId),
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
/// import com.pulumi.gcp.dataproc.MetastoreFederationIamBinding;
/// import com.pulumi.gcp.dataproc.MetastoreFederationIamBindingArgs;
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
///         var binding = new MetastoreFederationIamBinding("binding", MetastoreFederationIamBindingArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .federationId(default_.federationId())
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
///     type: gcp:dataproc:MetastoreFederationIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       federationId: ${default.federationId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.MetastoreFederationIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.MetastoreFederationIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     federationId: _default.federationId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.MetastoreFederationIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     federation_id=default["federationId"],
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
///     var member = new Gcp.Dataproc.MetastoreFederationIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         FederationId = @default.FederationId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewMetastoreFederationIamMember(ctx, "member", &dataproc.MetastoreFederationIamMemberArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			FederationId: pulumi.Any(_default.FederationId),
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
/// import com.pulumi.gcp.dataproc.MetastoreFederationIamMember;
/// import com.pulumi.gcp.dataproc.MetastoreFederationIamMemberArgs;
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
///         var member = new MetastoreFederationIamMember("member", MetastoreFederationIamMemberArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .federationId(default_.federationId())
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
///     type: gcp:dataproc:MetastoreFederationIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       federationId: ${default.federationId}
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
/// # IAM policy for Dataproc Metastore Federation
///
/// Three different resources help you manage your IAM policy for Dataproc Metastore Federation. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.MetastoreFederationIamPolicy`: Authoritative. Sets the IAM policy for the federation and replaces any existing policy already attached.
/// * `gcp.dataproc.MetastoreFederationIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the federation are preserved.
/// * `gcp.dataproc.MetastoreFederationIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the federation are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.MetastoreFederationIamPolicy`: Retrieves the IAM policy for the federation
///
/// > **Note:** `gcp.dataproc.MetastoreFederationIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.MetastoreFederationIamBinding` and `gcp.dataproc.MetastoreFederationIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataproc.MetastoreFederationIamBinding` resources **can be** used in conjunction with `gcp.dataproc.MetastoreFederationIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataproc.MetastoreFederationIamPolicy
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
/// const policy = new gcp.dataproc.MetastoreFederationIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     federationId: _default.federationId,
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
/// policy = gcp.dataproc.MetastoreFederationIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     federation_id=default["federationId"],
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
///     var policy = new Gcp.Dataproc.MetastoreFederationIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         FederationId = @default.FederationId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
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
/// 		_, err = dataproc.NewMetastoreFederationIamPolicy(ctx, "policy", &dataproc.MetastoreFederationIamPolicyArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			FederationId: pulumi.Any(_default.FederationId),
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
/// import com.pulumi.gcp.dataproc.MetastoreFederationIamPolicy;
/// import com.pulumi.gcp.dataproc.MetastoreFederationIamPolicyArgs;
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
///         var policy = new MetastoreFederationIamPolicy("policy", MetastoreFederationIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .federationId(default_.federationId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataproc:MetastoreFederationIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       federationId: ${default.federationId}
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
/// ## gcp.dataproc.MetastoreFederationIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.MetastoreFederationIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     federationId: _default.federationId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.MetastoreFederationIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     federation_id=default["federationId"],
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
///     var binding = new Gcp.Dataproc.MetastoreFederationIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         FederationId = @default.FederationId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewMetastoreFederationIamBinding(ctx, "binding", &dataproc.MetastoreFederationIamBindingArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			FederationId: pulumi.Any(_default.FederationId),
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
/// import com.pulumi.gcp.dataproc.MetastoreFederationIamBinding;
/// import com.pulumi.gcp.dataproc.MetastoreFederationIamBindingArgs;
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
///         var binding = new MetastoreFederationIamBinding("binding", MetastoreFederationIamBindingArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .federationId(default_.federationId())
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
///     type: gcp:dataproc:MetastoreFederationIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       federationId: ${default.federationId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.MetastoreFederationIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.MetastoreFederationIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     federationId: _default.federationId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.MetastoreFederationIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     federation_id=default["federationId"],
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
///     var member = new Gcp.Dataproc.MetastoreFederationIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         FederationId = @default.FederationId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewMetastoreFederationIamMember(ctx, "member", &dataproc.MetastoreFederationIamMemberArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			FederationId: pulumi.Any(_default.FederationId),
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
/// import com.pulumi.gcp.dataproc.MetastoreFederationIamMember;
/// import com.pulumi.gcp.dataproc.MetastoreFederationIamMemberArgs;
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
///         var member = new MetastoreFederationIamMember("member", MetastoreFederationIamMemberArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .federationId(default_.federationId())
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
///     type: gcp:dataproc:MetastoreFederationIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       federationId: ${default.federationId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/federations/{{federation_id}}
///
/// * {{project}}/{{location}}/{{federation_id}}
///
/// * {{location}}/{{federation_id}}
///
/// * {{federation_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataproc Metastore federation IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreFederationIamBinding:MetastoreFederationIamBinding editor "projects/{{project}}/locations/{{location}}/federations/{{federation_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreFederationIamBinding:MetastoreFederationIamBinding editor "projects/{{project}}/locations/{{location}}/federations/{{federation_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreFederationIamBinding:MetastoreFederationIamBinding editor projects/{{project}}/locations/{{location}}/federations/{{federation_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class MetastoreFederationIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<MetastoreFederationIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> federationId;

  /// The location where the metastore federation should reside.
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
  /// `gcp.dataproc.MetastoreFederationIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [MetastoreFederationIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetastoreFederationIamBinding]. {@macro pulumi_dataproc_metastore_federation_iam_binding_metastore_federation_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetastoreFederationIamBinding(
    String name, {
    MetastoreFederationIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dataproc/metastoreFederationIamBinding:MetastoreFederationIamBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.condition = registerOutput<MetastoreFederationIamBindingCondition?>(
      'condition',
    );
    this.etag = registerOutput<String>('etag');
    this.federationId = registerOutput<String>('federationId');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
