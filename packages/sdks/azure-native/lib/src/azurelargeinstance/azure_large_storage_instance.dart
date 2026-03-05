import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_large_storage_instance_args.dart';
import 'managed_service_identity_response.dart';
import 'storage_properties_response.dart';
import 'system_data_response.dart';

/// AzureLargeStorageInstance info on Azure (ARM properties and
/// AzureLargeStorageInstance properties)
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-08-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AzureLargeStorageInstance_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureLargeStorageInstance = new AzureNative.AzureLargeInstance.AzureLargeStorageInstance("azureLargeStorageInstance", new()
///     {
///         AzureLargeStorageInstanceName = "myAzureLargeStorageInstance",
///         AzureLargeStorageInstanceUniqueIdentifier = "23415635-4d7e-41dc-9598-8194f22c24e9",
///         Location = "westus2",
///         ResourceGroupName = "myResourceGroup",
///         StorageProperties = new AzureNative.AzureLargeInstance.Inputs.StoragePropertiesArgs
///         {
///             Generation = "Gen4",
///             HardwareType = "NetApp",
///             OfferingType = "EPIC",
///             StorageBillingProperties = new AzureNative.AzureLargeInstance.Inputs.StorageBillingPropertiesArgs
///             {
///                 BillingMode = "PAYG",
///                 Sku = "",
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
/// 	azurelargeinstance "github.com/pulumi/pulumi-azure-native-sdk/azurelargeinstance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurelargeinstance.NewAzureLargeStorageInstance(ctx, "azureLargeStorageInstance", &azurelargeinstance.AzureLargeStorageInstanceArgs{
/// 			AzureLargeStorageInstanceName:             pulumi.String("myAzureLargeStorageInstance"),
/// 			AzureLargeStorageInstanceUniqueIdentifier: pulumi.String("23415635-4d7e-41dc-9598-8194f22c24e9"),
/// 			Location:          pulumi.String("westus2"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProperties: &azurelargeinstance.StoragePropertiesArgs{
/// 				Generation:   pulumi.String("Gen4"),
/// 				HardwareType: pulumi.String("NetApp"),
/// 				OfferingType: pulumi.String("EPIC"),
/// 				StorageBillingProperties: &azurelargeinstance.StorageBillingPropertiesArgs{
/// 					BillingMode: pulumi.String("PAYG"),
/// 					Sku:         pulumi.String(""),
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
/// import com.pulumi.azurenative.azurelargeinstance.AzureLargeStorageInstance;
/// import com.pulumi.azurenative.azurelargeinstance.AzureLargeStorageInstanceArgs;
/// import com.pulumi.azurenative.azurelargeinstance.inputs.StoragePropertiesArgs;
/// import com.pulumi.azurenative.azurelargeinstance.inputs.StorageBillingPropertiesArgs;
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
///         var azureLargeStorageInstance = new AzureLargeStorageInstance("azureLargeStorageInstance", AzureLargeStorageInstanceArgs.builder()
///             .azureLargeStorageInstanceName("myAzureLargeStorageInstance")
///             .azureLargeStorageInstanceUniqueIdentifier("23415635-4d7e-41dc-9598-8194f22c24e9")
///             .location("westus2")
///             .resourceGroupName("myResourceGroup")
///             .storageProperties(StoragePropertiesArgs.builder()
///                 .generation("Gen4")
///                 .hardwareType("NetApp")
///                 .offeringType("EPIC")
///                 .storageBillingProperties(StorageBillingPropertiesArgs.builder()
///                     .billingMode("PAYG")
///                     .sku("")
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
/// const azureLargeStorageInstance = new azure_native.azurelargeinstance.AzureLargeStorageInstance("azureLargeStorageInstance", {
///     azureLargeStorageInstanceName: "myAzureLargeStorageInstance",
///     azureLargeStorageInstanceUniqueIdentifier: "23415635-4d7e-41dc-9598-8194f22c24e9",
///     location: "westus2",
///     resourceGroupName: "myResourceGroup",
///     storageProperties: {
///         generation: "Gen4",
///         hardwareType: "NetApp",
///         offeringType: "EPIC",
///         storageBillingProperties: {
///             billingMode: "PAYG",
///             sku: "",
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
/// azure_large_storage_instance = azure_native.azurelargeinstance.AzureLargeStorageInstance("azureLargeStorageInstance",
///     azure_large_storage_instance_name="myAzureLargeStorageInstance",
///     azure_large_storage_instance_unique_identifier="23415635-4d7e-41dc-9598-8194f22c24e9",
///     location="westus2",
///     resource_group_name="myResourceGroup",
///     storage_properties={
///         "generation": "Gen4",
///         "hardware_type": "NetApp",
///         "offering_type": "EPIC",
///         "storage_billing_properties": {
///             "billing_mode": "PAYG",
///             "sku": "",
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
///   azureLargeStorageInstance:
///     type: azure-native:azurelargeinstance:AzureLargeStorageInstance
///     properties:
///       azureLargeStorageInstanceName: myAzureLargeStorageInstance
///       azureLargeStorageInstanceUniqueIdentifier: 23415635-4d7e-41dc-9598-8194f22c24e9
///       location: westus2
///       resourceGroupName: myResourceGroup
///       storageProperties:
///         generation: Gen4
///         hardwareType: NetApp
///         offeringType: EPIC
///         storageBillingProperties:
///           billingMode: PAYG
///           sku: ""
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
/// $ pulumi import azure-native:azurelargeinstance:AzureLargeStorageInstance myAzureLargeStorageInstance /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureLargeInstance/azureLargeStorageInstances/{azureLargeStorageInstanceName}
/// ```
class AzureLargeStorageInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Specifies the AzureLargeStorageInstance unique ID.
  late final pulumi.Output<String?> azureLargeStorageInstanceUniqueIdentifier;

  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Specifies the storage properties for the AzureLargeStorage instance.
  late final pulumi.Output<StoragePropertiesResponse?> storageProperties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AzureLargeStorageInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureLargeStorageInstance]. {@macro pulumi_azurelargeinstance_azure_large_storage_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureLargeStorageInstance(
    String name, {
    AzureLargeStorageInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azurelargeinstance:AzureLargeStorageInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureLargeStorageInstanceUniqueIdentifier = registerOutput<String?>(
      'azureLargeStorageInstanceUniqueIdentifier',
    );
    identity = registerOutput<ManagedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    storageProperties = registerOutput<StoragePropertiesResponse?>(
      'storageProperties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StoragePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
