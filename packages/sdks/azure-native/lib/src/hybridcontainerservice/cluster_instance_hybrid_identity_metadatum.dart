import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_instance_hybrid_identity_metadatum_args.dart';
import 'system_data_response.dart';

/// Defines the hybridIdentityMetadata.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2023-11-15-preview, 2025-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateHybridIdentityMetadata
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var clusterInstanceHybridIdentityMetadatum = new AzureNative.HybridContainerService.ClusterInstanceHybridIdentityMetadatum("clusterInstanceHybridIdentityMetadatum", new()
///     {
///         ConnectedClusterResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/test-hybridakscluster",
///         PublicKey = "8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///         ResourceUid = "f8b82dff-38ef-4220-99ef-d3a3f86ddc6c",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hybridcontainerservice "github.com/pulumi/pulumi-azure-native-sdk/hybridcontainerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcontainerservice.NewClusterInstanceHybridIdentityMetadatum(ctx, "clusterInstanceHybridIdentityMetadatum", &hybridcontainerservice.ClusterInstanceHybridIdentityMetadatumArgs{
/// 			ConnectedClusterResourceUri: pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/test-hybridakscluster"),
/// 			PublicKey:                   pulumi.String("8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2"),
/// 			ResourceUid:                 pulumi.String("f8b82dff-38ef-4220-99ef-d3a3f86ddc6c"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hybridcontainerservice.ClusterInstanceHybridIdentityMetadatum;
/// import com.pulumi.azurenative.hybridcontainerservice.ClusterInstanceHybridIdentityMetadatumArgs;
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
///         var clusterInstanceHybridIdentityMetadatum = new ClusterInstanceHybridIdentityMetadatum("clusterInstanceHybridIdentityMetadatum", ClusterInstanceHybridIdentityMetadatumArgs.builder()
///             .connectedClusterResourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/test-hybridakscluster")
///             .publicKey("8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2")
///             .resourceUid("f8b82dff-38ef-4220-99ef-d3a3f86ddc6c")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const clusterInstanceHybridIdentityMetadatum = new azure_native.hybridcontainerservice.ClusterInstanceHybridIdentityMetadatum("clusterInstanceHybridIdentityMetadatum", {
///     connectedClusterResourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/test-hybridakscluster",
///     publicKey: "8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///     resourceUid: "f8b82dff-38ef-4220-99ef-d3a3f86ddc6c",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster_instance_hybrid_identity_metadatum = azure_native.hybridcontainerservice.ClusterInstanceHybridIdentityMetadatum("clusterInstanceHybridIdentityMetadatum",
///     connected_cluster_resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/test-hybridakscluster",
///     public_key="8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///     resource_uid="f8b82dff-38ef-4220-99ef-d3a3f86ddc6c")
///
/// ```
///
/// ```yaml
/// resources:
///   clusterInstanceHybridIdentityMetadatum:
///     type: azure-native:hybridcontainerservice:ClusterInstanceHybridIdentityMetadatum
///     properties:
///       connectedClusterResourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/test-hybridakscluster
///       publicKey: 8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2
///       resourceUid: f8b82dff-38ef-4220-99ef-d3a3f86ddc6c
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:hybridcontainerservice:ClusterInstanceHybridIdentityMetadatum default /{connectedClusterResourceUri}/providers/Microsoft.HybridContainerService/provisionedClusterInstances/default/hybridIdentityMetadata/default
/// ```
class ClusterInstanceHybridIdentityMetadatum extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning state of the resource
  late final pulumi.Output<String> provisioningState;

  /// Onboarding public key for provisioning the Managed identity for the connected cluster.
  late final pulumi.Output<String?> publicKey;

  /// Unique id of the parent provisioned cluster resource.
  late final pulumi.Output<String?> resourceUid;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ClusterInstanceHybridIdentityMetadatum].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterInstanceHybridIdentityMetadatum]. {@macro pulumi_hybridcontainerservice_cluster_instance_hybrid_identity_metadatum_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterInstanceHybridIdentityMetadatum(
    String name, {
    ClusterInstanceHybridIdentityMetadatumArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridcontainerservice:ClusterInstanceHybridIdentityMetadatum',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publicKey = registerOutput<String?>('publicKey');
    resourceUid = registerOutput<String?>('resourceUid');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
