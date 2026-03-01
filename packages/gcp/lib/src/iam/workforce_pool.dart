import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_access_restrictions.dart';
import 'workforce_pool_args.dart';

/// Represents a collection of external workforces. Provides namespaces for
/// federated users that can be referenced in IAM policies.
///
///
/// To get more information about WorkforcePool, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools)
/// * How-to Guides
/// * [Manage pools](https://cloud.google.com/iam/docs/manage-workforce-identity-pools-providers#manage_pools)
///
/// > **Note:** Ask your Google Cloud account team to request access to workforce identity federation for
/// your billing/quota project. The account team notifies you when the project is granted access.
///
/// ## Example Usage
///
/// ### Iam Workforce Pool Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.iam.WorkforcePool("example", {
///     workforcePoolId: "example-pool",
///     parent: "organizations/123456789",
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.iam.WorkforcePool("example",
///     workforce_pool_id="example-pool",
///     parent="organizations/123456789",
///     location="global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Iam.WorkforcePool("example", new()
///     {
///         WorkforcePoolId = "example-pool",
///         Parent = "organizations/123456789",
///         Location = "global",
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
/// 		_, err := iam.NewWorkforcePool(ctx, "example", &iam.WorkforcePoolArgs{
/// 			WorkforcePoolId: pulumi.String("example-pool"),
/// 			Parent:          pulumi.String("organizations/123456789"),
/// 			Location:        pulumi.String("global"),
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
/// import com.pulumi.gcp.iam.WorkforcePool;
/// import com.pulumi.gcp.iam.WorkforcePoolArgs;
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
///         var example = new WorkforcePool("example", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:iam:WorkforcePool
///     properties:
///       workforcePoolId: example-pool
///       parent: organizations/123456789
///       location: global
/// ```
///
/// ### Iam Workforce Pool Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.iam.WorkforcePool("example", {
///     workforcePoolId: "example-pool",
///     parent: "organizations/123456789",
///     location: "global",
///     displayName: "Display name",
///     description: "A sample workforce pool.",
///     disabled: false,
///     sessionDuration: "7200s",
///     accessRestrictions: {
///         allowedServices: [{
///             domain: "backstory.chronicle.security",
///         }],
///         disableProgrammaticSignin: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.iam.WorkforcePool("example",
///     workforce_pool_id="example-pool",
///     parent="organizations/123456789",
///     location="global",
///     display_name="Display name",
///     description="A sample workforce pool.",
///     disabled=False,
///     session_duration="7200s",
///     access_restrictions={
///         "allowed_services": [{
///             "domain": "backstory.chronicle.security",
///         }],
///         "disable_programmatic_signin": False,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Iam.WorkforcePool("example", new()
///     {
///         WorkforcePoolId = "example-pool",
///         Parent = "organizations/123456789",
///         Location = "global",
///         DisplayName = "Display name",
///         Description = "A sample workforce pool.",
///         Disabled = false,
///         SessionDuration = "7200s",
///         AccessRestrictions = new Gcp.Iam.Inputs.WorkforcePoolAccessRestrictionsArgs
///         {
///             AllowedServices = new[]
///             {
///                 new Gcp.Iam.Inputs.WorkforcePoolAccessRestrictionsAllowedServiceArgs
///                 {
///                     Domain = "backstory.chronicle.security",
///                 },
///             },
///             DisableProgrammaticSignin = false,
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
/// 		_, err := iam.NewWorkforcePool(ctx, "example", &iam.WorkforcePoolArgs{
/// 			WorkforcePoolId: pulumi.String("example-pool"),
/// 			Parent:          pulumi.String("organizations/123456789"),
/// 			Location:        pulumi.String("global"),
/// 			DisplayName:     pulumi.String("Display name"),
/// 			Description:     pulumi.String("A sample workforce pool."),
/// 			Disabled:        pulumi.Bool(false),
/// 			SessionDuration: pulumi.String("7200s"),
/// 			AccessRestrictions: &iam.WorkforcePoolAccessRestrictionsArgs{
/// 				AllowedServices: iam.WorkforcePoolAccessRestrictionsAllowedServiceArray{
/// 					&iam.WorkforcePoolAccessRestrictionsAllowedServiceArgs{
/// 						Domain: pulumi.String("backstory.chronicle.security"),
/// 					},
/// 				},
/// 				DisableProgrammaticSignin: pulumi.Bool(false),
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
/// import com.pulumi.gcp.iam.WorkforcePool;
/// import com.pulumi.gcp.iam.WorkforcePoolArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolAccessRestrictionsArgs;
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
///         var example = new WorkforcePool("example", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .displayName("Display name")
///             .description("A sample workforce pool.")
///             .disabled(false)
///             .sessionDuration("7200s")
///             .accessRestrictions(WorkforcePoolAccessRestrictionsArgs.builder()
///                 .allowedServices(WorkforcePoolAccessRestrictionsAllowedServiceArgs.builder()
///                     .domain("backstory.chronicle.security")
///                     .build())
///                 .disableProgrammaticSignin(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:iam:WorkforcePool
///     properties:
///       workforcePoolId: example-pool
///       parent: organizations/123456789
///       location: global
///       displayName: Display name
///       description: A sample workforce pool.
///       disabled: false
///       sessionDuration: 7200s
///       accessRestrictions:
///         allowedServices:
///           - domain: backstory.chronicle.security
///         disableProgrammaticSignin: false
/// ```
///
///
/// ## Import
///
/// WorkforcePool can be imported using any of these accepted formats:
///
/// * `locations/{{location}}/workforcePools/{{workforce_pool_id}}`
///
/// * `{{location}}/{{workforce_pool_id}}`
///
/// When using the `pulumi import` command, WorkforcePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePool:WorkforcePool default locations/{{location}}/workforcePools/{{workforce_pool_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePool:WorkforcePool default {{location}}/{{workforce_pool_id}}
/// ```
class WorkforcePool extends pulumi.CustomResource {
  /// Configure access restrictions on the workforce pool users. This is an optional field. If specified web
  /// sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users.
  /// Structure is documented below.
  late final pulumi.Output<WorkforcePoolAccessRestrictions?> accessRestrictions;

  /// A user-specified description of the pool. Cannot exceed 256 characters.
  late final pulumi.Output<String?> description;

  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens,
  /// or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  late final pulumi.Output<bool?> disabled;

  /// A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  late final pulumi.Output<String?> displayName;

  /// The location for the resource.
  late final pulumi.Output<String> location;

  /// Output only. The resource name of the pool.
  /// Format: `locations/{location}/workforcePools/{workforcePoolId}`
  late final pulumi.Output<String> name;

  /// Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  late final pulumi.Output<String> parent;

  /// Duration that the Google Cloud access tokens, console sign-in sessions,
  /// and `gcloud` sign-in sessions from this pool are valid.
  /// Must be greater than 15 minutes (900s) and less than 12 hours (43200s).
  /// If `sessionDuration` is not configured, minted credentials have a default duration of one hour (3600s).
  /// A duration in seconds with up to nine fractional digits, ending with '`s`'. Example: "`3.5s`".
  late final pulumi.Output<String?> sessionDuration;

  /// Output only. The state of the pool.
  /// * STATE_UNSPECIFIED: State unspecified.
  /// * ACTIVE: The pool is active, and may be used in Google Cloud policies.
  /// * DELETED: The pool is soft-deleted. Soft-deleted pools are permanently deleted
  /// after approximately 30 days. You can restore a soft-deleted pool using
  /// [workforcePools.undelete](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools/undelete#google.iam.admin.v1.WorkforcePools.UndeleteWorkforcePool).
  /// You cannot reuse the ID of a soft-deleted pool until it is permanently deleted.
  /// While a pool is deleted, you cannot use it to exchange tokens, or use
  /// existing tokens to access resources. If the pool is undeleted, existing
  /// tokens grant access again.
  late final pulumi.Output<String> state;

  /// The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,
  /// digits, or hyphens. It must start with a letter, and cannot have a trailing hyphen.
  /// The prefix `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> workforcePoolId;

  /// Creates a new [WorkforcePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkforcePool]. {@macro pulumi_iam_workforce_pool_workforce_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkforcePool(
    String name, {
    WorkforcePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:iam/workforcePool:WorkforcePool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accessRestrictions = registerOutput<WorkforcePoolAccessRestrictions?>(
      'accessRestrictions',
    );
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.sessionDuration = registerOutput<String?>('sessionDuration');
    this.state = registerOutput<String>('state');
    this.workforcePoolId = registerOutput<String>('workforcePoolId');
  }
}
