import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_entity_type_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Vertex AI FeaturestoreEntitytype. Each of these resources serves a different use case:
///
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`: Authoritative. Sets the IAM policy for the featurestoreentitytype and replaces any existing policy already attached.
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featurestoreentitytype are preserved.
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featurestoreentitytype are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`: Retrieves the IAM policy for the featurestoreentitytype
///
/// > **Note:** `gcp.vertex.AiFeatureStoreEntityTypeIamPolicy` **cannot** be used in conjunction with `gcp.vertex.AiFeatureStoreEntityTypeIamBinding` and `gcp.vertex.AiFeatureStoreEntityTypeIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.vertex.AiFeatureStoreEntityTypeIamBinding` resources **can be** used in conjunction with `gcp.vertex.AiFeatureStoreEntityTypeIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
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
/// const policy = new gcp.vertex.AiFeatureStoreEntityTypeIamPolicy("policy", {
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
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
/// policy = gcp.vertex.AiFeatureStoreEntityTypeIamPolicy("policy",
///     featurestore=entity["featurestore"],
///     entitytype=entity["name"],
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
///     var policy = new Gcp.Vertex.AiFeatureStoreEntityTypeIamPolicy("policy", new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
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
/// 		_, err = vertex.NewAiFeatureStoreEntityTypeIamPolicy(ctx, "policy", &vertex.AiFeatureStoreEntityTypeIamPolicyArgs{
/// 			Featurestore: pulumi.Any(entity.Featurestore),
/// 			Entitytype:   pulumi.Any(entity.Name),
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamPolicy;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamPolicyArgs;
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
///         var policy = new AiFeatureStoreEntityTypeIamPolicy("policy", AiFeatureStoreEntityTypeIamPolicyArgs.builder()
///             .featurestore(entity.featurestore())
///             .entitytype(entity.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:vertex:AiFeatureStoreEntityTypeIamPolicy
///     properties:
///       featurestore: ${entity.featurestore}
///       entitytype: ${entity.name}
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
/// ## gcp.vertex.AiFeatureStoreEntityTypeIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.vertex.AiFeatureStoreEntityTypeIamBinding("binding", {
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.vertex.AiFeatureStoreEntityTypeIamBinding("binding",
///     featurestore=entity["featurestore"],
///     entitytype=entity["name"],
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
///     var binding = new Gcp.Vertex.AiFeatureStoreEntityTypeIamBinding("binding", new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureStoreEntityTypeIamBinding(ctx, "binding", &vertex.AiFeatureStoreEntityTypeIamBindingArgs{
/// 			Featurestore: pulumi.Any(entity.Featurestore),
/// 			Entitytype:   pulumi.Any(entity.Name),
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamBinding;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamBindingArgs;
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
///         var binding = new AiFeatureStoreEntityTypeIamBinding("binding", AiFeatureStoreEntityTypeIamBindingArgs.builder()
///             .featurestore(entity.featurestore())
///             .entitytype(entity.name())
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
///     type: gcp:vertex:AiFeatureStoreEntityTypeIamBinding
///     properties:
///       featurestore: ${entity.featurestore}
///       entitytype: ${entity.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.vertex.AiFeatureStoreEntityTypeIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.vertex.AiFeatureStoreEntityTypeIamMember("member", {
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.vertex.AiFeatureStoreEntityTypeIamMember("member",
///     featurestore=entity["featurestore"],
///     entitytype=entity["name"],
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
///     var member = new Gcp.Vertex.AiFeatureStoreEntityTypeIamMember("member", new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureStoreEntityTypeIamMember(ctx, "member", &vertex.AiFeatureStoreEntityTypeIamMemberArgs{
/// 			Featurestore: pulumi.Any(entity.Featurestore),
/// 			Entitytype:   pulumi.Any(entity.Name),
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamMember;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamMemberArgs;
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
///         var member = new AiFeatureStoreEntityTypeIamMember("member", AiFeatureStoreEntityTypeIamMemberArgs.builder()
///             .featurestore(entity.featurestore())
///             .entitytype(entity.name())
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
///     type: gcp:vertex:AiFeatureStoreEntityTypeIamMember
///     properties:
///       featurestore: ${entity.featurestore}
///       entitytype: ${entity.name}
///       role: roles/viewer
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
/// # IAM policy for Vertex AI FeaturestoreEntitytype
///
/// Three different resources help you manage your IAM policy for Vertex AI FeaturestoreEntitytype. Each of these resources serves a different use case:
///
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`: Authoritative. Sets the IAM policy for the featurestoreentitytype and replaces any existing policy already attached.
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featurestoreentitytype are preserved.
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featurestoreentitytype are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`: Retrieves the IAM policy for the featurestoreentitytype
///
/// > **Note:** `gcp.vertex.AiFeatureStoreEntityTypeIamPolicy` **cannot** be used in conjunction with `gcp.vertex.AiFeatureStoreEntityTypeIamBinding` and `gcp.vertex.AiFeatureStoreEntityTypeIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.vertex.AiFeatureStoreEntityTypeIamBinding` resources **can be** used in conjunction with `gcp.vertex.AiFeatureStoreEntityTypeIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
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
/// const policy = new gcp.vertex.AiFeatureStoreEntityTypeIamPolicy("policy", {
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
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
/// policy = gcp.vertex.AiFeatureStoreEntityTypeIamPolicy("policy",
///     featurestore=entity["featurestore"],
///     entitytype=entity["name"],
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
///     var policy = new Gcp.Vertex.AiFeatureStoreEntityTypeIamPolicy("policy", new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
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
/// 		_, err = vertex.NewAiFeatureStoreEntityTypeIamPolicy(ctx, "policy", &vertex.AiFeatureStoreEntityTypeIamPolicyArgs{
/// 			Featurestore: pulumi.Any(entity.Featurestore),
/// 			Entitytype:   pulumi.Any(entity.Name),
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamPolicy;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamPolicyArgs;
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
///         var policy = new AiFeatureStoreEntityTypeIamPolicy("policy", AiFeatureStoreEntityTypeIamPolicyArgs.builder()
///             .featurestore(entity.featurestore())
///             .entitytype(entity.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:vertex:AiFeatureStoreEntityTypeIamPolicy
///     properties:
///       featurestore: ${entity.featurestore}
///       entitytype: ${entity.name}
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
/// ## gcp.vertex.AiFeatureStoreEntityTypeIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.vertex.AiFeatureStoreEntityTypeIamBinding("binding", {
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.vertex.AiFeatureStoreEntityTypeIamBinding("binding",
///     featurestore=entity["featurestore"],
///     entitytype=entity["name"],
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
///     var binding = new Gcp.Vertex.AiFeatureStoreEntityTypeIamBinding("binding", new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureStoreEntityTypeIamBinding(ctx, "binding", &vertex.AiFeatureStoreEntityTypeIamBindingArgs{
/// 			Featurestore: pulumi.Any(entity.Featurestore),
/// 			Entitytype:   pulumi.Any(entity.Name),
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamBinding;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamBindingArgs;
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
///         var binding = new AiFeatureStoreEntityTypeIamBinding("binding", AiFeatureStoreEntityTypeIamBindingArgs.builder()
///             .featurestore(entity.featurestore())
///             .entitytype(entity.name())
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
///     type: gcp:vertex:AiFeatureStoreEntityTypeIamBinding
///     properties:
///       featurestore: ${entity.featurestore}
///       entitytype: ${entity.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.vertex.AiFeatureStoreEntityTypeIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.vertex.AiFeatureStoreEntityTypeIamMember("member", {
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.vertex.AiFeatureStoreEntityTypeIamMember("member",
///     featurestore=entity["featurestore"],
///     entitytype=entity["name"],
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
///     var member = new Gcp.Vertex.AiFeatureStoreEntityTypeIamMember("member", new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureStoreEntityTypeIamMember(ctx, "member", &vertex.AiFeatureStoreEntityTypeIamMemberArgs{
/// 			Featurestore: pulumi.Any(entity.Featurestore),
/// 			Entitytype:   pulumi.Any(entity.Name),
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamMember;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamMemberArgs;
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
///         var member = new AiFeatureStoreEntityTypeIamMember("member", AiFeatureStoreEntityTypeIamMemberArgs.builder()
///             .featurestore(entity.featurestore())
///             .entitytype(entity.name())
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
///     type: gcp:vertex:AiFeatureStoreEntityTypeIamMember
///     properties:
///       featurestore: ${entity.featurestore}
///       entitytype: ${entity.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * {{featurestore}}/entityTypes/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Vertex AI featurestoreentitytype IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreEntityTypeIamPolicy:AiFeatureStoreEntityTypeIamPolicy editor "{{featurestore}}/entityTypes/{{featurestore_entitytype}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreEntityTypeIamPolicy:AiFeatureStoreEntityTypeIamPolicy editor "{{featurestore}}/entityTypes/{{featurestore_entitytype}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreEntityTypeIamPolicy:AiFeatureStoreEntityTypeIamPolicy editor {{featurestore}}/entityTypes/{{featurestore_entitytype}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AiFeatureStoreEntityTypeIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> entitytype;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}. Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> featurestore;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// Creates a new [AiFeatureStoreEntityTypeIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiFeatureStoreEntityTypeIamPolicy]. {@macro pulumi_vertex_ai_feature_store_entity_type_iam_policy_ai_feature_store_entity_type_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiFeatureStoreEntityTypeIamPolicy(
    String name, {
    AiFeatureStoreEntityTypeIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStoreEntityTypeIamPolicy:AiFeatureStoreEntityTypeIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.entitytype = registerOutput<String>('entitytype');
    this.etag = registerOutput<String>('etag');
    this.featurestore = registerOutput<String>('featurestore');
    this.policyData = registerOutput<String>('policyData');
  }
}
