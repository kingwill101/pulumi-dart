import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The private endpoint connection resource.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native fileshares [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnections_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.FileShares.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "privateEndpointConnection1",
///         PrivateLinkServiceConnectionState = new AzureNative.FileShares.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Approved by admin",
///             Status = AzureNative.FileShares.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "rgfileshares",
///         ResourceName = "fileshare",
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
/// 	fileshares "github.com/pulumi/pulumi-azure-native-sdk/fileshares/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fileshares.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &fileshares.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("privateEndpointConnection1"),
/// 			PrivateLinkServiceConnectionState: &fileshares.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Approved by admin"),
/// 				Status:      pulumi.String(fileshares.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgfileshares"),
/// 			ResourceName:      pulumi.String("fileshare"),
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
/// resource "azure-native_fileshares_privateendpointconnection" "privateEndpointConnection" {
///   private_endpoint_connection_name = "privateEndpointConnection1"
///   private_link_service_connection_state = {
///     description = "Approved by admin"
///     status      = "Approved"
///   }
///   resource_group_name = "rgfileshares"
///   resource_name       = "fileshare"
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
/// import com.pulumi.azurenative.fileshares.PrivateEndpointConnection;
/// import com.pulumi.azurenative.fileshares.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.fileshares.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .privateEndpointConnectionName("privateEndpointConnection1")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Approved by admin")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("rgfileshares")
///             .resourceName("fileshare")
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
/// const privateEndpointConnection = new azure_native.fileshares.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "privateEndpointConnection1",
///     privateLinkServiceConnectionState: {
///         description: "Approved by admin",
///         status: azure_native.fileshares.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "rgfileshares",
///     resourceName: "fileshare",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.fileshares.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="privateEndpointConnection1",
///     private_link_service_connection_state={
///         "description": "Approved by admin",
///         "status": azure_native.fileshares.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="rgfileshares",
///     resource_name_="fileshare")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:fileshares:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: privateEndpointConnection1
///       privateLinkServiceConnectionState:
///         description: Approved by admin
///         status: Approved
///       resourceGroupName: rgfileshares
///       resourceName: fileshare
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
/// $ pulumi import azure-native:fileshares:PrivateEndpointConnection privateEndpointConnection1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.FileShares/fileShares/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The group ids for the private endpoint resource.
  late final pulumi.Output<List<String>> groupIds;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The private endpoint resource.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_fileshares_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:fileshares:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PrivateEndpointConnection] resource.
  PrivateEndpointConnection.reference(String urn)
    : super(
        'azure-native:fileshares:PrivateEndpointConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
