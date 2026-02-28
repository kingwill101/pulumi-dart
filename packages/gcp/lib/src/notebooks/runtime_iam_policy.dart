import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud AI Notebooks Runtime. Each of these resources serves a different use case:
///
/// * `gcp.notebooks.RuntimeIamPolicy`: Authoritative. Sets the IAM policy for the runtime and replaces any existing policy already attached.
/// * `gcp.notebooks.RuntimeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the runtime are preserved.
/// * `gcp.notebooks.RuntimeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the runtime are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.notebooks.RuntimeIamPolicy`: Retrieves the IAM policy for the runtime
///
/// > **Note:** `gcp.notebooks.RuntimeIamPolicy` **cannot** be used in conjunction with `gcp.notebooks.RuntimeIamBinding` and `gcp.notebooks.RuntimeIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.notebooks.RuntimeIamBinding` resources **can be** used in conjunction with `gcp.notebooks.RuntimeIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.notebooks.RuntimeIamPolicy
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
/// const policy = new gcp.notebooks.RuntimeIamPolicy("policy", {
///     project: runtime.project,
///     location: runtime.location,
///     runtimeName: runtime.name,
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
/// policy = gcp.notebooks.RuntimeIamPolicy("policy",
///     project=runtime["project"],
///     location=runtime["location"],
///     runtime_name=runtime["name"],
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
///     var policy = new Gcp.Notebooks.RuntimeIamPolicy("policy", new()
///     {
///         Project = runtime.Project,
///         Location = runtime.Location,
///         RuntimeName = runtime.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
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
/// 		_, err = notebooks.NewRuntimeIamPolicy(ctx, "policy", &notebooks.RuntimeIamPolicyArgs{
/// 			Project:     pulumi.Any(runtime.Project),
/// 			Location:    pulumi.Any(runtime.Location),
/// 			RuntimeName: pulumi.Any(runtime.Name),
/// 			PolicyData:  pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.notebooks.RuntimeIamPolicy;
/// import com.pulumi.gcp.notebooks.RuntimeIamPolicyArgs;
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
///         var policy = new RuntimeIamPolicy("policy", RuntimeIamPolicyArgs.builder()
///             .project(runtime.project())
///             .location(runtime.location())
///             .runtimeName(runtime.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:notebooks:RuntimeIamPolicy
///     properties:
///       project: ${runtime.project}
///       location: ${runtime.location}
///       runtimeName: ${runtime.name}
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
/// ## gcp.notebooks.RuntimeIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.notebooks.RuntimeIamBinding("binding", {
///     project: runtime.project,
///     location: runtime.location,
///     runtimeName: runtime.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.notebooks.RuntimeIamBinding("binding",
///     project=runtime["project"],
///     location=runtime["location"],
///     runtime_name=runtime["name"],
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
///     var binding = new Gcp.Notebooks.RuntimeIamBinding("binding", new()
///     {
///         Project = runtime.Project,
///         Location = runtime.Location,
///         RuntimeName = runtime.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewRuntimeIamBinding(ctx, "binding", &notebooks.RuntimeIamBindingArgs{
/// 			Project:     pulumi.Any(runtime.Project),
/// 			Location:    pulumi.Any(runtime.Location),
/// 			RuntimeName: pulumi.Any(runtime.Name),
/// 			Role:        pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.notebooks.RuntimeIamBinding;
/// import com.pulumi.gcp.notebooks.RuntimeIamBindingArgs;
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
///         var binding = new RuntimeIamBinding("binding", RuntimeIamBindingArgs.builder()
///             .project(runtime.project())
///             .location(runtime.location())
///             .runtimeName(runtime.name())
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
///     type: gcp:notebooks:RuntimeIamBinding
///     properties:
///       project: ${runtime.project}
///       location: ${runtime.location}
///       runtimeName: ${runtime.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.notebooks.RuntimeIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.notebooks.RuntimeIamMember("member", {
///     project: runtime.project,
///     location: runtime.location,
///     runtimeName: runtime.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.notebooks.RuntimeIamMember("member",
///     project=runtime["project"],
///     location=runtime["location"],
///     runtime_name=runtime["name"],
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
///     var member = new Gcp.Notebooks.RuntimeIamMember("member", new()
///     {
///         Project = runtime.Project,
///         Location = runtime.Location,
///         RuntimeName = runtime.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewRuntimeIamMember(ctx, "member", &notebooks.RuntimeIamMemberArgs{
/// 			Project:     pulumi.Any(runtime.Project),
/// 			Location:    pulumi.Any(runtime.Location),
/// 			RuntimeName: pulumi.Any(runtime.Name),
/// 			Role:        pulumi.String("roles/viewer"),
/// 			Member:      pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.notebooks.RuntimeIamMember;
/// import com.pulumi.gcp.notebooks.RuntimeIamMemberArgs;
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
///         var member = new RuntimeIamMember("member", RuntimeIamMemberArgs.builder()
///             .project(runtime.project())
///             .location(runtime.location())
///             .runtimeName(runtime.name())
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
///     type: gcp:notebooks:RuntimeIamMember
///     properties:
///       project: ${runtime.project}
///       location: ${runtime.location}
///       runtimeName: ${runtime.name}
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
/// # IAM policy for Cloud AI Notebooks Runtime
///
/// Three different resources help you manage your IAM policy for Cloud AI Notebooks Runtime. Each of these resources serves a different use case:
///
/// * `gcp.notebooks.RuntimeIamPolicy`: Authoritative. Sets the IAM policy for the runtime and replaces any existing policy already attached.
/// * `gcp.notebooks.RuntimeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the runtime are preserved.
/// * `gcp.notebooks.RuntimeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the runtime are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.notebooks.RuntimeIamPolicy`: Retrieves the IAM policy for the runtime
///
/// > **Note:** `gcp.notebooks.RuntimeIamPolicy` **cannot** be used in conjunction with `gcp.notebooks.RuntimeIamBinding` and `gcp.notebooks.RuntimeIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.notebooks.RuntimeIamBinding` resources **can be** used in conjunction with `gcp.notebooks.RuntimeIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.notebooks.RuntimeIamPolicy
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
/// const policy = new gcp.notebooks.RuntimeIamPolicy("policy", {
///     project: runtime.project,
///     location: runtime.location,
///     runtimeName: runtime.name,
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
/// policy = gcp.notebooks.RuntimeIamPolicy("policy",
///     project=runtime["project"],
///     location=runtime["location"],
///     runtime_name=runtime["name"],
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
///     var policy = new Gcp.Notebooks.RuntimeIamPolicy("policy", new()
///     {
///         Project = runtime.Project,
///         Location = runtime.Location,
///         RuntimeName = runtime.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
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
/// 		_, err = notebooks.NewRuntimeIamPolicy(ctx, "policy", &notebooks.RuntimeIamPolicyArgs{
/// 			Project:     pulumi.Any(runtime.Project),
/// 			Location:    pulumi.Any(runtime.Location),
/// 			RuntimeName: pulumi.Any(runtime.Name),
/// 			PolicyData:  pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.notebooks.RuntimeIamPolicy;
/// import com.pulumi.gcp.notebooks.RuntimeIamPolicyArgs;
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
///         var policy = new RuntimeIamPolicy("policy", RuntimeIamPolicyArgs.builder()
///             .project(runtime.project())
///             .location(runtime.location())
///             .runtimeName(runtime.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:notebooks:RuntimeIamPolicy
///     properties:
///       project: ${runtime.project}
///       location: ${runtime.location}
///       runtimeName: ${runtime.name}
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
/// ## gcp.notebooks.RuntimeIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.notebooks.RuntimeIamBinding("binding", {
///     project: runtime.project,
///     location: runtime.location,
///     runtimeName: runtime.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.notebooks.RuntimeIamBinding("binding",
///     project=runtime["project"],
///     location=runtime["location"],
///     runtime_name=runtime["name"],
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
///     var binding = new Gcp.Notebooks.RuntimeIamBinding("binding", new()
///     {
///         Project = runtime.Project,
///         Location = runtime.Location,
///         RuntimeName = runtime.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewRuntimeIamBinding(ctx, "binding", &notebooks.RuntimeIamBindingArgs{
/// 			Project:     pulumi.Any(runtime.Project),
/// 			Location:    pulumi.Any(runtime.Location),
/// 			RuntimeName: pulumi.Any(runtime.Name),
/// 			Role:        pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.notebooks.RuntimeIamBinding;
/// import com.pulumi.gcp.notebooks.RuntimeIamBindingArgs;
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
///         var binding = new RuntimeIamBinding("binding", RuntimeIamBindingArgs.builder()
///             .project(runtime.project())
///             .location(runtime.location())
///             .runtimeName(runtime.name())
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
///     type: gcp:notebooks:RuntimeIamBinding
///     properties:
///       project: ${runtime.project}
///       location: ${runtime.location}
///       runtimeName: ${runtime.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.notebooks.RuntimeIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.notebooks.RuntimeIamMember("member", {
///     project: runtime.project,
///     location: runtime.location,
///     runtimeName: runtime.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.notebooks.RuntimeIamMember("member",
///     project=runtime["project"],
///     location=runtime["location"],
///     runtime_name=runtime["name"],
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
///     var member = new Gcp.Notebooks.RuntimeIamMember("member", new()
///     {
///         Project = runtime.Project,
///         Location = runtime.Location,
///         RuntimeName = runtime.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewRuntimeIamMember(ctx, "member", &notebooks.RuntimeIamMemberArgs{
/// 			Project:     pulumi.Any(runtime.Project),
/// 			Location:    pulumi.Any(runtime.Location),
/// 			RuntimeName: pulumi.Any(runtime.Name),
/// 			Role:        pulumi.String("roles/viewer"),
/// 			Member:      pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.notebooks.RuntimeIamMember;
/// import com.pulumi.gcp.notebooks.RuntimeIamMemberArgs;
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
///         var member = new RuntimeIamMember("member", RuntimeIamMemberArgs.builder()
///             .project(runtime.project())
///             .location(runtime.location())
///             .runtimeName(runtime.name())
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
///     type: gcp:notebooks:RuntimeIamMember
///     properties:
///       project: ${runtime.project}
///       location: ${runtime.location}
///       runtimeName: ${runtime.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/runtimes/{{runtime_name}}
///
/// * {{project}}/{{location}}/{{runtime_name}}
///
/// * {{location}}/{{runtime_name}}
///
/// * {{runtime_name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud AI Notebooks runtime IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:notebooks/runtimeIamPolicy:RuntimeIamPolicy editor "projects/{{project}}/locations/{{location}}/runtimes/{{runtime_name}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:notebooks/runtimeIamPolicy:RuntimeIamPolicy editor "projects/{{project}}/locations/{{location}}/runtimes/{{runtime_name}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:notebooks/runtimeIamPolicy:RuntimeIamPolicy editor projects/{{project}}/locations/{{location}}/runtimes/{{runtime_name}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RuntimeIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// A reference to the zone where the machine resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> runtimeName;

  /// Creates a new [RuntimeIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuntimeIamPolicy]. {@macro pulumi_notebooks_runtime_iam_policy_runtime_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuntimeIamPolicy(
    String name, {
    RuntimeIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:notebooks/runtimeIamPolicy:RuntimeIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.runtimeName = registerOutput<String>('runtimeName');
  }
}
