import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_properties_response.dart';
import 'private_endpoint_connection_args.dart';
import 'system_data_response.dart';

/// The private endpoint connection of a Digital Twin.
///
/// Uses Azure REST API version 2023-01-31. In version 2.x of the Azure Native provider, it used API version 2023-01-31.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update the status of a private endpoint connection with the given name
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.DigitalTwins.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "myPrivateConnection",
///         Properties = new AzureNative.DigitalTwins.Inputs.ConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.DigitalTwins.Inputs.ConnectionPropertiesPrivateLinkServiceConnectionStateArgs
///             {
///                 Description = "Approved by johndoe@company.com.",
///                 Status = AzureNative.DigitalTwins.PrivateLinkServiceConnectionStatus.Approved,
///             },
///         },
///         ResourceGroupName = "resRg",
///         ResourceName = "myDigitalTwinsService",
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
/// 	digitaltwins "github.com/pulumi/pulumi-azure-native-sdk/digitaltwins/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitaltwins.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &digitaltwins.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("myPrivateConnection"),
/// 			Properties: &digitaltwins.ConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &digitaltwins.ConnectionPropertiesPrivateLinkServiceConnectionStateArgs{
/// 					Description: pulumi.String("Approved by johndoe@company.com."),
/// 					Status:      pulumi.String(digitaltwins.PrivateLinkServiceConnectionStatusApproved),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			ResourceName:      pulumi.String("myDigitalTwinsService"),
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
/// import com.pulumi.azurenative.digitaltwins.PrivateEndpointConnection;
/// import com.pulumi.azurenative.digitaltwins.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.digitaltwins.inputs.ConnectionPropertiesArgs;
/// import com.pulumi.azurenative.digitaltwins.inputs.ConnectionPropertiesPrivateLinkServiceConnectionStateArgs;
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
///             .privateEndpointConnectionName("myPrivateConnection")
///             .properties(ConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(ConnectionPropertiesPrivateLinkServiceConnectionStateArgs.builder()
///                     .description("Approved by johndoe@company.com.")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("resRg")
///             .resourceName("myDigitalTwinsService")
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
/// const privateEndpointConnection = new azure_native.digitaltwins.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "myPrivateConnection",
///     properties: {
///         privateLinkServiceConnectionState: {
///             description: "Approved by johndoe@company.com.",
///             status: azure_native.digitaltwins.PrivateLinkServiceConnectionStatus.Approved,
///         },
///     },
///     resourceGroupName: "resRg",
///     resourceName: "myDigitalTwinsService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.digitaltwins.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="myPrivateConnection",
///     properties={
///         "private_link_service_connection_state": {
///             "description": "Approved by johndoe@company.com.",
///             "status": azure_native.digitaltwins.PrivateLinkServiceConnectionStatus.APPROVED,
///         },
///     },
///     resource_group_name="resRg",
///     resource_name_="myDigitalTwinsService")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:digitaltwins:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: myPrivateConnection
///       properties:
///         privateLinkServiceConnectionState:
///           description: Approved by johndoe@company.com.
///           status: Approved
///       resourceGroupName: resRg
///       resourceName: myDigitalTwinsService
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
/// $ pulumi import azure-native:digitaltwins:PrivateEndpointConnection myPrivateConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DigitalTwins/digitalTwinsInstances/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnectionDigitaltwins extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The connection properties.
  late final pulumi.Output<ConnectionPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the private endpoint connection.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionDigitaltwins].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionDigitaltwins]. {@macro pulumi_digitaltwins_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionDigitaltwins(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:digitaltwins:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ConnectionPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
