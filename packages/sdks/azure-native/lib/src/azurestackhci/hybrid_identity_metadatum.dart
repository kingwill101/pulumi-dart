import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_identity_metadatum_args.dart';
import 'identity_response.dart';
import 'system_data_response.dart';

/// Defines the HybridIdentityMetadata.
///
/// Uses Azure REST API version 2022-12-15-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-15-preview.
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
///     var hybridIdentityMetadatum = new AzureNative.AzureStackHCI.HybridIdentityMetadatum("hybridIdentityMetadatum", new()
///     {
///         MetadataName = "default",
///         PublicKey = "8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///         ResourceGroupName = "testrg",
///         VirtualMachineName = "ContosoVm",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewHybridIdentityMetadatum(ctx, "hybridIdentityMetadatum", &azurestackhci.HybridIdentityMetadatumArgs{
/// 			MetadataName:       pulumi.String("default"),
/// 			PublicKey:          pulumi.String("8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2"),
/// 			ResourceGroupName:  pulumi.String("testrg"),
/// 			VirtualMachineName: pulumi.String("ContosoVm"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurestackhci_hybrididentitymetadatum" "hybridIdentityMetadatum" {
///   metadata_name        = "default"
///   public_key           = "8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2"
///   resource_group_name  = "testrg"
///   virtual_machine_name = "ContosoVm"
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
/// import com.pulumi.azurenative.azurestackhci.HybridIdentityMetadatum;
/// import com.pulumi.azurenative.azurestackhci.HybridIdentityMetadatumArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
/// const hybridIdentityMetadatum = new azure_native.azurestackhci.HybridIdentityMetadatum("hybridIdentityMetadatum", {
///     metadataName: "default",
///     publicKey: "8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///     resourceGroupName: "testrg",
///     virtualMachineName: "ContosoVm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hybrid_identity_metadatum = azure_native.azurestackhci.HybridIdentityMetadatum("hybridIdentityMetadatum",
///     metadata_name="default",
///     public_key="8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///     resource_group_name="testrg",
///     virtual_machine_name="ContosoVm")
///
/// ```
///
/// ```yaml
/// resources:
///   hybridIdentityMetadatum:
///     type: azure-native:azurestackhci:HybridIdentityMetadatum
///     properties:
///       metadataName: default
///       publicKey: 8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2
///       resourceGroupName: testrg
///       virtualMachineName: ContosoVm
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
/// $ pulumi import azure-native:azurestackhci:HybridIdentityMetadatum default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/virtualMachines/{virtualMachineName}/hybridIdentityMetadata/{metadataName}
/// ```
class HybridIdentityMetadatum extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Identity for the resource.
  late final pulumi.Output<IdentityResponse> identity;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The Public Key.
  late final pulumi.Output<String?> publicKey;
  /// The unique identifier for the resource.
  late final pulumi.Output<String?> resourceUid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HybridIdentityMetadatum].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridIdentityMetadatum]. {@macro pulumi_azurestackhci_hybrid_identity_metadatum_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridIdentityMetadatum(
    String name, {
    HybridIdentityMetadatumArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:HybridIdentityMetadatum',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityResponse>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publicKey = registerOutput<String?>('publicKey');
    resourceUid = registerOutput<String?>('resourceUid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [HybridIdentityMetadatum] resource.
  HybridIdentityMetadatum.reference(String urn)
    : super(
        'azure-native:azurestackhci:HybridIdentityMetadatum',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityResponse>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publicKey = registerOutput<String?>('publicKey');
    resourceUid = registerOutput<String?>('resourceUid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
