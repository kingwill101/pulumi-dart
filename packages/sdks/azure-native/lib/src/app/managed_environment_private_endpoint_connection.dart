import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_environment_private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2024-02-02-preview.
///
/// Other available API versions: 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update a Private Endpoint Connection by Managed Environment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedEnvironmentPrivateEndpointConnection = new AzureNative.App.ManagedEnvironmentPrivateEndpointConnection("managedEnvironmentPrivateEndpointConnection", new()
///     {
///         EnvironmentName = "managedEnv",
///         PrivateEndpointConnectionName = "jlaw-demo1",
///         PrivateLinkServiceConnectionState = new AzureNative.App.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             ActionsRequired = "None",
///             Status = AzureNative.App.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "examplerg",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewManagedEnvironmentPrivateEndpointConnection(ctx, "managedEnvironmentPrivateEndpointConnection", &app.ManagedEnvironmentPrivateEndpointConnectionArgs{
/// 			EnvironmentName:               pulumi.String("managedEnv"),
/// 			PrivateEndpointConnectionName: pulumi.String("jlaw-demo1"),
/// 			PrivateLinkServiceConnectionState: &app.PrivateLinkServiceConnectionStateArgs{
/// 				ActionsRequired: pulumi.String("None"),
/// 				Status:          pulumi.String(app.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// import com.pulumi.azurenative.app.ManagedEnvironmentPrivateEndpointConnection;
/// import com.pulumi.azurenative.app.ManagedEnvironmentPrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.app.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var managedEnvironmentPrivateEndpointConnection = new ManagedEnvironmentPrivateEndpointConnection("managedEnvironmentPrivateEndpointConnection", ManagedEnvironmentPrivateEndpointConnectionArgs.builder()
///             .environmentName("managedEnv")
///             .privateEndpointConnectionName("jlaw-demo1")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .actionsRequired("None")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("examplerg")
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
/// const managedEnvironmentPrivateEndpointConnection = new azure_native.app.ManagedEnvironmentPrivateEndpointConnection("managedEnvironmentPrivateEndpointConnection", {
///     environmentName: "managedEnv",
///     privateEndpointConnectionName: "jlaw-demo1",
///     privateLinkServiceConnectionState: {
///         actionsRequired: "None",
///         status: azure_native.app.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_environment_private_endpoint_connection = azure_native.app.ManagedEnvironmentPrivateEndpointConnection("managedEnvironmentPrivateEndpointConnection",
///     environment_name="managedEnv",
///     private_endpoint_connection_name="jlaw-demo1",
///     private_link_service_connection_state={
///         "actions_required": "None",
///         "status": azure_native.app.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   managedEnvironmentPrivateEndpointConnection:
///     type: azure-native:app:ManagedEnvironmentPrivateEndpointConnection
///     properties:
///       environmentName: managedEnv
///       privateEndpointConnectionName: jlaw-demo1
///       privateLinkServiceConnectionState:
///         actionsRequired: None
///         status: Approved
///       resourceGroupName: examplerg
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
/// $ pulumi import azure-native:app:ManagedEnvironmentPrivateEndpointConnection jlaw-demo1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/managedEnvironments/{environmentName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class ManagedEnvironmentPrivateEndpointConnection
    extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The group ids for the private endpoint resource.
  late final pulumi.Output<List<String>> groupIds;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource of private end point.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;

  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse>
  privateLinkServiceConnectionState;

  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedEnvironmentPrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedEnvironmentPrivateEndpointConnection]. {@macro pulumi_app_managed_environment_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedEnvironmentPrivateEndpointConnection(
    String name, {
    ManagedEnvironmentPrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:app:ManagedEnvironmentPrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>(
      'privateEndpoint',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PrivateEndpointResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    privateLinkServiceConnectionState =
        registerOutput<PrivateLinkServiceConnectionStateResponse>(
          'privateLinkServiceConnectionState',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return PrivateLinkServiceConnectionStateResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    provisioningState = registerOutput<String>('provisioningState');
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
