import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_proxy_args.dart';
import 'remote_private_endpoint_response.dart';
import 'system_data_response.dart';

/// Private endpoint connection proxy details.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2023-07-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnectionProxyCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnectionProxy = new AzureNative.DeviceUpdate.PrivateEndpointConnectionProxy("privateEndpointConnectionProxy", new()
///     {
///         AccountName = "contoso",
///         PrivateEndpointConnectionProxyId = "peexample01",
///         RemotePrivateEndpoint = new AzureNative.DeviceUpdate.Inputs.RemotePrivateEndpointArgs
///         {
///             Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}",
///             ImmutableResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}",
///             ImmutableSubscriptionId = "00000000-0000-0000-0000-000000000000",
///             Location = "westus2",
///             ManualPrivateLinkServiceConnections = new[]
///             {
///                 new AzureNative.DeviceUpdate.Inputs.PrivateLinkServiceConnectionArgs
///                 {
///                     GroupIds = new[]
///                     {
///                         "DeviceUpdate",
///                     },
///                     Name = "{privateEndpointConnectionProxyId}",
///                     RequestMessage = "Please approve my connection, thanks.",
///                 },
///             },
///             PrivateLinkServiceProxies = new[]
///             {
///                 new AzureNative.DeviceUpdate.Inputs.PrivateLinkServiceProxyArgs
///                 {
///                     GroupConnectivityInformation = new() { },
///                     Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{privateEndpointConnectionProxyId}/privateLinkServiceProxies/{privateEndpointConnectionProxyId}",
///                 },
///             },
///         },
///         ResourceGroupName = "test-rg",
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
/// 	deviceupdate "github.com/pulumi/pulumi-azure-native-sdk/deviceupdate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceupdate.NewPrivateEndpointConnectionProxy(ctx, "privateEndpointConnectionProxy", &deviceupdate.PrivateEndpointConnectionProxyArgs{
/// 			AccountName:                      pulumi.String("contoso"),
/// 			PrivateEndpointConnectionProxyId: pulumi.String("peexample01"),
/// 			RemotePrivateEndpoint: &deviceupdate.RemotePrivateEndpointArgs{
/// 				Id:                      pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}"),
/// 				ImmutableResourceId:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}"),
/// 				ImmutableSubscriptionId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				Location:                pulumi.String("westus2"),
/// 				ManualPrivateLinkServiceConnections: deviceupdate.PrivateLinkServiceConnectionArray{
/// 					&deviceupdate.PrivateLinkServiceConnectionArgs{
/// 						GroupIds: pulumi.StringArray{
/// 							pulumi.String("DeviceUpdate"),
/// 						},
/// 						Name:           pulumi.String("{privateEndpointConnectionProxyId}"),
/// 						RequestMessage: pulumi.String("Please approve my connection, thanks."),
/// 					},
/// 				},
/// 				PrivateLinkServiceProxies: deviceupdate.PrivateLinkServiceProxyArray{
/// 					&deviceupdate.PrivateLinkServiceProxyArgs{
/// 						GroupConnectivityInformation: deviceupdate.GroupConnectivityInformationArray{},
/// 						Id:                           pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{privateEndpointConnectionProxyId}/privateLinkServiceProxies/{privateEndpointConnectionProxyId}"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// resource "azure-native_deviceupdate_privateendpointconnectionproxy" "privateEndpointConnectionProxy" {
///   account_name                         = "contoso"
///   private_endpoint_connection_proxy_id = "peexample01"
///   remote_private_endpoint = {
///     id                        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}"
///     immutable_resource_id     = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}"
///     immutable_subscription_id = "00000000-0000-0000-0000-000000000000"
///     location                  = "westus2"
///     manual_private_link_service_connections = [{
///       "groupIds"       = ["DeviceUpdate"]
///       "name"           = "{privateEndpointConnectionProxyId}"
///       "requestMessage" = "Please approve my connection, thanks."
///     }]
///     private_link_service_proxies = [{
///       "groupConnectivityInformation" = []
///       "id"                           = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{privateEndpointConnectionProxyId}/privateLinkServiceProxies/{privateEndpointConnectionProxyId}"
///     }]
///   }
///   resource_group_name = "test-rg"
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
/// import com.pulumi.azurenative.deviceupdate.PrivateEndpointConnectionProxy;
/// import com.pulumi.azurenative.deviceupdate.PrivateEndpointConnectionProxyArgs;
/// import com.pulumi.azurenative.deviceupdate.inputs.RemotePrivateEndpointArgs;
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
///         var privateEndpointConnectionProxy = new PrivateEndpointConnectionProxy("privateEndpointConnectionProxy", PrivateEndpointConnectionProxyArgs.builder()
///             .accountName("contoso")
///             .privateEndpointConnectionProxyId("peexample01")
///             .remotePrivateEndpoint(RemotePrivateEndpointArgs.builder()
///                 .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}")
///                 .immutableResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}")
///                 .immutableSubscriptionId("00000000-0000-0000-0000-000000000000")
///                 .location("westus2")
///                 .manualPrivateLinkServiceConnections(PrivateLinkServiceConnectionArgs.builder()
///                     .groupIds("DeviceUpdate")
///                     .name("{privateEndpointConnectionProxyId}")
///                     .requestMessage("Please approve my connection, thanks.")
///                     .build())
///                 .privateLinkServiceProxies(PrivateLinkServiceProxyArgs.builder()
///                     .groupConnectivityInformation()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{privateEndpointConnectionProxyId}/privateLinkServiceProxies/{privateEndpointConnectionProxyId}")
///                     .build())
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const privateEndpointConnectionProxy = new azure_native.deviceupdate.PrivateEndpointConnectionProxy("privateEndpointConnectionProxy", {
///     accountName: "contoso",
///     privateEndpointConnectionProxyId: "peexample01",
///     remotePrivateEndpoint: {
///         id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}",
///         immutableResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}",
///         immutableSubscriptionId: "00000000-0000-0000-0000-000000000000",
///         location: "westus2",
///         manualPrivateLinkServiceConnections: [{
///             groupIds: ["DeviceUpdate"],
///             name: "{privateEndpointConnectionProxyId}",
///             requestMessage: "Please approve my connection, thanks.",
///         }],
///         privateLinkServiceProxies: [{
///             groupConnectivityInformation: [],
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{privateEndpointConnectionProxyId}/privateLinkServiceProxies/{privateEndpointConnectionProxyId}",
///         }],
///     },
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection_proxy = azure_native.deviceupdate.PrivateEndpointConnectionProxy("privateEndpointConnectionProxy",
///     account_name="contoso",
///     private_endpoint_connection_proxy_id="peexample01",
///     remote_private_endpoint={
///         "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}",
///         "immutable_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}",
///         "immutable_subscription_id": "00000000-0000-0000-0000-000000000000",
///         "location": "westus2",
///         "manual_private_link_service_connections": [{
///             "group_ids": ["DeviceUpdate"],
///             "name": "{privateEndpointConnectionProxyId}",
///             "request_message": "Please approve my connection, thanks.",
///         }],
///         "private_link_service_proxies": [{
///             "group_connectivity_information": [],
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{privateEndpointConnectionProxyId}/privateLinkServiceProxies/{privateEndpointConnectionProxyId}",
///         }],
///     },
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnectionProxy:
///     type: azure-native:deviceupdate:PrivateEndpointConnectionProxy
///     properties:
///       accountName: contoso
///       privateEndpointConnectionProxyId: peexample01
///       remotePrivateEndpoint:
///         id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}
///         immutableResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{peName}
///         immutableSubscriptionId: 00000000-0000-0000-0000-000000000000
///         location: westus2
///         manualPrivateLinkServiceConnections:
///           - groupIds:
///               - DeviceUpdate
///             name: '{privateEndpointConnectionProxyId}'
///             requestMessage: Please approve my connection, thanks.
///         privateLinkServiceProxies:
///           - groupConnectivityInformation: []
///             id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/privateEndpoints/{privateEndpointConnectionProxyId}/privateLinkServiceProxies/{privateEndpointConnectionProxyId}
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:deviceupdate:PrivateEndpointConnectionProxy peexample01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceUpdate/accounts/{accountName}/privateEndpointConnectionProxies/{privateEndpointConnectionProxyId}
/// ```
class PrivateEndpointConnectionProxy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// ETag from NRP.
  late final pulumi.Output<String> eTag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the private endpoint connection proxy resource.
  late final pulumi.Output<String> provisioningState;
  /// Remote private endpoint details.
  late final pulumi.Output<RemotePrivateEndpointResponse?> remotePrivateEndpoint;
  /// Operation status.
  late final pulumi.Output<String?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionProxy]. {@macro pulumi_deviceupdate_private_endpoint_connection_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionProxy(
    String name, {
    PrivateEndpointConnectionProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceupdate:PrivateEndpointConnectionProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    remotePrivateEndpoint = registerOutput<RemotePrivateEndpointResponse?>('remotePrivateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemotePrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PrivateEndpointConnectionProxy] resource.
  PrivateEndpointConnectionProxy.reference(String urn)
    : super(
        'azure-native:deviceupdate:PrivateEndpointConnectionProxy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    remotePrivateEndpoint = registerOutput<RemotePrivateEndpointResponse?>('remotePrivateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemotePrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
