import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';

/// The private endpoint connection of an IotHub
///
/// Uses Azure REST API version 2023-06-30.
///
/// Other available API versions: 2020-03-01, 2020-04-01, 2020-06-15, 2020-07-10-preview, 2020-08-01, 2020-08-31, 2020-08-31-preview, 2021-02-01-preview, 2021-03-03-preview, 2021-03-31, 2021-07-01, 2021-07-01-preview, 2021-07-02, 2021-07-02-preview, 2022-04-30-preview, 2022-11-15-preview, 2023-06-30-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iothub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnection_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.IoTHub.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "myPrivateEndpointConnection",
///         Properties = new AzureNative.IoTHub.Inputs.PrivateEndpointConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.IoTHub.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 Description = "Approved by johndoe@contoso.com",
///                 Status = AzureNative.IoTHub.PrivateLinkServiceConnectionStatus.Approved,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "testHub",
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
/// 	iothub "github.com/pulumi/pulumi-azure-native-sdk/iothub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iothub.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &iothub.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("myPrivateEndpointConnection"),
/// 			Properties: &iothub.PrivateEndpointConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &iothub.PrivateLinkServiceConnectionStateArgs{
/// 					Description: pulumi.String("Approved by johndoe@contoso.com"),
/// 					Status:      pulumi.String(iothub.PrivateLinkServiceConnectionStatusApproved),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("testHub"),
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
/// import com.pulumi.azurenative.iothub.PrivateEndpointConnection;
/// import com.pulumi.azurenative.iothub.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.iothub.inputs.PrivateEndpointConnectionPropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .privateEndpointConnectionName("myPrivateEndpointConnection")
///             .properties(PrivateEndpointConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .description("Approved by johndoe@contoso.com")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .resourceName("testHub")
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
/// const privateEndpointConnection = new azure_native.iothub.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "myPrivateEndpointConnection",
///     properties: {
///         privateLinkServiceConnectionState: {
///             description: "Approved by johndoe@contoso.com",
///             status: azure_native.iothub.PrivateLinkServiceConnectionStatus.Approved,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     resourceName: "testHub",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.iothub.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="myPrivateEndpointConnection",
///     properties={
///         "private_link_service_connection_state": {
///             "description": "Approved by johndoe@contoso.com",
///             "status": azure_native.iothub.PrivateLinkServiceConnectionStatus.APPROVED,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     resource_name_="testHub")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:iothub:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: myPrivateEndpointConnection
///       properties:
///         privateLinkServiceConnectionState:
///           description: Approved by johndoe@contoso.com
///           status: Approved
///       resourceGroupName: myResourceGroup
///       resourceName: testHub
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
/// $ pulumi import azure-native:iothub:PrivateEndpointConnection myPrivateEndpointConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/iotHubs/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnectionIothub extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The resource name.
  late final pulumi.Output<String> name;

  /// The properties of a private endpoint connection
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse>
  properties;

  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionIothub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionIothub]. {@macro pulumi_iothub_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionIothub(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:iothub:PrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>(
      'properties',
    );
    type = registerOutput<String>('type');
  }
}
