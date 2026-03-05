import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_identity_metadatum_args.dart';
import 'identity_response.dart';
import 'system_data_response.dart';

/// Defines the HybridIdentityMetadata.
///
/// Uses Azure REST API version 2023-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-07-15-preview.
///
/// Other available API versions: 2022-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var hybridIdentityMetadatum = new AzureNative.ConnectedVMwarevSphere.HybridIdentityMetadatum("hybridIdentityMetadatum", new()
///     {
///         MetadataName = "default",
///         PublicKey = "8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///         ResourceGroupName = "testrg",
///         VirtualMachineName = "ContosoVm",
///         VmId = "f8b82dff-38ef-4220-99ef-d3a3f86ddc6c",
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
/// 	connectedvmwarevsphere "github.com/pulumi/pulumi-azure-native-sdk/connectedvmwarevsphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connectedvmwarevsphere.NewHybridIdentityMetadatum(ctx, "hybridIdentityMetadatum", &connectedvmwarevsphere.HybridIdentityMetadatumArgs{
/// 			MetadataName:       pulumi.String("default"),
/// 			PublicKey:          pulumi.String("8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2"),
/// 			ResourceGroupName:  pulumi.String("testrg"),
/// 			VirtualMachineName: pulumi.String("ContosoVm"),
/// 			VmId:               pulumi.String("f8b82dff-38ef-4220-99ef-d3a3f86ddc6c"),
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.HybridIdentityMetadatum;
/// import com.pulumi.azurenative.connectedvmwarevsphere.HybridIdentityMetadatumArgs;
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
///             .metadataName("default")
///             .publicKey("8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2")
///             .resourceGroupName("testrg")
///             .virtualMachineName("ContosoVm")
///             .vmId("f8b82dff-38ef-4220-99ef-d3a3f86ddc6c")
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
/// const hybridIdentityMetadatum = new azure_native.connectedvmwarevsphere.HybridIdentityMetadatum("hybridIdentityMetadatum", {
///     metadataName: "default",
///     publicKey: "8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///     resourceGroupName: "testrg",
///     virtualMachineName: "ContosoVm",
///     vmId: "f8b82dff-38ef-4220-99ef-d3a3f86ddc6c",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hybrid_identity_metadatum = azure_native.connectedvmwarevsphere.HybridIdentityMetadatum("hybridIdentityMetadatum",
///     metadata_name="default",
///     public_key="8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///     resource_group_name="testrg",
///     virtual_machine_name="ContosoVm",
///     vm_id="f8b82dff-38ef-4220-99ef-d3a3f86ddc6c")
///
/// ```
///
/// ```yaml
/// resources:
///   hybridIdentityMetadatum:
///     type: azure-native:connectedvmwarevsphere:HybridIdentityMetadatum
///     properties:
///       metadataName: default
///       publicKey: 8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2
///       resourceGroupName: testrg
///       virtualMachineName: ContosoVm
///       vmId: f8b82dff-38ef-4220-99ef-d3a3f86ddc6c
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
/// $ pulumi import azure-native:connectedvmwarevsphere:HybridIdentityMetadatum testItem /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedVMwarevSphere/virtualMachines/{virtualMachineName}/hybridIdentityMetadata/{metadataName}
/// ```
class HybridIdentityMetadatum extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The identity of the resource.
  late final pulumi.Output<IdentityResponse> identity;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Gets or sets the Public Key.
  late final pulumi.Output<String?> publicKey;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Gets or sets the Vm Id.
  late final pulumi.Output<String?> vmId;

  /// Creates a new [HybridIdentityMetadatum].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridIdentityMetadatum]. {@macro pulumi_connectedvmwarevsphere_hybrid_identity_metadatum_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridIdentityMetadatum(
    String name, {
    HybridIdentityMetadatumArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:connectedvmwarevsphere:HybridIdentityMetadatum',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityResponse>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publicKey = registerOutput<String?>('publicKey');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vmId = registerOutput<String?>('vmId');
  }
}
