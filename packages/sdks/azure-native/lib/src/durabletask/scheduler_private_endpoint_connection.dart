import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'scheduler_private_endpoint_connection_args.dart';
import 'system_data_response.dart';

/// The private endpoint connection resource.
///
/// Uses Azure REST API version 2026-02-01.
///
/// Other available API versions: 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native durabletask [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnections_Create_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schedulerPrivateEndpointConnection = new AzureNative.DurableTask.SchedulerPrivateEndpointConnection("schedulerPrivateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "spzckqrbhfnabu",
///         PrivateLinkServiceConnectionState = new AzureNative.DurableTask.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             ActionsRequired = "mxymqfbbmpwjxsroldlsd",
///             Description = "ujdcsoyxljivwsgfkexhotaxcmzq",
///             Status = AzureNative.DurableTask.PrivateEndpointServiceConnectionStatus.Pending,
///         },
///         ResourceGroupName = "rgdurabletask",
///         SchedulerName = "testscheduler",
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
/// 	durabletask "github.com/pulumi/pulumi-azure-native-sdk/durabletask/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := durabletask.NewSchedulerPrivateEndpointConnection(ctx, "schedulerPrivateEndpointConnection", &durabletask.SchedulerPrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("spzckqrbhfnabu"),
/// 			PrivateLinkServiceConnectionState: &durabletask.PrivateLinkServiceConnectionStateArgs{
/// 				ActionsRequired: pulumi.String("mxymqfbbmpwjxsroldlsd"),
/// 				Description:     pulumi.String("ujdcsoyxljivwsgfkexhotaxcmzq"),
/// 				Status:          pulumi.String(durabletask.PrivateEndpointServiceConnectionStatusPending),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdurabletask"),
/// 			SchedulerName:     pulumi.String("testscheduler"),
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
/// resource "azure-native_durabletask_schedulerprivateendpointconnection" "schedulerPrivateEndpointConnection" {
///   private_endpoint_connection_name = "spzckqrbhfnabu"
///   private_link_service_connection_state = {
///     actions_required = "mxymqfbbmpwjxsroldlsd"
///     description      = "ujdcsoyxljivwsgfkexhotaxcmzq"
///     status           = "Pending"
///   }
///   resource_group_name = "rgdurabletask"
///   scheduler_name      = "testscheduler"
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
/// import com.pulumi.azurenative.durabletask.SchedulerPrivateEndpointConnection;
/// import com.pulumi.azurenative.durabletask.SchedulerPrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.durabletask.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var schedulerPrivateEndpointConnection = new SchedulerPrivateEndpointConnection("schedulerPrivateEndpointConnection", SchedulerPrivateEndpointConnectionArgs.builder()
///             .privateEndpointConnectionName("spzckqrbhfnabu")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .actionsRequired("mxymqfbbmpwjxsroldlsd")
///                 .description("ujdcsoyxljivwsgfkexhotaxcmzq")
///                 .status("Pending")
///                 .build())
///             .resourceGroupName("rgdurabletask")
///             .schedulerName("testscheduler")
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
/// const schedulerPrivateEndpointConnection = new azure_native.durabletask.SchedulerPrivateEndpointConnection("schedulerPrivateEndpointConnection", {
///     privateEndpointConnectionName: "spzckqrbhfnabu",
///     privateLinkServiceConnectionState: {
///         actionsRequired: "mxymqfbbmpwjxsroldlsd",
///         description: "ujdcsoyxljivwsgfkexhotaxcmzq",
///         status: azure_native.durabletask.PrivateEndpointServiceConnectionStatus.Pending,
///     },
///     resourceGroupName: "rgdurabletask",
///     schedulerName: "testscheduler",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduler_private_endpoint_connection = azure_native.durabletask.SchedulerPrivateEndpointConnection("schedulerPrivateEndpointConnection",
///     private_endpoint_connection_name="spzckqrbhfnabu",
///     private_link_service_connection_state={
///         "actions_required": "mxymqfbbmpwjxsroldlsd",
///         "description": "ujdcsoyxljivwsgfkexhotaxcmzq",
///         "status": azure_native.durabletask.PrivateEndpointServiceConnectionStatus.PENDING,
///     },
///     resource_group_name="rgdurabletask",
///     scheduler_name="testscheduler")
///
/// ```
///
/// ```yaml
/// resources:
///   schedulerPrivateEndpointConnection:
///     type: azure-native:durabletask:SchedulerPrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: spzckqrbhfnabu
///       privateLinkServiceConnectionState:
///         actionsRequired: mxymqfbbmpwjxsroldlsd
///         description: ujdcsoyxljivwsgfkexhotaxcmzq
///         status: Pending
///       resourceGroupName: rgdurabletask
///       schedulerName: testscheduler
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
/// $ pulumi import azure-native:durabletask:SchedulerPrivateEndpointConnection spzckqrbhfnabu /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DurableTask/schedulers/{schedulerName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class SchedulerPrivateEndpointConnection extends pulumi.CustomResource {
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

  /// Creates a new [SchedulerPrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SchedulerPrivateEndpointConnection]. {@macro pulumi_durabletask_scheduler_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SchedulerPrivateEndpointConnection(
    String name, {
    SchedulerPrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:durabletask:SchedulerPrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
