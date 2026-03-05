import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_bare_metal_storage_instance_args.dart';
import 'azure_bare_metal_storage_instance_identity_response.dart';
import 'storage_properties_response.dart';
import 'system_data_response.dart';

/// AzureBareMetalStorageInstance info on Azure (ARM properties and AzureBareMetalStorage properties)
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-06.
///
/// Other available API versions: 2023-04-06, 2023-08-04-preview, 2023-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native baremetalinfrastructure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put a new AzureBareMetalStorageInstance
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureBareMetalStorageInstance = new AzureNative.BareMetalInfrastructure.AzureBareMetalStorageInstance("azureBareMetalStorageInstance", new()
///     {
///         AzureBareMetalStorageInstanceName = "myAzureBareMetalStorageInstance",
///         AzureBareMetalStorageInstanceUniqueIdentifier = "23415635-4d7e-41dc-9598-8194f22c24e9",
///         Location = "westus2",
///         ResourceGroupName = "myResourceGroup",
///         StorageProperties = new AzureNative.BareMetalInfrastructure.Inputs.StoragePropertiesArgs
///         {
///             Generation = "Gen4",
///             HardwareType = "NetApp",
///             OfferingType = "EPIC",
///             StorageBillingProperties = new AzureNative.BareMetalInfrastructure.Inputs.StorageBillingPropertiesArgs
///             {
///                 AzureBareMetalStorageInstanceSize = "",
///                 BillingMode = "PAYG",
///             },
///             StorageType = "FC",
///             WorkloadType = "ODB",
///         },
///         Tags =
///         {
///             { "key", "value" },
///         },
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
/// 	baremetalinfrastructure "github.com/pulumi/pulumi-azure-native-sdk/baremetalinfrastructure/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := baremetalinfrastructure.NewAzureBareMetalStorageInstance(ctx, "azureBareMetalStorageInstance", &baremetalinfrastructure.AzureBareMetalStorageInstanceArgs{
/// 			AzureBareMetalStorageInstanceName:             pulumi.String("myAzureBareMetalStorageInstance"),
/// 			AzureBareMetalStorageInstanceUniqueIdentifier: pulumi.String("23415635-4d7e-41dc-9598-8194f22c24e9"),
/// 			Location:          pulumi.String("westus2"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProperties: &baremetalinfrastructure.StoragePropertiesArgs{
/// 				Generation:   pulumi.String("Gen4"),
/// 				HardwareType: pulumi.String("NetApp"),
/// 				OfferingType: pulumi.String("EPIC"),
/// 				StorageBillingProperties: &baremetalinfrastructure.StorageBillingPropertiesArgs{
/// 					AzureBareMetalStorageInstanceSize: pulumi.String(""),
/// 					BillingMode:                       pulumi.String("PAYG"),
/// 				},
/// 				StorageType:  pulumi.String("FC"),
/// 				WorkloadType: pulumi.String("ODB"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
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
/// import com.pulumi.azurenative.baremetalinfrastructure.AzureBareMetalStorageInstance;
/// import com.pulumi.azurenative.baremetalinfrastructure.AzureBareMetalStorageInstanceArgs;
/// import com.pulumi.azurenative.baremetalinfrastructure.inputs.StoragePropertiesArgs;
/// import com.pulumi.azurenative.baremetalinfrastructure.inputs.StorageBillingPropertiesArgs;
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
///         var azureBareMetalStorageInstance = new AzureBareMetalStorageInstance("azureBareMetalStorageInstance", AzureBareMetalStorageInstanceArgs.builder()
///             .azureBareMetalStorageInstanceName("myAzureBareMetalStorageInstance")
///             .azureBareMetalStorageInstanceUniqueIdentifier("23415635-4d7e-41dc-9598-8194f22c24e9")
///             .location("westus2")
///             .resourceGroupName("myResourceGroup")
///             .storageProperties(StoragePropertiesArgs.builder()
///                 .generation("Gen4")
///                 .hardwareType("NetApp")
///                 .offeringType("EPIC")
///                 .storageBillingProperties(StorageBillingPropertiesArgs.builder()
///                     .azureBareMetalStorageInstanceSize("")
///                     .billingMode("PAYG")
///                     .build())
///                 .storageType("FC")
///                 .workloadType("ODB")
///                 .build())
///             .tags(Map.of("key", "value"))
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
/// const azureBareMetalStorageInstance = new azure_native.baremetalinfrastructure.AzureBareMetalStorageInstance("azureBareMetalStorageInstance", {
///     azureBareMetalStorageInstanceName: "myAzureBareMetalStorageInstance",
///     azureBareMetalStorageInstanceUniqueIdentifier: "23415635-4d7e-41dc-9598-8194f22c24e9",
///     location: "westus2",
///     resourceGroupName: "myResourceGroup",
///     storageProperties: {
///         generation: "Gen4",
///         hardwareType: "NetApp",
///         offeringType: "EPIC",
///         storageBillingProperties: {
///             azureBareMetalStorageInstanceSize: "",
///             billingMode: "PAYG",
///         },
///         storageType: "FC",
///         workloadType: "ODB",
///     },
///     tags: {
///         key: "value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_bare_metal_storage_instance = azure_native.baremetalinfrastructure.AzureBareMetalStorageInstance("azureBareMetalStorageInstance",
///     azure_bare_metal_storage_instance_name="myAzureBareMetalStorageInstance",
///     azure_bare_metal_storage_instance_unique_identifier="23415635-4d7e-41dc-9598-8194f22c24e9",
///     location="westus2",
///     resource_group_name="myResourceGroup",
///     storage_properties={
///         "generation": "Gen4",
///         "hardware_type": "NetApp",
///         "offering_type": "EPIC",
///         "storage_billing_properties": {
///             "azure_bare_metal_storage_instance_size": "",
///             "billing_mode": "PAYG",
///         },
///         "storage_type": "FC",
///         "workload_type": "ODB",
///     },
///     tags={
///         "key": "value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   azureBareMetalStorageInstance:
///     type: azure-native:baremetalinfrastructure:AzureBareMetalStorageInstance
///     properties:
///       azureBareMetalStorageInstanceName: myAzureBareMetalStorageInstance
///       azureBareMetalStorageInstanceUniqueIdentifier: 23415635-4d7e-41dc-9598-8194f22c24e9
///       location: westus2
///       resourceGroupName: myResourceGroup
///       storageProperties:
///         generation: Gen4
///         hardwareType: NetApp
///         offeringType: EPIC
///         storageBillingProperties:
///           azureBareMetalStorageInstanceSize: ""
///           billingMode: PAYG
///         storageType: FC
///         workloadType: ODB
///       tags:
///         key: value
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
/// $ pulumi import azure-native:baremetalinfrastructure:AzureBareMetalStorageInstance myAzureBareMetalStorageInstance /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BareMetalInfrastructure/bareMetalStorageInstances/{azureBareMetalStorageInstanceName}
/// ```
class AzureBareMetalStorageInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies the AzureBareMetaStorageInstance unique ID.
  late final pulumi.Output<String?> azureBareMetalStorageInstanceUniqueIdentifier;
  /// The identity of Azure Bare Metal Storage Instance, if configured.
  late final pulumi.Output<AzureBareMetalStorageInstanceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specifies the storage properties for the AzureBareMetalStorage instance.
  late final pulumi.Output<StoragePropertiesResponse?> storageProperties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AzureBareMetalStorageInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureBareMetalStorageInstance]. {@macro pulumi_baremetalinfrastructure_azure_bare_metal_storage_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureBareMetalStorageInstance(
    String name, {
    AzureBareMetalStorageInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:baremetalinfrastructure:AzureBareMetalStorageInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureBareMetalStorageInstanceUniqueIdentifier = registerOutput<String?>('azureBareMetalStorageInstanceUniqueIdentifier');
    identity = registerOutput<AzureBareMetalStorageInstanceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureBareMetalStorageInstanceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    storageProperties = registerOutput<StoragePropertiesResponse?>('storageProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StoragePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
