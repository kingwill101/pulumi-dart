import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_dps_properties_description_response.dart';
import 'iot_dps_resource_args.dart';
import 'iot_dps_sku_info_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// The description of the provisioning service.
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// Other available API versions: 2017-08-21-preview, 2017-11-15, 2018-01-22, 2020-01-01, 2020-03-01, 2020-09-01-preview, 2021-10-15, 2022-02-05, 2022-12-12, 2025-02-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceprovisioningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DPSCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iotDpsResource = new AzureNative.DeviceProvisioningServices.IotDpsResource("iotDpsResource", new()
///     {
///         Location = "East US",
///         Properties = new AzureNative.DeviceProvisioningServices.Inputs.IotDpsPropertiesDescriptionArgs
///         {
///             EnableDataResidency = false,
///         },
///         ProvisioningServiceName = "myFirstProvisioningService",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.DeviceProvisioningServices.Inputs.IotDpsSkuInfoArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.DeviceProvisioningServices.IotDpsSku.S1,
///         },
///         Tags = null,
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
/// 	deviceprovisioningservices "github.com/pulumi/pulumi-azure-native-sdk/deviceprovisioningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceprovisioningservices.NewIotDpsResource(ctx, "iotDpsResource", &deviceprovisioningservices.IotDpsResourceArgs{
/// 			Location: pulumi.String("East US"),
/// 			Properties: &deviceprovisioningservices.IotDpsPropertiesDescriptionArgs{
/// 				EnableDataResidency: pulumi.Bool(false),
/// 			},
/// 			ProvisioningServiceName: pulumi.String("myFirstProvisioningService"),
/// 			ResourceGroupName:       pulumi.String("myResourceGroup"),
/// 			Sku: &deviceprovisioningservices.IotDpsSkuInfoArgs{
/// 				Capacity: pulumi.Float64(1),
/// 				Name:     pulumi.String(deviceprovisioningservices.IotDpsSkuS1),
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// resource "azure-native_deviceprovisioningservices_iotdpsresource" "iotDpsResource" {
///   location = "East US"
///   properties = {
///     enable_data_residency = false
///   }
///   provisioning_service_name = "myFirstProvisioningService"
///   resource_group_name       = "myResourceGroup"
///   sku = {
///     capacity = 1
///     name     = "S1"
///   }
///   tags = {}
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
/// import com.pulumi.azurenative.deviceprovisioningservices.IotDpsResource;
/// import com.pulumi.azurenative.deviceprovisioningservices.IotDpsResourceArgs;
/// import com.pulumi.azurenative.deviceprovisioningservices.inputs.IotDpsPropertiesDescriptionArgs;
/// import com.pulumi.azurenative.deviceprovisioningservices.inputs.IotDpsSkuInfoArgs;
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
///         var iotDpsResource = new IotDpsResource("iotDpsResource", IotDpsResourceArgs.builder()
///             .location("East US")
///             .properties(IotDpsPropertiesDescriptionArgs.builder()
///                 .enableDataResidency(false)
///                 .build())
///             .provisioningServiceName("myFirstProvisioningService")
///             .resourceGroupName("myResourceGroup")
///             .sku(IotDpsSkuInfoArgs.builder()
///                 .capacity(1.0)
///                 .name("S1")
///                 .build())
///             .tags(Map.ofEntries(
///             ))
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
/// const iotDpsResource = new azure_native.deviceprovisioningservices.IotDpsResource("iotDpsResource", {
///     location: "East US",
///     properties: {
///         enableDataResidency: false,
///     },
///     provisioningServiceName: "myFirstProvisioningService",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 1,
///         name: azure_native.deviceprovisioningservices.IotDpsSku.S1,
///     },
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iot_dps_resource = azure_native.deviceprovisioningservices.IotDpsResource("iotDpsResource",
///     location="East US",
///     properties={
///         "enable_data_residency": False,
///     },
///     provisioning_service_name="myFirstProvisioningService",
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": float(1),
///         "name": azure_native.deviceprovisioningservices.IotDpsSku.S1,
///     },
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   iotDpsResource:
///     type: azure-native:deviceprovisioningservices:IotDpsResource
///     properties:
///       location: East US
///       properties:
///         enableDataResidency: false
///       provisioningServiceName: myFirstProvisioningService
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 1
///         name: S1
///       tags: {}
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
/// $ pulumi import azure-native:deviceprovisioningservices:IotDpsResource myFirstProvisioningService /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/provisioningServices/{provisioningServiceName}
/// ```
class IotDpsResource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.
  late final pulumi.Output<String?> etag;
  /// The managed identities for a provisioning service.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The resource location.
  late final pulumi.Output<String> location;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// Service specific properties for a provisioning service
  late final pulumi.Output<IotDpsPropertiesDescriptionResponse> properties;
  /// The resource group of the resource.
  late final pulumi.Output<String?> resourcegroup;
  /// Sku info for a provisioning Service.
  late final pulumi.Output<IotDpsSkuInfoResponse> sku;
  /// The subscription id of the resource.
  late final pulumi.Output<String?> subscriptionid;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IotDpsResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotDpsResource]. {@macro pulumi_deviceprovisioningservices_iot_dps_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotDpsResource(
    String name, {
    IotDpsResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceprovisioningservices:IotDpsResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IotDpsPropertiesDescriptionResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IotDpsPropertiesDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourcegroup = registerOutput<String?>('resourcegroup');
    sku = registerOutput<IotDpsSkuInfoResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IotDpsSkuInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subscriptionid = registerOutput<String?>('subscriptionid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
