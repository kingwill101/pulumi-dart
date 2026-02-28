import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_store_iam_binding_args.dart';
import 'fhir_store_iam_binding_condition.dart';

/// Three different resources help you manage your IAM policy for Healthcare FHIR store. Each of these resources serves a different use case:
///
/// * `gcp.healthcare.FhirStoreIamPolicy`: Authoritative. Sets the IAM policy for the FHIR store and replaces any existing policy already attached.
/// * `gcp.healthcare.FhirStoreIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the FHIR store are preserved.
/// * `gcp.healthcare.FhirStoreIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the FHIR store are preserved.
///
/// > **Note:** `gcp.healthcare.FhirStoreIamPolicy` **cannot** be used in conjunction with `gcp.healthcare.FhirStoreIamBinding` and `gcp.healthcare.FhirStoreIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.healthcare.FhirStoreIamBinding` resources **can be** used in conjunction with `gcp.healthcare.FhirStoreIamMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.healthcare.FhirStoreIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/editor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const fhirStore = new gcp.healthcare.FhirStoreIamPolicy("fhir_store", {
///     fhirStoreId: "your-fhir-store-id",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/editor",
///     "members": ["user:jane@example.com"],
/// }])
/// fhir_store = gcp.healthcare.FhirStoreIamPolicy("fhir_store",
///     fhir_store_id="your-fhir-store-id",
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
///                 Role = "roles/editor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var fhirStore = new Gcp.Healthcare.FhirStoreIamPolicy("fhir_store", new()
///     {
///         FhirStoreId = "your-fhir-store-id",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/editor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewFhirStoreIamPolicy(ctx, "fhir_store", &healthcare.FhirStoreIamPolicyArgs{
/// 			FhirStoreId: pulumi.String("your-fhir-store-id"),
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
/// import com.pulumi.gcp.healthcare.FhirStoreIamPolicy;
/// import com.pulumi.gcp.healthcare.FhirStoreIamPolicyArgs;
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
///                 .role("roles/editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var fhirStore = new FhirStoreIamPolicy("fhirStore", FhirStoreIamPolicyArgs.builder()
///             .fhirStoreId("your-fhir-store-id")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fhirStore:
///     type: gcp:healthcare:FhirStoreIamPolicy
///     name: fhir_store
///     properties:
///       fhirStoreId: your-fhir-store-id
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/editor
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.FhirStoreIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fhirStore = new gcp.healthcare.FhirStoreIamBinding("fhir_store", {
///     fhirStoreId: "your-fhir-store-id",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// fhir_store = gcp.healthcare.FhirStoreIamBinding("fhir_store",
///     fhir_store_id="your-fhir-store-id",
///     role="roles/editor",
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
///     var fhirStore = new Gcp.Healthcare.FhirStoreIamBinding("fhir_store", new()
///     {
///         FhirStoreId = "your-fhir-store-id",
///         Role = "roles/editor",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.NewFhirStoreIamBinding(ctx, "fhir_store", &healthcare.FhirStoreIamBindingArgs{
/// 			FhirStoreId: pulumi.String("your-fhir-store-id"),
/// 			Role:        pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.FhirStoreIamBinding;
/// import com.pulumi.gcp.healthcare.FhirStoreIamBindingArgs;
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
///         var fhirStore = new FhirStoreIamBinding("fhirStore", FhirStoreIamBindingArgs.builder()
///             .fhirStoreId("your-fhir-store-id")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fhirStore:
///     type: gcp:healthcare:FhirStoreIamBinding
///     name: fhir_store
///     properties:
///       fhirStoreId: your-fhir-store-id
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.FhirStoreIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fhirStore = new gcp.healthcare.FhirStoreIamMember("fhir_store", {
///     fhirStoreId: "your-fhir-store-id",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// fhir_store = gcp.healthcare.FhirStoreIamMember("fhir_store",
///     fhir_store_id="your-fhir-store-id",
///     role="roles/editor",
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
///     var fhirStore = new Gcp.Healthcare.FhirStoreIamMember("fhir_store", new()
///     {
///         FhirStoreId = "your-fhir-store-id",
///         Role = "roles/editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.NewFhirStoreIamMember(ctx, "fhir_store", &healthcare.FhirStoreIamMemberArgs{
/// 			FhirStoreId: pulumi.String("your-fhir-store-id"),
/// 			Role:        pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.FhirStoreIamMember;
/// import com.pulumi.gcp.healthcare.FhirStoreIamMemberArgs;
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
///         var fhirStore = new FhirStoreIamMember("fhirStore", FhirStoreIamMemberArgs.builder()
///             .fhirStoreId("your-fhir-store-id")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fhirStore:
///     type: gcp:healthcare:FhirStoreIamMember
///     name: fhir_store
///     properties:
///       fhirStoreId: your-fhir-store-id
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.FhirStoreIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fhirStore = new gcp.healthcare.FhirStoreIamBinding("fhir_store", {
///     fhirStoreId: "your-fhir-store-id",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// fhir_store = gcp.healthcare.FhirStoreIamBinding("fhir_store",
///     fhir_store_id="your-fhir-store-id",
///     role="roles/editor",
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
///     var fhirStore = new Gcp.Healthcare.FhirStoreIamBinding("fhir_store", new()
///     {
///         FhirStoreId = "your-fhir-store-id",
///         Role = "roles/editor",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.NewFhirStoreIamBinding(ctx, "fhir_store", &healthcare.FhirStoreIamBindingArgs{
/// 			FhirStoreId: pulumi.String("your-fhir-store-id"),
/// 			Role:        pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.FhirStoreIamBinding;
/// import com.pulumi.gcp.healthcare.FhirStoreIamBindingArgs;
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
///         var fhirStore = new FhirStoreIamBinding("fhirStore", FhirStoreIamBindingArgs.builder()
///             .fhirStoreId("your-fhir-store-id")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fhirStore:
///     type: gcp:healthcare:FhirStoreIamBinding
///     name: fhir_store
///     properties:
///       fhirStoreId: your-fhir-store-id
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.healthcare.FhirStoreIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fhirStore = new gcp.healthcare.FhirStoreIamMember("fhir_store", {
///     fhirStoreId: "your-fhir-store-id",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// fhir_store = gcp.healthcare.FhirStoreIamMember("fhir_store",
///     fhir_store_id="your-fhir-store-id",
///     role="roles/editor",
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
///     var fhirStore = new Gcp.Healthcare.FhirStoreIamMember("fhir_store", new()
///     {
///         FhirStoreId = "your-fhir-store-id",
///         Role = "roles/editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.NewFhirStoreIamMember(ctx, "fhir_store", &healthcare.FhirStoreIamMemberArgs{
/// 			FhirStoreId: pulumi.String("your-fhir-store-id"),
/// 			Role:        pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.FhirStoreIamMember;
/// import com.pulumi.gcp.healthcare.FhirStoreIamMemberArgs;
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
///         var fhirStore = new FhirStoreIamMember("fhirStore", FhirStoreIamMemberArgs.builder()
///             .fhirStoreId("your-fhir-store-id")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fhirStore:
///     type: gcp:healthcare:FhirStoreIamMember
///     name: fhir_store
///     properties:
///       fhirStoreId: your-fhir-store-id
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Healthcare FHIR store resource. For example:
///
/// * `"{{project_id}}/{{location}}/{{dataset}}/{{fhir_store}}"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "{{project_id}}/{{location}}/{{dataset}}/{{fhir_store}}"
///
/// to = google_healthcare_fhir_store_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:healthcare/fhirStoreIamBinding:FhirStoreIamBinding default {{project_id}}/{{location}}/{{dataset}}/{{fhir_store}}
/// ```
class FhirStoreIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<FhirStoreIamBindingCondition?> condition;
  /// (Computed) The etag of the FHIR store's IAM policy.
  late final pulumi.Output<String> etag;
  /// The FHIR store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{fhir_store_name}` or
  /// `{location_name}/{dataset_name}/{fhir_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  late final pulumi.Output<String> fhirStoreId;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;
  /// The role that should be applied. Only one
  /// `gcp.healthcare.FhirStoreIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [FhirStoreIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FhirStoreIamBinding]. {@macro pulumi_healthcare_fhir_store_iam_binding_fhir_store_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FhirStoreIamBinding(
    String name, {
    FhirStoreIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/fhirStoreIamBinding:FhirStoreIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<FhirStoreIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.fhirStoreId = registerOutput<String>('fhirStoreId');
    this.members = registerOutput<List<String>>('members');
    this.role = registerOutput<String>('role');
  }
}
