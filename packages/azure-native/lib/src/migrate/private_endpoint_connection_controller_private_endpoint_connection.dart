import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_controller_private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// REST model used to encapsulate the user visible state of a PrivateEndpoint.
///
/// Uses Azure REST API version 2020-05-01. In version 2.x of the Azure Native provider, it used API version 2020-05-01.
///
/// Other available API versions: 2023-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnection_Put
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnectionControllerPrivateEndpointConnection = new AzureNative.Migrate.PrivateEndpointConnectionControllerPrivateEndpointConnection("privateEndpointConnectionControllerPrivateEndpointConnection", new()
///     {
///         MigrateProjectName = "proj567",
///         PeConnectionName = "proj5675162pe.fdccace0-e303-4a79-80c8-3aa7c1f09cc6",
///         Properties = new AzureNative.Migrate.Inputs.ConnectionStateRequestBodyPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.Migrate.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 ActionsRequired = "",
///                 Status = AzureNative.Migrate.PrivateEndpointServiceConnectionStatus.Approved,
///             },
///         },
///         ResourceGroupName = "pajindTest1",
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
/// 	migrate "github.com/pulumi/pulumi-azure-native-sdk/migrate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrate.NewPrivateEndpointConnectionControllerPrivateEndpointConnection(ctx, "privateEndpointConnectionControllerPrivateEndpointConnection", &migrate.PrivateEndpointConnectionControllerPrivateEndpointConnectionArgs{
/// 			MigrateProjectName: pulumi.String("proj567"),
/// 			PeConnectionName:   pulumi.String("proj5675162pe.fdccace0-e303-4a79-80c8-3aa7c1f09cc6"),
/// 			Properties: &migrate.ConnectionStateRequestBodyPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &migrate.PrivateLinkServiceConnectionStateArgs{
/// 					ActionsRequired: pulumi.String(""),
/// 					Status:          pulumi.String(migrate.PrivateEndpointServiceConnectionStatusApproved),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("pajindTest1"),
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
/// import com.pulumi.azurenative.migrate.PrivateEndpointConnectionControllerPrivateEndpointConnection;
/// import com.pulumi.azurenative.migrate.PrivateEndpointConnectionControllerPrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.migrate.inputs.ConnectionStateRequestBodyPropertiesArgs;
/// import com.pulumi.azurenative.migrate.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnectionControllerPrivateEndpointConnection = new PrivateEndpointConnectionControllerPrivateEndpointConnection("privateEndpointConnectionControllerPrivateEndpointConnection", PrivateEndpointConnectionControllerPrivateEndpointConnectionArgs.builder()
///             .migrateProjectName("proj567")
///             .peConnectionName("proj5675162pe.fdccace0-e303-4a79-80c8-3aa7c1f09cc6")
///             .properties(ConnectionStateRequestBodyPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .actionsRequired("")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("pajindTest1")
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
/// const privateEndpointConnectionControllerPrivateEndpointConnection = new azure_native.migrate.PrivateEndpointConnectionControllerPrivateEndpointConnection("privateEndpointConnectionControllerPrivateEndpointConnection", {
///     migrateProjectName: "proj567",
///     peConnectionName: "proj5675162pe.fdccace0-e303-4a79-80c8-3aa7c1f09cc6",
///     properties: {
///         privateLinkServiceConnectionState: {
///             actionsRequired: "",
///             status: azure_native.migrate.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///     },
///     resourceGroupName: "pajindTest1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection_controller_private_endpoint_connection = azure_native.migrate.PrivateEndpointConnectionControllerPrivateEndpointConnection("privateEndpointConnectionControllerPrivateEndpointConnection",
///     migrate_project_name="proj567",
///     pe_connection_name="proj5675162pe.fdccace0-e303-4a79-80c8-3aa7c1f09cc6",
///     properties={
///         "private_link_service_connection_state": {
///             "actions_required": "",
///             "status": azure_native.migrate.PrivateEndpointServiceConnectionStatus.APPROVED,
///         },
///     },
///     resource_group_name="pajindTest1")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnectionControllerPrivateEndpointConnection:
///     type: azure-native:migrate:PrivateEndpointConnectionControllerPrivateEndpointConnection
///     properties:
///       migrateProjectName: proj567
///       peConnectionName: proj5675162pe.fdccace0-e303-4a79-80c8-3aa7c1f09cc6
///       properties:
///         privateLinkServiceConnectionState:
///           actionsRequired: ""
///           status: Approved
///       resourceGroupName: pajindTest1
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
/// $ pulumi import azure-native:migrate:PrivateEndpointConnectionControllerPrivateEndpointConnection proj5675162pe.fdccace0-e303-4a79-80c8-3aa7c1f09cc6 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/migrateProjects/{migrateProjectName}/privateEndpointConnections/{peConnectionName}
/// ```
class PrivateEndpointConnectionControllerPrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the tag for optimistic concurrency control.
  late final pulumi.Output<String> eTag;
  /// Gets the name of the resource.
  late final pulumi.Output<String> name;
  /// Gets the properties of the object.
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionControllerPrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionControllerPrivateEndpointConnection]. {@macro pulumi_migrate_private_endpoint_connection_controller_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionControllerPrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionControllerPrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:PrivateEndpointConnectionControllerPrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
