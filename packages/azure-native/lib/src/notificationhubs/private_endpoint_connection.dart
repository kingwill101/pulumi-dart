import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// Represents a Private Endpoint Connection ARM resource - a sub-resource of Notification Hubs namespace.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnections_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.NotificationHubs.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         NamespaceName = "nh-sdk-ns",
///         PrivateEndpointConnectionName = "nh-sdk-ns.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///         Properties = new AzureNative.NotificationHubs.Inputs.PrivateEndpointConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.NotificationHubs.Inputs.RemotePrivateLinkServiceConnectionStateArgs
///             {
///                 Status = AzureNative.NotificationHubs.PrivateLinkConnectionStatus.Approved,
///             },
///         },
///         ResourceGroupName = "5ktrial",
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
/// 	notificationhubs "github.com/pulumi/pulumi-azure-native-sdk/notificationhubs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notificationhubs.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &notificationhubs.PrivateEndpointConnectionArgs{
/// 			NamespaceName:                 pulumi.String("nh-sdk-ns"),
/// 			PrivateEndpointConnectionName: pulumi.String("nh-sdk-ns.1fa229cd-bf3f-47f0-8c49-afb36723997e"),
/// 			Properties: &notificationhubs.PrivateEndpointConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &notificationhubs.RemotePrivateLinkServiceConnectionStateArgs{
/// 					Status: pulumi.String(notificationhubs.PrivateLinkConnectionStatusApproved),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("5ktrial"),
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
/// import com.pulumi.azurenative.notificationhubs.PrivateEndpointConnection;
/// import com.pulumi.azurenative.notificationhubs.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.notificationhubs.inputs.PrivateEndpointConnectionPropertiesArgs;
/// import com.pulumi.azurenative.notificationhubs.inputs.RemotePrivateLinkServiceConnectionStateArgs;
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
///             .namespaceName("nh-sdk-ns")
///             .privateEndpointConnectionName("nh-sdk-ns.1fa229cd-bf3f-47f0-8c49-afb36723997e")
///             .properties(PrivateEndpointConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(RemotePrivateLinkServiceConnectionStateArgs.builder()
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("5ktrial")
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
/// const privateEndpointConnection = new azure_native.notificationhubs.PrivateEndpointConnection("privateEndpointConnection", {
///     namespaceName: "nh-sdk-ns",
///     privateEndpointConnectionName: "nh-sdk-ns.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///     properties: {
///         privateLinkServiceConnectionState: {
///             status: azure_native.notificationhubs.PrivateLinkConnectionStatus.Approved,
///         },
///     },
///     resourceGroupName: "5ktrial",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.notificationhubs.PrivateEndpointConnection("privateEndpointConnection",
///     namespace_name="nh-sdk-ns",
///     private_endpoint_connection_name="nh-sdk-ns.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///     properties={
///         "private_link_service_connection_state": {
///             "status": azure_native.notificationhubs.PrivateLinkConnectionStatus.APPROVED,
///         },
///     },
///     resource_group_name="5ktrial")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:notificationhubs:PrivateEndpointConnection
///     properties:
///       namespaceName: nh-sdk-ns
///       privateEndpointConnectionName: nh-sdk-ns.1fa229cd-bf3f-47f0-8c49-afb36723997e
///       properties:
///         privateLinkServiceConnectionState:
///           status: Approved
///       resourceGroupName: 5ktrial
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
/// $ pulumi import azure-native:notificationhubs:PrivateEndpointConnection nh-sdk-ns.1fa229cd-bf3f-47f0-8c49-afb36723997e /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NotificationHubs/namespaces/{namespaceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Private Endpoint Connection properties.
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_notificationhubs_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:notificationhubs:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
