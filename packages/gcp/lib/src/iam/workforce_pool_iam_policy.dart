import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud IAM WorkforcePool. Each of these resources serves a different use case:
///
/// * `gcp.iam.WorkforcePoolIamPolicy`: Authoritative. Sets the IAM policy for the workforcepool and replaces any existing policy already attached.
/// * `gcp.iam.WorkforcePoolIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workforcepool are preserved.
/// * `gcp.iam.WorkforcePoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workforcepool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iam.WorkforcePoolIamPolicy`: Retrieves the IAM policy for the workforcepool
///
/// > **Note:** `gcp.iam.WorkforcePoolIamPolicy` **cannot** be used in conjunction with `gcp.iam.WorkforcePoolIamBinding` and `gcp.iam.WorkforcePoolIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iam.WorkforcePoolIamBinding` resources **can be** used in conjunction with `gcp.iam.WorkforcePoolIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.iam.WorkforcePoolIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/iam.workforcePoolAdmin",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.iam.WorkforcePoolIamPolicy("policy", {
///     location: example.location,
///     workforcePoolId: example.workforcePoolId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iam.workforcePoolAdmin",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iam.WorkforcePoolIamPolicy("policy",
///     location=example["location"],
///     workforce_pool_id=example["workforcePoolId"],
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
///                 Role = "roles/iam.workforcePoolAdmin",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Iam.WorkforcePoolIamPolicy("policy", new()
///     {
///         Location = example.Location,
///         WorkforcePoolId = example.WorkforcePoolId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/iam.workforcePoolAdmin",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewWorkforcePoolIamPolicy(ctx, "policy", &iam.WorkforcePoolIamPolicyArgs{
/// 			Location:        pulumi.Any(example.Location),
/// 			WorkforcePoolId: pulumi.Any(example.WorkforcePoolId),
/// 			PolicyData:      pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.iam.WorkforcePoolIamPolicy;
/// import com.pulumi.gcp.iam.WorkforcePoolIamPolicyArgs;
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
///                 .role("roles/iam.workforcePoolAdmin")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new WorkforcePoolIamPolicy("policy", WorkforcePoolIamPolicyArgs.builder()
///             .location(example.location())
///             .workforcePoolId(example.workforcePoolId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iam:WorkforcePoolIamPolicy
///     properties:
///       location: ${example.location}
///       workforcePoolId: ${example.workforcePoolId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iam.workforcePoolAdmin
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.iam.WorkforcePoolIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iam.WorkforcePoolIamBinding("binding", {
///     location: example.location,
///     workforcePoolId: example.workforcePoolId,
///     role: "roles/iam.workforcePoolAdmin",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iam.WorkforcePoolIamBinding("binding",
///     location=example["location"],
///     workforce_pool_id=example["workforcePoolId"],
///     role="roles/iam.workforcePoolAdmin",
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
///     var binding = new Gcp.Iam.WorkforcePoolIamBinding("binding", new()
///     {
///         Location = example.Location,
///         WorkforcePoolId = example.WorkforcePoolId,
///         Role = "roles/iam.workforcePoolAdmin",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewWorkforcePoolIamBinding(ctx, "binding", &iam.WorkforcePoolIamBindingArgs{
/// 			Location:        pulumi.Any(example.Location),
/// 			WorkforcePoolId: pulumi.Any(example.WorkforcePoolId),
/// 			Role:            pulumi.String("roles/iam.workforcePoolAdmin"),
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
/// import com.pulumi.gcp.iam.WorkforcePoolIamBinding;
/// import com.pulumi.gcp.iam.WorkforcePoolIamBindingArgs;
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
///         var binding = new WorkforcePoolIamBinding("binding", WorkforcePoolIamBindingArgs.builder()
///             .location(example.location())
///             .workforcePoolId(example.workforcePoolId())
///             .role("roles/iam.workforcePoolAdmin")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:iam:WorkforcePoolIamBinding
///     properties:
///       location: ${example.location}
///       workforcePoolId: ${example.workforcePoolId}
///       role: roles/iam.workforcePoolAdmin
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.iam.WorkforcePoolIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iam.WorkforcePoolIamMember("member", {
///     location: example.location,
///     workforcePoolId: example.workforcePoolId,
///     role: "roles/iam.workforcePoolAdmin",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iam.WorkforcePoolIamMember("member",
///     location=example["location"],
///     workforce_pool_id=example["workforcePoolId"],
///     role="roles/iam.workforcePoolAdmin",
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
///     var member = new Gcp.Iam.WorkforcePoolIamMember("member", new()
///     {
///         Location = example.Location,
///         WorkforcePoolId = example.WorkforcePoolId,
///         Role = "roles/iam.workforcePoolAdmin",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewWorkforcePoolIamMember(ctx, "member", &iam.WorkforcePoolIamMemberArgs{
/// 			Location:        pulumi.Any(example.Location),
/// 			WorkforcePoolId: pulumi.Any(example.WorkforcePoolId),
/// 			Role:            pulumi.String("roles/iam.workforcePoolAdmin"),
/// 			Member:          pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.iam.WorkforcePoolIamMember;
/// import com.pulumi.gcp.iam.WorkforcePoolIamMemberArgs;
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
///         var member = new WorkforcePoolIamMember("member", WorkforcePoolIamMemberArgs.builder()
///             .location(example.location())
///             .workforcePoolId(example.workforcePoolId())
///             .role("roles/iam.workforcePoolAdmin")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:iam:WorkforcePoolIamMember
///     properties:
///       location: ${example.location}
///       workforcePoolId: ${example.workforcePoolId}
///       role: roles/iam.workforcePoolAdmin
///       member: user:jane@example.com
/// ```
///
///
///
/// ## > **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
/// -
///
/// # IAM policy for Cloud IAM WorkforcePool
///
/// Three different resources help you manage your IAM policy for Cloud IAM WorkforcePool. Each of these resources serves a different use case:
///
/// * `gcp.iam.WorkforcePoolIamPolicy`: Authoritative. Sets the IAM policy for the workforcepool and replaces any existing policy already attached.
/// * `gcp.iam.WorkforcePoolIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workforcepool are preserved.
/// * `gcp.iam.WorkforcePoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workforcepool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iam.WorkforcePoolIamPolicy`: Retrieves the IAM policy for the workforcepool
///
/// > **Note:** `gcp.iam.WorkforcePoolIamPolicy` **cannot** be used in conjunction with `gcp.iam.WorkforcePoolIamBinding` and `gcp.iam.WorkforcePoolIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iam.WorkforcePoolIamBinding` resources **can be** used in conjunction with `gcp.iam.WorkforcePoolIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.iam.WorkforcePoolIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/iam.workforcePoolAdmin",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.iam.WorkforcePoolIamPolicy("policy", {
///     location: example.location,
///     workforcePoolId: example.workforcePoolId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/iam.workforcePoolAdmin",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iam.WorkforcePoolIamPolicy("policy",
///     location=example["location"],
///     workforce_pool_id=example["workforcePoolId"],
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
///                 Role = "roles/iam.workforcePoolAdmin",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Iam.WorkforcePoolIamPolicy("policy", new()
///     {
///         Location = example.Location,
///         WorkforcePoolId = example.WorkforcePoolId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/iam.workforcePoolAdmin",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewWorkforcePoolIamPolicy(ctx, "policy", &iam.WorkforcePoolIamPolicyArgs{
/// 			Location:        pulumi.Any(example.Location),
/// 			WorkforcePoolId: pulumi.Any(example.WorkforcePoolId),
/// 			PolicyData:      pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.iam.WorkforcePoolIamPolicy;
/// import com.pulumi.gcp.iam.WorkforcePoolIamPolicyArgs;
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
///                 .role("roles/iam.workforcePoolAdmin")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new WorkforcePoolIamPolicy("policy", WorkforcePoolIamPolicyArgs.builder()
///             .location(example.location())
///             .workforcePoolId(example.workforcePoolId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:iam:WorkforcePoolIamPolicy
///     properties:
///       location: ${example.location}
///       workforcePoolId: ${example.workforcePoolId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/iam.workforcePoolAdmin
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.iam.WorkforcePoolIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iam.WorkforcePoolIamBinding("binding", {
///     location: example.location,
///     workforcePoolId: example.workforcePoolId,
///     role: "roles/iam.workforcePoolAdmin",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iam.WorkforcePoolIamBinding("binding",
///     location=example["location"],
///     workforce_pool_id=example["workforcePoolId"],
///     role="roles/iam.workforcePoolAdmin",
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
///     var binding = new Gcp.Iam.WorkforcePoolIamBinding("binding", new()
///     {
///         Location = example.Location,
///         WorkforcePoolId = example.WorkforcePoolId,
///         Role = "roles/iam.workforcePoolAdmin",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewWorkforcePoolIamBinding(ctx, "binding", &iam.WorkforcePoolIamBindingArgs{
/// 			Location:        pulumi.Any(example.Location),
/// 			WorkforcePoolId: pulumi.Any(example.WorkforcePoolId),
/// 			Role:            pulumi.String("roles/iam.workforcePoolAdmin"),
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
/// import com.pulumi.gcp.iam.WorkforcePoolIamBinding;
/// import com.pulumi.gcp.iam.WorkforcePoolIamBindingArgs;
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
///         var binding = new WorkforcePoolIamBinding("binding", WorkforcePoolIamBindingArgs.builder()
///             .location(example.location())
///             .workforcePoolId(example.workforcePoolId())
///             .role("roles/iam.workforcePoolAdmin")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:iam:WorkforcePoolIamBinding
///     properties:
///       location: ${example.location}
///       workforcePoolId: ${example.workforcePoolId}
///       role: roles/iam.workforcePoolAdmin
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.iam.WorkforcePoolIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iam.WorkforcePoolIamMember("member", {
///     location: example.location,
///     workforcePoolId: example.workforcePoolId,
///     role: "roles/iam.workforcePoolAdmin",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iam.WorkforcePoolIamMember("member",
///     location=example["location"],
///     workforce_pool_id=example["workforcePoolId"],
///     role="roles/iam.workforcePoolAdmin",
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
///     var member = new Gcp.Iam.WorkforcePoolIamMember("member", new()
///     {
///         Location = example.Location,
///         WorkforcePoolId = example.WorkforcePoolId,
///         Role = "roles/iam.workforcePoolAdmin",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewWorkforcePoolIamMember(ctx, "member", &iam.WorkforcePoolIamMemberArgs{
/// 			Location:        pulumi.Any(example.Location),
/// 			WorkforcePoolId: pulumi.Any(example.WorkforcePoolId),
/// 			Role:            pulumi.String("roles/iam.workforcePoolAdmin"),
/// 			Member:          pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.iam.WorkforcePoolIamMember;
/// import com.pulumi.gcp.iam.WorkforcePoolIamMemberArgs;
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
///         var member = new WorkforcePoolIamMember("member", WorkforcePoolIamMemberArgs.builder()
///             .location(example.location())
///             .workforcePoolId(example.workforcePoolId())
///             .role("roles/iam.workforcePoolAdmin")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:iam:WorkforcePoolIamMember
///     properties:
///       location: ${example.location}
///       workforcePoolId: ${example.workforcePoolId}
///       role: roles/iam.workforcePoolAdmin
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * locations/{{location}}/workforcePools/{{workforce_pool_id}}
///
/// * {{location}}/{{workforce_pool_id}}
///
/// * {{workforce_pool_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud IAM workforcepool IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolIamPolicy:WorkforcePoolIamPolicy editor "locations/{{location}}/workforcePools/{{workforce_pool_id}} roles/iam.workforcePoolViewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolIamPolicy:WorkforcePoolIamPolicy editor "locations/{{location}}/workforcePools/{{workforce_pool_id}} roles/iam.workforcePoolViewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolIamPolicy:WorkforcePoolIamPolicy editor locations/{{location}}/workforcePools/{{workforce_pool_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WorkforcePoolIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location for the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> workforcePoolId;

  /// Creates a new [WorkforcePoolIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkforcePoolIamPolicy]. {@macro pulumi_iam_workforce_pool_iam_policy_workforce_pool_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkforcePoolIamPolicy(
    String name, {
    WorkforcePoolIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePoolIamPolicy:WorkforcePoolIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.workforcePoolId = registerOutput<String>('workforcePoolId');
  }
}
