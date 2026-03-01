import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_identity_metadatum_args.dart';
import 'provisioned_cluster_identity_response.dart';
import 'system_data_response.dart';

/// Defines the hybridIdentityMetadata.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
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
///     var hybridIdentityMetadatum = new AzureNative.HybridContainerService.HybridIdentityMetadatum("hybridIdentityMetadatum", new()
///     {
///         HybridIdentityMetadataResourceName = "default",
///         PublicKey = "8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///         ResourceGroupName = "testrg",
///         ResourceName = "ContosoTargetCluster",
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
/// 		_, err := hybridcontainerservice.NewHybridIdentityMetadatum(ctx, "hybridIdentityMetadatum", &hybridcontainerservice.HybridIdentityMetadatumArgs{
/// 			HybridIdentityMetadataResourceName: pulumi.String("default"),
/// 			PublicKey:                          pulumi.String("8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2"),
/// 			ResourceGroupName:                  pulumi.String("testrg"),
/// 			ResourceName:                       pulumi.String("ContosoTargetCluster"),
/// 			ResourceUid:                        pulumi.String("f8b82dff-38ef-4220-99ef-d3a3f86ddc6c"),
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
/// import com.pulumi.azurenative.hybridcontainerservice.HybridIdentityMetadatum;
/// import com.pulumi.azurenative.hybridcontainerservice.HybridIdentityMetadatumArgs;
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
///         var hybridIdentityMetadatum = new HybridIdentityMetadatum("hybridIdentityMetadatum", HybridIdentityMetadatumArgs.builder()
///             .hybridIdentityMetadataResourceName("default")
///             .publicKey("8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2")
///             .resourceGroupName("testrg")
///             .resourceName("ContosoTargetCluster")
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
/// const hybridIdentityMetadatum = new azure_native.hybridcontainerservice.HybridIdentityMetadatum("hybridIdentityMetadatum", {
///     hybridIdentityMetadataResourceName: "default",
///     publicKey: "8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///     resourceGroupName: "testrg",
///     resourceName: "ContosoTargetCluster",
///     resourceUid: "f8b82dff-38ef-4220-99ef-d3a3f86ddc6c",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hybrid_identity_metadatum = azure_native.hybridcontainerservice.HybridIdentityMetadatum("hybridIdentityMetadatum",
///     hybrid_identity_metadata_resource_name="default",
///     public_key="8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///     resource_group_name="testrg",
///     resource_name_="ContosoTargetCluster",
///     resource_uid="f8b82dff-38ef-4220-99ef-d3a3f86ddc6c")
///
/// ```
///
/// ```yaml
/// resources:
///   hybridIdentityMetadatum:
///     type: azure-native:hybridcontainerservice:HybridIdentityMetadatum
///     properties:
///       hybridIdentityMetadataResourceName: default
///       publicKey: 8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2
///       resourceGroupName: testrg
///       resourceName: ContosoTargetCluster
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
/// $ pulumi import azure-native:hybridcontainerservice:HybridIdentityMetadatum default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/provisionedClusters/{resourceName}/hybridIdentityMetadata/{hybridIdentityMetadataResourceName}
/// ```
class HybridIdentityMetadatum extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The identity of the provisioned cluster.
  late final pulumi.Output<ProvisionedClusterIdentityResponse?> identity;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// provisioning state of the hybridIdentityMetadata resource.
  late final pulumi.Output<String> provisioningState;
  /// Onboarding public key for provisioning the Managed identity for the HybridAKS cluster.
  late final pulumi.Output<String?> publicKey;
  /// Unique id of the parent provisioned cluster resource.
  late final pulumi.Output<String?> resourceUid;
  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HybridIdentityMetadatum].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridIdentityMetadatum]. {@macro pulumi_hybridcontainerservice_hybrid_identity_metadatum_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridIdentityMetadatum(
    String name, {
    HybridIdentityMetadatumArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridcontainerservice:HybridIdentityMetadatum',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.identity = registerOutput<ProvisionedClusterIdentityResponse?>('identity');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publicKey = registerOutput<String?>('publicKey');
    this.resourceUid = registerOutput<String?>('resourceUid');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
