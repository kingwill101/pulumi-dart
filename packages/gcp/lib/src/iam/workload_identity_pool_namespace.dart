import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_namespace_args.dart';
import 'workload_identity_pool_namespace_owner_service.dart';

/// Represents a namespace for a workload identity pool. Namespaces are used to segment identities
/// within the pool.
///
/// To get more information about WorkloadIdentityPoolNamespace, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.workloadIdentityPools.namespaces)
/// * How-to Guides
/// * [Configure managed workload identity authentication for Compute Engine](https://cloud.google.com/iam/docs/create-managed-workload-identities)
/// * [Configure managed workload identity authentication for GKE](https://cloud.google.com/iam/docs/create-managed-workload-identities-gke)
///
/// ## Example Usage
///
/// ### Iam Workload Identity Pool Namespace Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {
///     workloadIdentityPoolId: "example-pool",
///     mode: "TRUST_DOMAIN",
/// });
/// const example = new gcp.iam.WorkloadIdentityPoolNamespace("example", {
///     workloadIdentityPoolId: pool.workloadIdentityPoolId,
///     workloadIdentityPoolNamespaceId: "example-namespace",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkloadIdentityPool("pool",
///     workload_identity_pool_id="example-pool",
///     mode="TRUST_DOMAIN")
/// example = gcp.iam.WorkloadIdentityPoolNamespace("example",
///     workload_identity_pool_id=pool.workload_identity_pool_id,
///     workload_identity_pool_namespace_id="example-namespace")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
///     {
///         WorkloadIdentityPoolId = "example-pool",
///         Mode = "TRUST_DOMAIN",
///     });
///
///     var example = new Gcp.Iam.WorkloadIdentityPoolNamespace("example", new()
///     {
///         WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
///         WorkloadIdentityPoolNamespaceId = "example-namespace",
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
/// 		pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// 			WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// 			Mode:                   pulumi.String("TRUST_DOMAIN"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewWorkloadIdentityPoolNamespace(ctx, "example", &iam.WorkloadIdentityPoolNamespaceArgs{
/// 			WorkloadIdentityPoolId:          pool.WorkloadIdentityPoolId,
/// 			WorkloadIdentityPoolNamespaceId: pulumi.String("example-namespace"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolNamespace;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolNamespaceArgs;
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
///         var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
///             .workloadIdentityPoolId("example-pool")
///             .mode("TRUST_DOMAIN")
///             .build());
///
///         var example = new WorkloadIdentityPoolNamespace("example", WorkloadIdentityPoolNamespaceArgs.builder()
///             .workloadIdentityPoolId(pool.workloadIdentityPoolId())
///             .workloadIdentityPoolNamespaceId("example-namespace")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pool:
///     type: gcp:iam:WorkloadIdentityPool
///     properties:
///       workloadIdentityPoolId: example-pool
///       mode: TRUST_DOMAIN
///   example:
///     type: gcp:iam:WorkloadIdentityPoolNamespace
///     properties:
///       workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
///       workloadIdentityPoolNamespaceId: example-namespace
/// ```
///
/// ### Iam Workload Identity Pool Namespace Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {
///     workloadIdentityPoolId: "example-pool",
///     mode: "TRUST_DOMAIN",
/// });
/// const example = new gcp.iam.WorkloadIdentityPoolNamespace("example", {
///     workloadIdentityPoolId: pool.workloadIdentityPoolId,
///     workloadIdentityPoolNamespaceId: "example-namespace",
///     description: "Example Namespace in a Workload Identity Pool",
///     disabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkloadIdentityPool("pool",
///     workload_identity_pool_id="example-pool",
///     mode="TRUST_DOMAIN")
/// example = gcp.iam.WorkloadIdentityPoolNamespace("example",
///     workload_identity_pool_id=pool.workload_identity_pool_id,
///     workload_identity_pool_namespace_id="example-namespace",
///     description="Example Namespace in a Workload Identity Pool",
///     disabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
///     {
///         WorkloadIdentityPoolId = "example-pool",
///         Mode = "TRUST_DOMAIN",
///     });
///
///     var example = new Gcp.Iam.WorkloadIdentityPoolNamespace("example", new()
///     {
///         WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
///         WorkloadIdentityPoolNamespaceId = "example-namespace",
///         Description = "Example Namespace in a Workload Identity Pool",
///         Disabled = true,
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
/// 		pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// 			WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// 			Mode:                   pulumi.String("TRUST_DOMAIN"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewWorkloadIdentityPoolNamespace(ctx, "example", &iam.WorkloadIdentityPoolNamespaceArgs{
/// 			WorkloadIdentityPoolId:          pool.WorkloadIdentityPoolId,
/// 			WorkloadIdentityPoolNamespaceId: pulumi.String("example-namespace"),
/// 			Description:                     pulumi.String("Example Namespace in a Workload Identity Pool"),
/// 			Disabled:                        pulumi.Bool(true),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolNamespace;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolNamespaceArgs;
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
///         var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
///             .workloadIdentityPoolId("example-pool")
///             .mode("TRUST_DOMAIN")
///             .build());
///
///         var example = new WorkloadIdentityPoolNamespace("example", WorkloadIdentityPoolNamespaceArgs.builder()
///             .workloadIdentityPoolId(pool.workloadIdentityPoolId())
///             .workloadIdentityPoolNamespaceId("example-namespace")
///             .description("Example Namespace in a Workload Identity Pool")
///             .disabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pool:
///     type: gcp:iam:WorkloadIdentityPool
///     properties:
///       workloadIdentityPoolId: example-pool
///       mode: TRUST_DOMAIN
///   example:
///     type: gcp:iam:WorkloadIdentityPoolNamespace
///     properties:
///       workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
///       workloadIdentityPoolNamespaceId: example-namespace
///       description: Example Namespace in a Workload Identity Pool
///       disabled: true
/// ```
///
///
/// ## Import
///
/// WorkloadIdentityPoolNamespace can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/namespaces/{{workload_identity_pool_namespace_id}}`
///
/// * `{{project}}/{{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}`
///
/// * `{{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}`
///
/// When using the `pulumi import` command, WorkloadIdentityPoolNamespace can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolNamespace:WorkloadIdentityPoolNamespace default projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/namespaces/{{workload_identity_pool_namespace_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolNamespace:WorkloadIdentityPoolNamespace default {{project}}/{{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolNamespace:WorkloadIdentityPoolNamespace default {{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}
/// ```
class WorkloadIdentityPoolNamespace extends pulumi.CustomResource {
  /// A description of the namespace. Cannot exceed 256 characters.
  late final pulumi.Output<String?> description;
  /// Whether the namespace is disabled. If disabled, credentials may no longer be issued for
  /// identities within this namespace, however existing credentials will still be accepted until
  /// they expire.
  late final pulumi.Output<bool?> disabled;
  /// The resource name of the namespace as
  /// `projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}/namespaces/{workload_identity_pool_namespace_id}`.
  late final pulumi.Output<String> name;
  /// Defines the owner that is allowed to mutate this resource. If present, this resource can only
  /// be mutated by the owner.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkloadIdentityPoolNamespaceOwnerService>> ownerServices;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The current state of the namespace.
  /// * `ACTIVE`: The namespace is active.
  /// * `DELETED`: The namespace is soft-deleted. Soft-deleted namespaces are permanently deleted
  /// after approximately 30 days. You can restore a soft-deleted namespace using
  /// UndeleteWorkloadIdentityPoolNamespace. You cannot reuse the ID of a soft-deleted namespace
  /// until it is permanently deleted.
  late final pulumi.Output<String> state;
  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> workloadIdentityPoolId;
  /// The ID to use for the namespace. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  late final pulumi.Output<String> workloadIdentityPoolNamespaceId;

  /// Creates a new [WorkloadIdentityPoolNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadIdentityPoolNamespace]. {@macro pulumi_iam_workload_identity_pool_namespace_workload_identity_pool_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadIdentityPoolNamespace(
    String name, {
    WorkloadIdentityPoolNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workloadIdentityPoolNamespace:WorkloadIdentityPoolNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.name = registerOutput<String>('name');
    this.ownerServices = registerOutput<List<WorkloadIdentityPoolNamespaceOwnerService>>('ownerServices');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.workloadIdentityPoolId = registerOutput<String>('workloadIdentityPoolId');
    this.workloadIdentityPoolNamespaceId = registerOutput<String>('workloadIdentityPoolNamespaceId');
  }
}
