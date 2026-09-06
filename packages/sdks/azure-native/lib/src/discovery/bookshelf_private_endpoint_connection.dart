import 'package:pulumi/pulumi.dart' as pulumi;
import 'bookshelf_private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// The Private Endpoint Connection resource for Bookshelf.
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BookshelfPrivateEndpointConnections_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bookshelfPrivateEndpointConnection = new AzureNative.Discovery.BookshelfPrivateEndpointConnection("bookshelfPrivateEndpointConnection", new()
///     {
///         BookshelfName = "a65f3c23bf2baa5bd4",
///         PrivateEndpointConnectionName = "connection",
///         Properties = new AzureNative.Discovery.Inputs.PrivateEndpointConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.Discovery.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 ActionsRequired = "vgqhrxvmviabfgmafqtbej",
///                 Description = "lknyprq",
///                 Status = AzureNative.Discovery.PrivateEndpointServiceConnectionStatus.Pending,
///             },
///         },
///         ResourceGroupName = "rgdiscovery",
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
/// 	discovery "github.com/pulumi/pulumi-azure-native-sdk/discovery/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discovery.NewBookshelfPrivateEndpointConnection(ctx, "bookshelfPrivateEndpointConnection", &discovery.BookshelfPrivateEndpointConnectionArgs{
/// 			BookshelfName:                 pulumi.String("a65f3c23bf2baa5bd4"),
/// 			PrivateEndpointConnectionName: pulumi.String("connection"),
/// 			Properties: &discovery.PrivateEndpointConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &discovery.PrivateLinkServiceConnectionStateArgs{
/// 					ActionsRequired: pulumi.String("vgqhrxvmviabfgmafqtbej"),
/// 					Description:     pulumi.String("lknyprq"),
/// 					Status:          pulumi.String(discovery.PrivateEndpointServiceConnectionStatusPending),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdiscovery"),
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
/// resource "azure-native_discovery_bookshelfprivateendpointconnection" "bookshelfPrivateEndpointConnection" {
///   bookshelf_name                   = "a65f3c23bf2baa5bd4"
///   private_endpoint_connection_name = "connection"
///   properties = {
///     private_link_service_connection_state = {
///       actions_required = "vgqhrxvmviabfgmafqtbej"
///       description      = "lknyprq"
///       status           = "Pending"
///     }
///   }
///   resource_group_name = "rgdiscovery"
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
/// import com.pulumi.azurenative.discovery.BookshelfPrivateEndpointConnection;
/// import com.pulumi.azurenative.discovery.BookshelfPrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.discovery.inputs.PrivateEndpointConnectionPropertiesArgs;
/// import com.pulumi.azurenative.discovery.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var bookshelfPrivateEndpointConnection = new BookshelfPrivateEndpointConnection("bookshelfPrivateEndpointConnection", BookshelfPrivateEndpointConnectionArgs.builder()
///             .bookshelfName("a65f3c23bf2baa5bd4")
///             .privateEndpointConnectionName("connection")
///             .properties(PrivateEndpointConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .actionsRequired("vgqhrxvmviabfgmafqtbej")
///                     .description("lknyprq")
///                     .status("Pending")
///                     .build())
///                 .build())
///             .resourceGroupName("rgdiscovery")
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
/// const bookshelfPrivateEndpointConnection = new azure_native.discovery.BookshelfPrivateEndpointConnection("bookshelfPrivateEndpointConnection", {
///     bookshelfName: "a65f3c23bf2baa5bd4",
///     privateEndpointConnectionName: "connection",
///     properties: {
///         privateLinkServiceConnectionState: {
///             actionsRequired: "vgqhrxvmviabfgmafqtbej",
///             description: "lknyprq",
///             status: azure_native.discovery.PrivateEndpointServiceConnectionStatus.Pending,
///         },
///     },
///     resourceGroupName: "rgdiscovery",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// bookshelf_private_endpoint_connection = azure_native.discovery.BookshelfPrivateEndpointConnection("bookshelfPrivateEndpointConnection",
///     bookshelf_name="a65f3c23bf2baa5bd4",
///     private_endpoint_connection_name="connection",
///     properties={
///         "private_link_service_connection_state": {
///             "actions_required": "vgqhrxvmviabfgmafqtbej",
///             "description": "lknyprq",
///             "status": azure_native.discovery.PrivateEndpointServiceConnectionStatus.PENDING,
///         },
///     },
///     resource_group_name="rgdiscovery")
///
/// ```
///
/// ```yaml
/// resources:
///   bookshelfPrivateEndpointConnection:
///     type: azure-native:discovery:BookshelfPrivateEndpointConnection
///     properties:
///       bookshelfName: a65f3c23bf2baa5bd4
///       privateEndpointConnectionName: connection
///       properties:
///         privateLinkServiceConnectionState:
///           actionsRequired: vgqhrxvmviabfgmafqtbej
///           description: lknyprq
///           status: Pending
///       resourceGroupName: rgdiscovery
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
/// $ pulumi import azure-native:discovery:BookshelfPrivateEndpointConnection connection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Discovery/bookshelves/{bookshelfName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class BookshelfPrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BookshelfPrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BookshelfPrivateEndpointConnection]. {@macro pulumi_discovery_bookshelf_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BookshelfPrivateEndpointConnection(
    String name, {
    BookshelfPrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:discovery:BookshelfPrivateEndpointConnection',
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

  /// Creates a typed reference to an existing [BookshelfPrivateEndpointConnection] resource.
  BookshelfPrivateEndpointConnection.reference(String urn)
    : super(
        'azure-native:discovery:BookshelfPrivateEndpointConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
