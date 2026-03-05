import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// A private endpoint connection
///
/// Uses Azure REST API version 2024-07-10. In version 2.x of the Azure Native provider, it used API version 2022-12-27.
///
/// Other available API versions: 2020-08-15-preview, 2021-01-28-preview, 2021-03-25-preview, 2021-04-22-preview, 2021-05-17-preview, 2021-05-20, 2021-06-10-preview, 2021-12-10-preview, 2022-03-10, 2022-05-10-preview, 2022-08-11-preview, 2022-11-10, 2022-12-27, 2022-12-27-preview, 2023-03-15-preview, 2023-06-20-preview, 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-07-31-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Approve or reject a private endpoint connection with a given name.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.HybridCompute.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "private-endpoint-connection-name",
///         Properties = new AzureNative.HybridCompute.Inputs.PrivateEndpointConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.HybridCompute.Inputs.PrivateLinkServiceConnectionStatePropertyArgs
///             {
///                 Description = "Approved by johndoe@contoso.com",
///                 Status = "Approved",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ScopeName = "myPrivateLinkScope",
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
/// 	hybridcompute "github.com/pulumi/pulumi-azure-native-sdk/hybridcompute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcompute.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &hybridcompute.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("private-endpoint-connection-name"),
/// 			Properties: &hybridcompute.PrivateEndpointConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &hybridcompute.PrivateLinkServiceConnectionStatePropertyArgs{
/// 					Description: pulumi.String("Approved by johndoe@contoso.com"),
/// 					Status:      pulumi.String("Approved"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ScopeName:         pulumi.String("myPrivateLinkScope"),
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
/// import com.pulumi.azurenative.hybridcompute.PrivateEndpointConnection;
/// import com.pulumi.azurenative.hybridcompute.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.hybridcompute.inputs.PrivateEndpointConnectionPropertiesArgs;
/// import com.pulumi.azurenative.hybridcompute.inputs.PrivateLinkServiceConnectionStatePropertyArgs;
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
///         var privateEndpointConnection = new PrivateEndpointConnection("privateEndpointConnection", PrivateEndpointConnectionArgs.builder()
///             .privateEndpointConnectionName("private-endpoint-connection-name")
///             .properties(PrivateEndpointConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStatePropertyArgs.builder()
///                     .description("Approved by johndoe@contoso.com")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .scopeName("myPrivateLinkScope")
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
/// const privateEndpointConnection = new azure_native.hybridcompute.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "private-endpoint-connection-name",
///     properties: {
///         privateLinkServiceConnectionState: {
///             description: "Approved by johndoe@contoso.com",
///             status: "Approved",
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     scopeName: "myPrivateLinkScope",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.hybridcompute.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="private-endpoint-connection-name",
///     properties={
///         "private_link_service_connection_state": {
///             "description": "Approved by johndoe@contoso.com",
///             "status": "Approved",
///         },
///     },
///     resource_group_name="myResourceGroup",
///     scope_name="myPrivateLinkScope")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:hybridcompute:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: private-endpoint-connection-name
///       properties:
///         privateLinkServiceConnectionState:
///           description: Approved by johndoe@contoso.com
///           status: Approved
///       resourceGroupName: myResourceGroup
///       scopeName: myPrivateLinkScope
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
/// $ pulumi import azure-native:hybridcompute:PrivateEndpointConnection private-endpoint-connection-name /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridCompute/privateLinkScopes/{scopeName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Resource properties.
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_hybridcompute_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridcompute:PrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PrivateEndpointConnectionPropertiesResponse.fromMap(
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
    type = registerOutput<String>('type');
  }
}
