import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutPrivateEndpointConnection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.CognitiveServices.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         AccountName = "sto9699",
///         PrivateEndpointConnectionName = "{privateEndpointConnectionName}",
///         Properties = new AzureNative.CognitiveServices.Inputs.PrivateEndpointConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.CognitiveServices.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 Description = "Auto-Approved",
///                 Status = AzureNative.CognitiveServices.PrivateEndpointServiceConnectionStatus.Approved,
///             },
///         },
///         ResourceGroupName = "res7687",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &cognitiveservices.PrivateEndpointConnectionArgs{
/// 			AccountName:                   pulumi.String("sto9699"),
/// 			PrivateEndpointConnectionName: pulumi.String("{privateEndpointConnectionName}"),
/// 			Properties: &cognitiveservices.PrivateEndpointConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &cognitiveservices.PrivateLinkServiceConnectionStateArgs{
/// 					Description: pulumi.String("Auto-Approved"),
/// 					Status:      pulumi.String(cognitiveservices.PrivateEndpointServiceConnectionStatusApproved),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
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
/// resource "azure-native_cognitiveservices_privateendpointconnection" "privateEndpointConnection" {
///   account_name                     = "sto9699"
///   private_endpoint_connection_name = "{privateEndpointConnectionName}"
///   properties = {
///     private_link_service_connection_state = {
///       description = "Auto-Approved"
///       status      = "Approved"
///     }
///   }
///   resource_group_name = "res7687"
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
/// import com.pulumi.azurenative.cognitiveservices.PrivateEndpointConnection;
/// import com.pulumi.azurenative.cognitiveservices.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.PrivateEndpointConnectionPropertiesArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .accountName("sto9699")
///             .privateEndpointConnectionName("{privateEndpointConnectionName}")
///             .properties(PrivateEndpointConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .description("Auto-Approved")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("res7687")
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
/// const privateEndpointConnection = new azure_native.cognitiveservices.PrivateEndpointConnection("privateEndpointConnection", {
///     accountName: "sto9699",
///     privateEndpointConnectionName: "{privateEndpointConnectionName}",
///     properties: {
///         privateLinkServiceConnectionState: {
///             description: "Auto-Approved",
///             status: azure_native.cognitiveservices.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.cognitiveservices.PrivateEndpointConnection("privateEndpointConnection",
///     account_name="sto9699",
///     private_endpoint_connection_name="{privateEndpointConnectionName}",
///     properties={
///         "private_link_service_connection_state": {
///             "description": "Auto-Approved",
///             "status": azure_native.cognitiveservices.PrivateEndpointServiceConnectionStatus.APPROVED,
///         },
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:cognitiveservices:PrivateEndpointConnection
///     properties:
///       accountName: sto9699
///       privateEndpointConnectionName: '{privateEndpointConnectionName}'
///       properties:
///         privateLinkServiceConnectionState:
///           description: Auto-Approved
///           status: Approved
///       resourceGroupName: res7687
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
/// $ pulumi import azure-native:cognitiveservices:PrivateEndpointConnection {privateEndpointConnectionName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Etag.
  late final pulumi.Output<String> etag;
  /// The location of the private endpoint connection
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Resource properties.
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_cognitiveservices_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cognitiveservices:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PrivateEndpointConnection] resource.
  PrivateEndpointConnection.reference(String urn)
    : super(
        'azure-native:cognitiveservices:PrivateEndpointConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
