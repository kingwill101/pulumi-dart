import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_config_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Workstations WorkstationConfig. Each of these resources serves a different use case:
///
/// * `gcp.workstations.WorkstationConfigIamPolicy`: Authoritative. Sets the IAM policy for the workstationconfig and replaces any existing policy already attached.
/// * `gcp.workstations.WorkstationConfigIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workstationconfig are preserved.
/// * `gcp.workstations.WorkstationConfigIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workstationconfig are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.workstations.WorkstationConfigIamPolicy`: Retrieves the IAM policy for the workstationconfig
///
/// > **Note:** `gcp.workstations.WorkstationConfigIamPolicy` **cannot** be used in conjunction with `gcp.workstations.WorkstationConfigIamBinding` and `gcp.workstations.WorkstationConfigIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.workstations.WorkstationConfigIamBinding` resources **can be** used in conjunction with `gcp.workstations.WorkstationConfigIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.workstations.WorkstationConfigIamPolicy
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
/// const policy = new gcp.workstations.WorkstationConfigIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
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
/// policy = gcp.workstations.WorkstationConfigIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
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
///     var policy = new Gcp.Workstations.WorkstationConfigIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
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
/// 		_, err = workstations.NewWorkstationConfigIamPolicy(ctx, "policy", &workstations.WorkstationConfigIamPolicyArgs{
/// 			Project:              pulumi.Any(_default.Project),
/// 			Location:             pulumi.Any(_default.Location),
/// 			WorkstationClusterId: pulumi.Any(_default.WorkstationClusterId),
/// 			WorkstationConfigId:  pulumi.Any(_default.WorkstationConfigId),
/// 			PolicyData:           pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.workstations.WorkstationConfigIamPolicy;
/// import com.pulumi.gcp.workstations.WorkstationConfigIamPolicyArgs;
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
///         var policy = new WorkstationConfigIamPolicy("policy", WorkstationConfigIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:workstations:WorkstationConfigIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       workstationClusterId: ${default.workstationClusterId}
///       workstationConfigId: ${default.workstationConfigId}
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
/// ## gcp.workstations.WorkstationConfigIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.workstations.WorkstationConfigIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.workstations.WorkstationConfigIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
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
///     var binding = new Gcp.Workstations.WorkstationConfigIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workstations.NewWorkstationConfigIamBinding(ctx, "binding", &workstations.WorkstationConfigIamBindingArgs{
/// 			Project:              pulumi.Any(_default.Project),
/// 			Location:             pulumi.Any(_default.Location),
/// 			WorkstationClusterId: pulumi.Any(_default.WorkstationClusterId),
/// 			WorkstationConfigId:  pulumi.Any(_default.WorkstationConfigId),
/// 			Role:                 pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.workstations.WorkstationConfigIamBinding;
/// import com.pulumi.gcp.workstations.WorkstationConfigIamBindingArgs;
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
///         var binding = new WorkstationConfigIamBinding("binding", WorkstationConfigIamBindingArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
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
///     type: gcp:workstations:WorkstationConfigIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       workstationClusterId: ${default.workstationClusterId}
///       workstationConfigId: ${default.workstationConfigId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.workstations.WorkstationConfigIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.workstations.WorkstationConfigIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.workstations.WorkstationConfigIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
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
///     var member = new Gcp.Workstations.WorkstationConfigIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workstations.NewWorkstationConfigIamMember(ctx, "member", &workstations.WorkstationConfigIamMemberArgs{
/// 			Project:              pulumi.Any(_default.Project),
/// 			Location:             pulumi.Any(_default.Location),
/// 			WorkstationClusterId: pulumi.Any(_default.WorkstationClusterId),
/// 			WorkstationConfigId:  pulumi.Any(_default.WorkstationConfigId),
/// 			Role:                 pulumi.String("roles/viewer"),
/// 			Member:               pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.workstations.WorkstationConfigIamMember;
/// import com.pulumi.gcp.workstations.WorkstationConfigIamMemberArgs;
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
///         var member = new WorkstationConfigIamMember("member", WorkstationConfigIamMemberArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
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
///     type: gcp:workstations:WorkstationConfigIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       workstationClusterId: ${default.workstationClusterId}
///       workstationConfigId: ${default.workstationConfigId}
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
/// # IAM policy for Cloud Workstations WorkstationConfig
///
/// Three different resources help you manage your IAM policy for Cloud Workstations WorkstationConfig. Each of these resources serves a different use case:
///
/// * `gcp.workstations.WorkstationConfigIamPolicy`: Authoritative. Sets the IAM policy for the workstationconfig and replaces any existing policy already attached.
/// * `gcp.workstations.WorkstationConfigIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workstationconfig are preserved.
/// * `gcp.workstations.WorkstationConfigIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workstationconfig are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.workstations.WorkstationConfigIamPolicy`: Retrieves the IAM policy for the workstationconfig
///
/// > **Note:** `gcp.workstations.WorkstationConfigIamPolicy` **cannot** be used in conjunction with `gcp.workstations.WorkstationConfigIamBinding` and `gcp.workstations.WorkstationConfigIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.workstations.WorkstationConfigIamBinding` resources **can be** used in conjunction with `gcp.workstations.WorkstationConfigIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.workstations.WorkstationConfigIamPolicy
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
/// const policy = new gcp.workstations.WorkstationConfigIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
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
/// policy = gcp.workstations.WorkstationConfigIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
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
///     var policy = new Gcp.Workstations.WorkstationConfigIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
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
/// 		_, err = workstations.NewWorkstationConfigIamPolicy(ctx, "policy", &workstations.WorkstationConfigIamPolicyArgs{
/// 			Project:              pulumi.Any(_default.Project),
/// 			Location:             pulumi.Any(_default.Location),
/// 			WorkstationClusterId: pulumi.Any(_default.WorkstationClusterId),
/// 			WorkstationConfigId:  pulumi.Any(_default.WorkstationConfigId),
/// 			PolicyData:           pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.workstations.WorkstationConfigIamPolicy;
/// import com.pulumi.gcp.workstations.WorkstationConfigIamPolicyArgs;
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
///         var policy = new WorkstationConfigIamPolicy("policy", WorkstationConfigIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:workstations:WorkstationConfigIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       workstationClusterId: ${default.workstationClusterId}
///       workstationConfigId: ${default.workstationConfigId}
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
/// ## gcp.workstations.WorkstationConfigIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.workstations.WorkstationConfigIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.workstations.WorkstationConfigIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
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
///     var binding = new Gcp.Workstations.WorkstationConfigIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workstations.NewWorkstationConfigIamBinding(ctx, "binding", &workstations.WorkstationConfigIamBindingArgs{
/// 			Project:              pulumi.Any(_default.Project),
/// 			Location:             pulumi.Any(_default.Location),
/// 			WorkstationClusterId: pulumi.Any(_default.WorkstationClusterId),
/// 			WorkstationConfigId:  pulumi.Any(_default.WorkstationConfigId),
/// 			Role:                 pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.workstations.WorkstationConfigIamBinding;
/// import com.pulumi.gcp.workstations.WorkstationConfigIamBindingArgs;
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
///         var binding = new WorkstationConfigIamBinding("binding", WorkstationConfigIamBindingArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
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
///     type: gcp:workstations:WorkstationConfigIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       workstationClusterId: ${default.workstationClusterId}
///       workstationConfigId: ${default.workstationConfigId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.workstations.WorkstationConfigIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.workstations.WorkstationConfigIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.workstations.WorkstationConfigIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
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
///     var member = new Gcp.Workstations.WorkstationConfigIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workstations.NewWorkstationConfigIamMember(ctx, "member", &workstations.WorkstationConfigIamMemberArgs{
/// 			Project:              pulumi.Any(_default.Project),
/// 			Location:             pulumi.Any(_default.Location),
/// 			WorkstationClusterId: pulumi.Any(_default.WorkstationClusterId),
/// 			WorkstationConfigId:  pulumi.Any(_default.WorkstationConfigId),
/// 			Role:                 pulumi.String("roles/viewer"),
/// 			Member:               pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.workstations.WorkstationConfigIamMember;
/// import com.pulumi.gcp.workstations.WorkstationConfigIamMemberArgs;
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
///         var member = new WorkstationConfigIamMember("member", WorkstationConfigIamMemberArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
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
///     type: gcp:workstations:WorkstationConfigIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       workstationClusterId: ${default.workstationClusterId}
///       workstationConfigId: ${default.workstationConfigId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}
///
/// * {{project}}/{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}
///
/// * {{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}
///
/// * {{workstation_config_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Workstations workstationconfig IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfigIamPolicy:WorkstationConfigIamPolicy editor "projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfigIamPolicy:WorkstationConfigIamPolicy editor "projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfigIamPolicy:WorkstationConfigIamPolicy editor projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WorkstationConfigIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The location where the workstation cluster config should reside.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// The ID of the parent workstation cluster.
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> workstationClusterId;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> workstationConfigId;

  /// Creates a new [WorkstationConfigIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkstationConfigIamPolicy]. {@macro pulumi_workstations_workstation_config_iam_policy_workstation_config_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkstationConfigIamPolicy(
    String name, {
    WorkstationConfigIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:workstations/workstationConfigIamPolicy:WorkstationConfigIamPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.workstationClusterId = registerOutput<String>('workstationClusterId');
    this.workstationConfigId = registerOutput<String>('workstationConfigId');
  }
}
