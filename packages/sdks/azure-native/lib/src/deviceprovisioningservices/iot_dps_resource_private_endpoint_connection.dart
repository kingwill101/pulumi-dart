import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_dps_resource_private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// The private endpoint connection of a provisioning service
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// Other available API versions: 2020-03-01, 2020-09-01-preview, 2021-10-15, 2022-02-05, 2022-12-12, 2025-02-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceprovisioningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnection_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iotDpsResourcePrivateEndpointConnection = new AzureNative.DeviceProvisioningServices.IotDpsResourcePrivateEndpointConnection("iotDpsResourcePrivateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "myPrivateEndpointConnection",
///         Properties = new AzureNative.DeviceProvisioningServices.Inputs.PrivateEndpointConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.DeviceProvisioningServices.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 Description = "Approved by johndoe@contoso.com",
///                 Status = AzureNative.DeviceProvisioningServices.PrivateLinkServiceConnectionStatus.Approved,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "myFirstProvisioningService",
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
/// 		_, err := deviceprovisioningservices.NewIotDpsResourcePrivateEndpointConnection(ctx, "iotDpsResourcePrivateEndpointConnection", &deviceprovisioningservices.IotDpsResourcePrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("myPrivateEndpointConnection"),
/// 			Properties: &deviceprovisioningservices.PrivateEndpointConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &deviceprovisioningservices.PrivateLinkServiceConnectionStateArgs{
/// 					Description: pulumi.String("Approved by johndoe@contoso.com"),
/// 					Status:      pulumi.String(deviceprovisioningservices.PrivateLinkServiceConnectionStatusApproved),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("myFirstProvisioningService"),
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
/// resource "azure-native_deviceprovisioningservices_iotdpsresourceprivateendpointconnection" "iotDpsResourcePrivateEndpointConnection" {
///   private_endpoint_connection_name = "myPrivateEndpointConnection"
///   properties = {
///     private_link_service_connection_state = {
///       description = "Approved by johndoe@contoso.com"
///       status      = "Approved"
///     }
///   }
///   resource_group_name = "myResourceGroup"
///   resource_name       = "myFirstProvisioningService"
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
/// import com.pulumi.azurenative.deviceprovisioningservices.IotDpsResourcePrivateEndpointConnection;
/// import com.pulumi.azurenative.deviceprovisioningservices.IotDpsResourcePrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.deviceprovisioningservices.inputs.PrivateEndpointConnectionPropertiesArgs;
/// import com.pulumi.azurenative.deviceprovisioningservices.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var iotDpsResourcePrivateEndpointConnection = new IotDpsResourcePrivateEndpointConnection("iotDpsResourcePrivateEndpointConnection", IotDpsResourcePrivateEndpointConnectionArgs.builder()
///             .privateEndpointConnectionName("myPrivateEndpointConnection")
///             .properties(PrivateEndpointConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .description("Approved by johndoe@contoso.com")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .resourceName("myFirstProvisioningService")
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
/// const iotDpsResourcePrivateEndpointConnection = new azure_native.deviceprovisioningservices.IotDpsResourcePrivateEndpointConnection("iotDpsResourcePrivateEndpointConnection", {
///     privateEndpointConnectionName: "myPrivateEndpointConnection",
///     properties: {
///         privateLinkServiceConnectionState: {
///             description: "Approved by johndoe@contoso.com",
///             status: azure_native.deviceprovisioningservices.PrivateLinkServiceConnectionStatus.Approved,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     resourceName: "myFirstProvisioningService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iot_dps_resource_private_endpoint_connection = azure_native.deviceprovisioningservices.IotDpsResourcePrivateEndpointConnection("iotDpsResourcePrivateEndpointConnection",
///     private_endpoint_connection_name="myPrivateEndpointConnection",
///     properties={
///         "private_link_service_connection_state": {
///             "description": "Approved by johndoe@contoso.com",
///             "status": azure_native.deviceprovisioningservices.PrivateLinkServiceConnectionStatus.APPROVED,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     resource_name_="myFirstProvisioningService")
///
/// ```
///
/// ```yaml
/// resources:
///   iotDpsResourcePrivateEndpointConnection:
///     type: azure-native:deviceprovisioningservices:IotDpsResourcePrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: myPrivateEndpointConnection
///       properties:
///         privateLinkServiceConnectionState:
///           description: Approved by johndoe@contoso.com
///           status: Approved
///       resourceGroupName: myResourceGroup
///       resourceName: myFirstProvisioningService
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
/// $ pulumi import azure-native:deviceprovisioningservices:IotDpsResourcePrivateEndpointConnection myPrivateEndpointConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/provisioningServices/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class IotDpsResourcePrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The properties of a private endpoint connection
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IotDpsResourcePrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotDpsResourcePrivateEndpointConnection]. {@macro pulumi_deviceprovisioningservices_iot_dps_resource_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotDpsResourcePrivateEndpointConnection(
    String name, {
    IotDpsResourcePrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceprovisioningservices:IotDpsResourcePrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
