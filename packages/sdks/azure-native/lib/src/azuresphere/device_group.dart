import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_group_args.dart';
import 'system_data_response.dart';

/// An device group resource belonging to a product resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DeviceGroups_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deviceGroup = new AzureNative.AzureSphere.DeviceGroup("deviceGroup", new()
///     {
///         CatalogName = "MyCatalog1",
///         Description = "Description for MyDeviceGroup1",
///         DeviceGroupName = "MyDeviceGroup1",
///         OsFeedType = AzureNative.AzureSphere.OSFeedType.Retail,
///         ProductName = "MyProduct1",
///         ResourceGroupName = "MyResourceGroup1",
///         UpdatePolicy = AzureNative.AzureSphere.UpdatePolicy.UpdateAll,
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
/// 	azuresphere "github.com/pulumi/pulumi-azure-native-sdk/azuresphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuresphere.NewDeviceGroup(ctx, "deviceGroup", &azuresphere.DeviceGroupArgs{
/// 			CatalogName:       pulumi.String("MyCatalog1"),
/// 			Description:       pulumi.String("Description for MyDeviceGroup1"),
/// 			DeviceGroupName:   pulumi.String("MyDeviceGroup1"),
/// 			OsFeedType:        pulumi.String(azuresphere.OSFeedTypeRetail),
/// 			ProductName:       pulumi.String("MyProduct1"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup1"),
/// 			UpdatePolicy:      pulumi.String(azuresphere.UpdatePolicyUpdateAll),
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
/// resource "azure-native_azuresphere_devicegroup" "deviceGroup" {
///   catalog_name        = "MyCatalog1"
///   description         = "Description for MyDeviceGroup1"
///   device_group_name   = "MyDeviceGroup1"
///   os_feed_type        = "Retail"
///   product_name        = "MyProduct1"
///   resource_group_name = "MyResourceGroup1"
///   update_policy       = "UpdateAll"
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
/// import com.pulumi.azurenative.azuresphere.DeviceGroup;
/// import com.pulumi.azurenative.azuresphere.DeviceGroupArgs;
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
///         var deviceGroup = new DeviceGroup("deviceGroup", DeviceGroupArgs.builder()
///             .catalogName("MyCatalog1")
///             .description("Description for MyDeviceGroup1")
///             .deviceGroupName("MyDeviceGroup1")
///             .osFeedType("Retail")
///             .productName("MyProduct1")
///             .resourceGroupName("MyResourceGroup1")
///             .updatePolicy("UpdateAll")
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
/// const deviceGroup = new azure_native.azuresphere.DeviceGroup("deviceGroup", {
///     catalogName: "MyCatalog1",
///     description: "Description for MyDeviceGroup1",
///     deviceGroupName: "MyDeviceGroup1",
///     osFeedType: azure_native.azuresphere.OSFeedType.Retail,
///     productName: "MyProduct1",
///     resourceGroupName: "MyResourceGroup1",
///     updatePolicy: azure_native.azuresphere.UpdatePolicy.UpdateAll,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// device_group = azure_native.azuresphere.DeviceGroup("deviceGroup",
///     catalog_name="MyCatalog1",
///     description="Description for MyDeviceGroup1",
///     device_group_name="MyDeviceGroup1",
///     os_feed_type=azure_native.azuresphere.OSFeedType.RETAIL,
///     product_name="MyProduct1",
///     resource_group_name="MyResourceGroup1",
///     update_policy=azure_native.azuresphere.UpdatePolicy.UPDATE_ALL)
///
/// ```
///
/// ```yaml
/// resources:
///   deviceGroup:
///     type: azure-native:azuresphere:DeviceGroup
///     properties:
///       catalogName: MyCatalog1
///       description: Description for MyDeviceGroup1
///       deviceGroupName: MyDeviceGroup1
///       osFeedType: Retail
///       productName: MyProduct1
///       resourceGroupName: MyResourceGroup1
///       updatePolicy: UpdateAll
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
/// $ pulumi import azure-native:azuresphere:DeviceGroup MyDeviceId1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureSphere/catalogs/{catalogName}/products/{productName}/deviceGroups/{deviceGroupName}
/// ```
class DeviceGroup extends pulumi.CustomResource {
  /// Flag to define if the user allows for crash dump collection.
  late final pulumi.Output<String?> allowCrashDumpsCollection;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Description of the device group.
  late final pulumi.Output<String?> description;
  /// Deployment status for the device group.
  late final pulumi.Output<bool> hasDeployment;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Operating system feed type of the device group.
  late final pulumi.Output<String?> osFeedType;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Regional data boundary for the device group.
  late final pulumi.Output<String?> regionalDataBoundary;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Update policy of the device group.
  late final pulumi.Output<String?> updatePolicy;

  /// Creates a new [DeviceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceGroup]. {@macro pulumi_azuresphere_device_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceGroup(
    String name, {
    DeviceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azuresphere:DeviceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowCrashDumpsCollection = registerOutput<String?>('allowCrashDumpsCollection');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    hasDeployment = registerOutput<bool>('hasDeployment');
    this.name = registerOutput<String>('name');
    osFeedType = registerOutput<String?>('osFeedType');
    provisioningState = registerOutput<String>('provisioningState');
    regionalDataBoundary = registerOutput<String?>('regionalDataBoundary');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatePolicy = registerOutput<String?>('updatePolicy');
  }

  /// Creates a typed reference to an existing [DeviceGroup] resource.
  DeviceGroup.reference(String urn)
    : super(
        'azure-native:azuresphere:DeviceGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowCrashDumpsCollection = registerOutput<String?>('allowCrashDumpsCollection');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    hasDeployment = registerOutput<bool>('hasDeployment');
    this.name = registerOutput<String>('name');
    osFeedType = registerOutput<String?>('osFeedType');
    provisioningState = registerOutput<String>('provisioningState');
    regionalDataBoundary = registerOutput<String?>('regionalDataBoundary');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatePolicy = registerOutput<String?>('updatePolicy');
  }
}
