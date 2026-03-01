import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_managed_identity_args.dart';
import 'workload_identity_pool_managed_identity_attestation_rule.dart';

/// Represents a managed identity for a workload identity pool namespace.
///
/// To get more information about WorkloadIdentityPoolManagedIdentity, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.workloadIdentityPools.namespaces.managedIdentities)
/// * How-to Guides
/// * [Configure managed workload identity authentication for Compute Engine](https://cloud.google.com/iam/docs/create-managed-workload-identities)
/// * [Configure managed workload identity authentication for GKE](https://cloud.google.com/iam/docs/create-managed-workload-identities-gke)
///
/// ## Example Usage
///
/// ### Iam Workload Identity Pool Managed Identity Basic
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
/// const ns = new gcp.iam.WorkloadIdentityPoolNamespace("ns", {
///     workloadIdentityPoolId: pool.workloadIdentityPoolId,
///     workloadIdentityPoolNamespaceId: "example-namespace",
/// });
/// const example = new gcp.iam.WorkloadIdentityPoolManagedIdentity("example", {
///     workloadIdentityPoolId: pool.workloadIdentityPoolId,
///     workloadIdentityPoolNamespaceId: ns.workloadIdentityPoolNamespaceId,
///     workloadIdentityPoolManagedIdentityId: "example-managed-identity",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkloadIdentityPool("pool",
///     workload_identity_pool_id="example-pool",
///     mode="TRUST_DOMAIN")
/// ns = gcp.iam.WorkloadIdentityPoolNamespace("ns",
///     workload_identity_pool_id=pool.workload_identity_pool_id,
///     workload_identity_pool_namespace_id="example-namespace")
/// example = gcp.iam.WorkloadIdentityPoolManagedIdentity("example",
///     workload_identity_pool_id=pool.workload_identity_pool_id,
///     workload_identity_pool_namespace_id=ns.workload_identity_pool_namespace_id,
///     workload_identity_pool_managed_identity_id="example-managed-identity")
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
///     var ns = new Gcp.Iam.WorkloadIdentityPoolNamespace("ns", new()
///     {
///         WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
///         WorkloadIdentityPoolNamespaceId = "example-namespace",
///     });
///
///     var example = new Gcp.Iam.WorkloadIdentityPoolManagedIdentity("example", new()
///     {
///         WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
///         WorkloadIdentityPoolNamespaceId = ns.WorkloadIdentityPoolNamespaceId,
///         WorkloadIdentityPoolManagedIdentityId = "example-managed-identity",
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
/// 		ns, err := iam.NewWorkloadIdentityPoolNamespace(ctx, "ns", &iam.WorkloadIdentityPoolNamespaceArgs{
/// 			WorkloadIdentityPoolId:          pool.WorkloadIdentityPoolId,
/// 			WorkloadIdentityPoolNamespaceId: pulumi.String("example-namespace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewWorkloadIdentityPoolManagedIdentity(ctx, "example", &iam.WorkloadIdentityPoolManagedIdentityArgs{
/// 			WorkloadIdentityPoolId:                pool.WorkloadIdentityPoolId,
/// 			WorkloadIdentityPoolNamespaceId:       ns.WorkloadIdentityPoolNamespaceId,
/// 			WorkloadIdentityPoolManagedIdentityId: pulumi.String("example-managed-identity"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolManagedIdentity;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolManagedIdentityArgs;
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
///         var ns = new WorkloadIdentityPoolNamespace("ns", WorkloadIdentityPoolNamespaceArgs.builder()
///             .workloadIdentityPoolId(pool.workloadIdentityPoolId())
///             .workloadIdentityPoolNamespaceId("example-namespace")
///             .build());
///
///         var example = new WorkloadIdentityPoolManagedIdentity("example", WorkloadIdentityPoolManagedIdentityArgs.builder()
///             .workloadIdentityPoolId(pool.workloadIdentityPoolId())
///             .workloadIdentityPoolNamespaceId(ns.workloadIdentityPoolNamespaceId())
///             .workloadIdentityPoolManagedIdentityId("example-managed-identity")
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
///   ns:
///     type: gcp:iam:WorkloadIdentityPoolNamespace
///     properties:
///       workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
///       workloadIdentityPoolNamespaceId: example-namespace
///   example:
///     type: gcp:iam:WorkloadIdentityPoolManagedIdentity
///     properties:
///       workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
///       workloadIdentityPoolNamespaceId: ${ns.workloadIdentityPoolNamespaceId}
///       workloadIdentityPoolManagedIdentityId: example-managed-identity
/// ```
///
/// ### Iam Workload Identity Pool Managed Identity Full
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
/// const ns = new gcp.iam.WorkloadIdentityPoolNamespace("ns", {
///     workloadIdentityPoolId: pool.workloadIdentityPoolId,
///     workloadIdentityPoolNamespaceId: "example-namespace",
/// });
/// const example = new gcp.iam.WorkloadIdentityPoolManagedIdentity("example", {
///     workloadIdentityPoolId: pool.workloadIdentityPoolId,
///     workloadIdentityPoolNamespaceId: ns.workloadIdentityPoolNamespaceId,
///     workloadIdentityPoolManagedIdentityId: "example-managed-identity",
///     description: "Example Managed Identity in a Workload Identity Pool Namespace",
///     disabled: true,
///     attestationRules: [
///         {
///             googleCloudResource: "//compute.googleapis.com/projects/1111111111111/uid/zones/us-central1-a/instances/12345678",
///         },
///         {
///             googleCloudResource: "//run.googleapis.com/projects/1111111111111/name/locations/us-east1/services/my-service",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkloadIdentityPool("pool",
///     workload_identity_pool_id="example-pool",
///     mode="TRUST_DOMAIN")
/// ns = gcp.iam.WorkloadIdentityPoolNamespace("ns",
///     workload_identity_pool_id=pool.workload_identity_pool_id,
///     workload_identity_pool_namespace_id="example-namespace")
/// example = gcp.iam.WorkloadIdentityPoolManagedIdentity("example",
///     workload_identity_pool_id=pool.workload_identity_pool_id,
///     workload_identity_pool_namespace_id=ns.workload_identity_pool_namespace_id,
///     workload_identity_pool_managed_identity_id="example-managed-identity",
///     description="Example Managed Identity in a Workload Identity Pool Namespace",
///     disabled=True,
///     attestation_rules=[
///         {
///             "google_cloud_resource": "//compute.googleapis.com/projects/1111111111111/uid/zones/us-central1-a/instances/12345678",
///         },
///         {
///             "google_cloud_resource": "//run.googleapis.com/projects/1111111111111/name/locations/us-east1/services/my-service",
///         },
///     ])
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
///     var ns = new Gcp.Iam.WorkloadIdentityPoolNamespace("ns", new()
///     {
///         WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
///         WorkloadIdentityPoolNamespaceId = "example-namespace",
///     });
///
///     var example = new Gcp.Iam.WorkloadIdentityPoolManagedIdentity("example", new()
///     {
///         WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
///         WorkloadIdentityPoolNamespaceId = ns.WorkloadIdentityPoolNamespaceId,
///         WorkloadIdentityPoolManagedIdentityId = "example-managed-identity",
///         Description = "Example Managed Identity in a Workload Identity Pool Namespace",
///         Disabled = true,
///         AttestationRules = new[]
///         {
///             new Gcp.Iam.Inputs.WorkloadIdentityPoolManagedIdentityAttestationRuleArgs
///             {
///                 GoogleCloudResource = "//compute.googleapis.com/projects/1111111111111/uid/zones/us-central1-a/instances/12345678",
///             },
///             new Gcp.Iam.Inputs.WorkloadIdentityPoolManagedIdentityAttestationRuleArgs
///             {
///                 GoogleCloudResource = "//run.googleapis.com/projects/1111111111111/name/locations/us-east1/services/my-service",
///             },
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
/// 		pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// 			WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// 			Mode:                   pulumi.String("TRUST_DOMAIN"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ns, err := iam.NewWorkloadIdentityPoolNamespace(ctx, "ns", &iam.WorkloadIdentityPoolNamespaceArgs{
/// 			WorkloadIdentityPoolId:          pool.WorkloadIdentityPoolId,
/// 			WorkloadIdentityPoolNamespaceId: pulumi.String("example-namespace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewWorkloadIdentityPoolManagedIdentity(ctx, "example", &iam.WorkloadIdentityPoolManagedIdentityArgs{
/// 			WorkloadIdentityPoolId:                pool.WorkloadIdentityPoolId,
/// 			WorkloadIdentityPoolNamespaceId:       ns.WorkloadIdentityPoolNamespaceId,
/// 			WorkloadIdentityPoolManagedIdentityId: pulumi.String("example-managed-identity"),
/// 			Description:                           pulumi.String("Example Managed Identity in a Workload Identity Pool Namespace"),
/// 			Disabled:                              pulumi.Bool(true),
/// 			AttestationRules: iam.WorkloadIdentityPoolManagedIdentityAttestationRuleArray{
/// 				&iam.WorkloadIdentityPoolManagedIdentityAttestationRuleArgs{
/// 					GoogleCloudResource: pulumi.String("//compute.googleapis.com/projects/1111111111111/uid/zones/us-central1-a/instances/12345678"),
/// 				},
/// 				&iam.WorkloadIdentityPoolManagedIdentityAttestationRuleArgs{
/// 					GoogleCloudResource: pulumi.String("//run.googleapis.com/projects/1111111111111/name/locations/us-east1/services/my-service"),
/// 				},
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolNamespace;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolNamespaceArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolManagedIdentity;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolManagedIdentityArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolManagedIdentityAttestationRuleArgs;
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
///         var ns = new WorkloadIdentityPoolNamespace("ns", WorkloadIdentityPoolNamespaceArgs.builder()
///             .workloadIdentityPoolId(pool.workloadIdentityPoolId())
///             .workloadIdentityPoolNamespaceId("example-namespace")
///             .build());
///
///         var example = new WorkloadIdentityPoolManagedIdentity("example", WorkloadIdentityPoolManagedIdentityArgs.builder()
///             .workloadIdentityPoolId(pool.workloadIdentityPoolId())
///             .workloadIdentityPoolNamespaceId(ns.workloadIdentityPoolNamespaceId())
///             .workloadIdentityPoolManagedIdentityId("example-managed-identity")
///             .description("Example Managed Identity in a Workload Identity Pool Namespace")
///             .disabled(true)
///             .attestationRules(
///                 WorkloadIdentityPoolManagedIdentityAttestationRuleArgs.builder()
///                     .googleCloudResource("//compute.googleapis.com/projects/1111111111111/uid/zones/us-central1-a/instances/12345678")
///                     .build(),
///                 WorkloadIdentityPoolManagedIdentityAttestationRuleArgs.builder()
///                     .googleCloudResource("//run.googleapis.com/projects/1111111111111/name/locations/us-east1/services/my-service")
///                     .build())
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
///   ns:
///     type: gcp:iam:WorkloadIdentityPoolNamespace
///     properties:
///       workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
///       workloadIdentityPoolNamespaceId: example-namespace
///   example:
///     type: gcp:iam:WorkloadIdentityPoolManagedIdentity
///     properties:
///       workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
///       workloadIdentityPoolNamespaceId: ${ns.workloadIdentityPoolNamespaceId}
///       workloadIdentityPoolManagedIdentityId: example-managed-identity
///       description: Example Managed Identity in a Workload Identity Pool Namespace
///       disabled: true
///       attestationRules:
///         - googleCloudResource: //compute.googleapis.com/projects/1111111111111/uid/zones/us-central1-a/instances/12345678
///         - googleCloudResource: //run.googleapis.com/projects/1111111111111/name/locations/us-east1/services/my-service
/// ```
///
///
/// ## Import
///
/// WorkloadIdentityPoolManagedIdentity can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/namespaces/{{workload_identity_pool_namespace_id}}/managedIdentities/{{workload_identity_pool_managed_identity_id}}`
///
/// * `{{project}}/{{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}/{{workload_identity_pool_managed_identity_id}}`
///
/// * `{{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}/{{workload_identity_pool_managed_identity_id}}`
///
/// When using the `pulumi import` command, WorkloadIdentityPoolManagedIdentity can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolManagedIdentity:WorkloadIdentityPoolManagedIdentity default projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/namespaces/{{workload_identity_pool_namespace_id}}/managedIdentities/{{workload_identity_pool_managed_identity_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolManagedIdentity:WorkloadIdentityPoolManagedIdentity default {{project}}/{{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}/{{workload_identity_pool_managed_identity_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolManagedIdentity:WorkloadIdentityPoolManagedIdentity default {{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}/{{workload_identity_pool_managed_identity_id}}
/// ```
class WorkloadIdentityPoolManagedIdentity extends pulumi.CustomResource {
  /// Defines which workloads can receive an identity within a pool. When an AttestationRule is
  /// defined under a managed identity, matching workloads may receive that identity. A maximum of
  /// 50 AttestationRules can be set.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkloadIdentityPoolManagedIdentityAttestationRule>?> attestationRules;
  /// A description of the managed identity. Cannot exceed 256 characters.
  late final pulumi.Output<String?> description;
  /// Whether the managed identity is disabled. If disabled, credentials may no longer be issued for
  /// the identity, however existing credentials will still be accepted until they expire.
  late final pulumi.Output<bool?> disabled;
  /// The resource name of the managed identity as
  /// `projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}/namespaces/{workload_identity_pool_namespace_id}/managedIdentities/{workload_identity_pool_managed_identity_id}`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The current state of the managed identity.
  /// * `ACTIVE`: The managed identity is active.
  /// * `DELETED`: The managed identity is soft-deleted. Soft-deleted managed identities are
  /// permanently deleted after approximately 30 days. You can restore a soft-deleted managed
  /// identity using UndeleteWorkloadIdentityPoolManagedIdentity. You cannot reuse the ID of a
  /// soft-deleted managed identity until it is permanently deleted.
  late final pulumi.Output<String> state;
  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> workloadIdentityPoolId;
  /// The ID to use for the managed identity. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  late final pulumi.Output<String> workloadIdentityPoolManagedIdentityId;
  /// The ID to use for the namespace. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  late final pulumi.Output<String> workloadIdentityPoolNamespaceId;

  /// Creates a new [WorkloadIdentityPoolManagedIdentity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadIdentityPoolManagedIdentity]. {@macro pulumi_iam_workload_identity_pool_managed_identity_workload_identity_pool_managed_identity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadIdentityPoolManagedIdentity(
    String name, {
    WorkloadIdentityPoolManagedIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workloadIdentityPoolManagedIdentity:WorkloadIdentityPoolManagedIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attestationRules = registerOutput<List<WorkloadIdentityPoolManagedIdentityAttestationRule>?>('attestationRules');
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.workloadIdentityPoolId = registerOutput<String>('workloadIdentityPoolId');
    this.workloadIdentityPoolManagedIdentityId = registerOutput<String>('workloadIdentityPoolManagedIdentityId');
    this.workloadIdentityPoolNamespaceId = registerOutput<String>('workloadIdentityPoolNamespaceId');
  }
}
