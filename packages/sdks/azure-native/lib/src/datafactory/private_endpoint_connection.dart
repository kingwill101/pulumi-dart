import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'remote_private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Private Endpoint Connection ARM resource.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Approves or rejects a private endpoint connection for a factory.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.DataFactory.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         FactoryName = "exampleFactoryName",
///         PrivateEndpointConnectionName = "connection",
///         Properties = new AzureNative.DataFactory.Inputs.PrivateLinkConnectionApprovalRequestArgs
///         {
///             PrivateEndpoint = new AzureNative.DataFactory.Inputs.PrivateEndpointArgs
///             {
///                 Id = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/exampleResourceGroup/providers/Microsoft.DataFactory/factories/exampleFactoryName/privateEndpoints/myPrivateEndpoint",
///             },
///             PrivateLinkServiceConnectionState = new AzureNative.DataFactory.Inputs.PrivateLinkConnectionStateArgs
///             {
///                 ActionsRequired = "",
///                 Description = "Approved by admin.",
///                 Status = "Approved",
///             },
///         },
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &datafactory.PrivateEndpointConnectionArgs{
/// 			FactoryName:                   pulumi.String("exampleFactoryName"),
/// 			PrivateEndpointConnectionName: pulumi.String("connection"),
/// 			Properties: &datafactory.PrivateLinkConnectionApprovalRequestArgs{
/// 				PrivateEndpoint: &datafactory.PrivateEndpointArgs{
/// 					Id: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/exampleResourceGroup/providers/Microsoft.DataFactory/factories/exampleFactoryName/privateEndpoints/myPrivateEndpoint"),
/// 				},
/// 				PrivateLinkServiceConnectionState: &datafactory.PrivateLinkConnectionStateArgs{
/// 					ActionsRequired: pulumi.String(""),
/// 					Description:     pulumi.String("Approved by admin."),
/// 					Status:          pulumi.String("Approved"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// resource "azure-native_datafactory_privateendpointconnection" "privateEndpointConnection" {
///   factory_name                     = "exampleFactoryName"
///   private_endpoint_connection_name = "connection"
///   properties = {
///     private_endpoint = {
///       id = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/exampleResourceGroup/providers/Microsoft.DataFactory/factories/exampleFactoryName/privateEndpoints/myPrivateEndpoint"
///     }
///     private_link_service_connection_state = {
///       actions_required = ""
///       description      = "Approved by admin."
///       status           = "Approved"
///     }
///   }
///   resource_group_name = "exampleResourceGroup"
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
/// import com.pulumi.azurenative.datafactory.PrivateEndpointConnection;
/// import com.pulumi.azurenative.datafactory.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PrivateLinkConnectionApprovalRequestArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PrivateEndpointArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PrivateLinkConnectionStateArgs;
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
///         var privateEndpointConnection = new PrivateEndpointConnection("privateEndpointConnection", PrivateEndpointConnectionArgs.builder()
///             .factoryName("exampleFactoryName")
///             .privateEndpointConnectionName("connection")
///             .properties(PrivateLinkConnectionApprovalRequestArgs.builder()
///                 .privateEndpoint(PrivateEndpointArgs.builder()
///                     .id("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/exampleResourceGroup/providers/Microsoft.DataFactory/factories/exampleFactoryName/privateEndpoints/myPrivateEndpoint")
///                     .build())
///                 .privateLinkServiceConnectionState(PrivateLinkConnectionStateArgs.builder()
///                     .actionsRequired("")
///                     .description("Approved by admin.")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
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
/// const privateEndpointConnection = new azure_native.datafactory.PrivateEndpointConnection("privateEndpointConnection", {
///     factoryName: "exampleFactoryName",
///     privateEndpointConnectionName: "connection",
///     properties: {
///         privateEndpoint: {
///             id: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/exampleResourceGroup/providers/Microsoft.DataFactory/factories/exampleFactoryName/privateEndpoints/myPrivateEndpoint",
///         },
///         privateLinkServiceConnectionState: {
///             actionsRequired: "",
///             description: "Approved by admin.",
///             status: "Approved",
///         },
///     },
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.datafactory.PrivateEndpointConnection("privateEndpointConnection",
///     factory_name="exampleFactoryName",
///     private_endpoint_connection_name="connection",
///     properties={
///         "private_endpoint": {
///             "id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/exampleResourceGroup/providers/Microsoft.DataFactory/factories/exampleFactoryName/privateEndpoints/myPrivateEndpoint",
///         },
///         "private_link_service_connection_state": {
///             "actions_required": "",
///             "description": "Approved by admin.",
///             "status": "Approved",
///         },
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:datafactory:PrivateEndpointConnection
///     properties:
///       factoryName: exampleFactoryName
///       privateEndpointConnectionName: connection
///       properties:
///         privateEndpoint:
///           id: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/exampleResourceGroup/providers/Microsoft.DataFactory/factories/exampleFactoryName/privateEndpoints/myPrivateEndpoint
///         privateLinkServiceConnectionState:
///           actionsRequired: ""
///           description: Approved by admin.
///           status: Approved
///       resourceGroupName: exampleResourceGroup
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
/// $ pulumi import azure-native:datafactory:PrivateEndpointConnection exampleFactoryName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  late final pulumi.Output<String> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Core resource properties
  late final pulumi.Output<RemotePrivateEndpointConnectionResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_datafactory_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datafactory:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RemotePrivateEndpointConnectionResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemotePrivateEndpointConnectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PrivateEndpointConnection] resource.
  PrivateEndpointConnection.reference(String urn)
    : super(
        'azure-native:datafactory:PrivateEndpointConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RemotePrivateEndpointConnectionResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemotePrivateEndpointConnectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
