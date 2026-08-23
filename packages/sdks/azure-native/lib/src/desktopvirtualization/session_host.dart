import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_host_args.dart';
import 'system_data_response.dart';

/// Represents a SessionHost definition.
///
/// Uses Azure REST API version 2026-01-01-preview.
///
/// Other available API versions: 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SessionHost_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sessionHost = new AzureNative.DesktopVirtualization.SessionHost("sessionHost", new()
///     {
///         HostPoolName = "hostPool1",
///         ResourceGroupName = "resourceGroup1",
///         SessionHostName = "sessionHost1.microsoft.com",
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
/// 	desktopvirtualization "github.com/pulumi/pulumi-azure-native-sdk/desktopvirtualization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := desktopvirtualization.NewSessionHost(ctx, "sessionHost", &desktopvirtualization.SessionHostArgs{
/// 			HostPoolName:      pulumi.String("hostPool1"),
/// 			ResourceGroupName: pulumi.String("resourceGroup1"),
/// 			SessionHostName:   pulumi.String("sessionHost1.microsoft.com"),
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
/// resource "azure-native_desktopvirtualization_sessionhost" "sessionHost" {
///   host_pool_name      = "hostPool1"
///   resource_group_name = "resourceGroup1"
///   session_host_name   = "sessionHost1.microsoft.com"
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
/// import com.pulumi.azurenative.desktopvirtualization.SessionHost;
/// import com.pulumi.azurenative.desktopvirtualization.SessionHostArgs;
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
///         var sessionHost = new SessionHost("sessionHost", SessionHostArgs.builder()
///             .hostPoolName("hostPool1")
///             .resourceGroupName("resourceGroup1")
///             .sessionHostName("sessionHost1.microsoft.com")
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
/// const sessionHost = new azure_native.desktopvirtualization.SessionHost("sessionHost", {
///     hostPoolName: "hostPool1",
///     resourceGroupName: "resourceGroup1",
///     sessionHostName: "sessionHost1.microsoft.com",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// session_host = azure_native.desktopvirtualization.SessionHost("sessionHost",
///     host_pool_name="hostPool1",
///     resource_group_name="resourceGroup1",
///     session_host_name="sessionHost1.microsoft.com")
///
/// ```
///
/// ```yaml
/// resources:
///   sessionHost:
///     type: azure-native:desktopvirtualization:SessionHost
///     properties:
///       hostPoolName: hostPool1
///       resourceGroupName: resourceGroup1
///       sessionHostName: sessionHost1.microsoft.com
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
/// $ pulumi import azure-native:desktopvirtualization:SessionHost hostPool1/sessionHost1.microsoft.com /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/hostPools/{hostPoolName}/sessionHosts/{sessionHostName}
/// ```
class SessionHost extends pulumi.CustomResource {
  /// Number of active sessions on SessionHost.
  late final pulumi.Output<int> activeSessions;
  /// Version of agent on SessionHost.
  late final pulumi.Output<String> agentVersion;
  /// Allow a new session.
  late final pulumi.Output<bool?> allowNewSession;
  /// User assigned to SessionHost.
  late final pulumi.Output<String?> assignedUser;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Number of disconnected sessions on SessionHost.
  late final pulumi.Output<int> disconnectedSessions;
  /// Friendly name of SessionHost
  late final pulumi.Output<String?> friendlyName;
  /// Last heart beat from SessionHost.
  late final pulumi.Output<String> lastHeartBeat;
  /// The last time update was completed.
  late final pulumi.Output<String> lastSessionHostUpdateTime;
  /// The timestamp of the last update.
  late final pulumi.Output<String> lastUpdateTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ObjectId of SessionHost. (internal use)
  late final pulumi.Output<String> objectId;
  /// The version of the OS on the session host.
  late final pulumi.Output<String> osVersion;
  /// Number of pending sessions on SessionHost.
  late final pulumi.Output<int> pendingSessions;
  /// Resource Id of SessionHost's underlying virtual machine.
  late final pulumi.Output<String> resourceId;
  /// SessionHostConfiguration version reference at the time the update is initiated, in the format of date time. Example: 2024-04-26T04:56:45Z
  late final pulumi.Output<String> sessionHostConfiguration;
  /// List of SessionHostHealthCheckReports
  late final pulumi.Output<List<Map<String, dynamic>>> sessionHostHealthCheckResults;
  /// Number of sessions on SessionHost.
  late final pulumi.Output<int> sessions;
  /// Status for a SessionHost.
  late final pulumi.Output<String> status;
  /// The timestamp of the status.
  late final pulumi.Output<String> statusTimestamp;
  /// The version of the side by side stack on the session host.
  late final pulumi.Output<String> sxSStackVersion;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The error message.
  late final pulumi.Output<String> updateErrorMessage;
  /// Update state of a SessionHost.
  late final pulumi.Output<String> updateState;
  /// Virtual Machine Id of SessionHost's underlying virtual machine.
  late final pulumi.Output<String> virtualMachineId;

  /// Creates a new [SessionHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SessionHost]. {@macro pulumi_desktopvirtualization_session_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SessionHost(
    String name, {
    SessionHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:desktopvirtualization:SessionHost',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeSessions = registerOutput<int>('activeSessions');
    agentVersion = registerOutput<String>('agentVersion');
    allowNewSession = registerOutput<bool?>('allowNewSession');
    assignedUser = registerOutput<String?>('assignedUser');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    disconnectedSessions = registerOutput<int>('disconnectedSessions');
    friendlyName = registerOutput<String?>('friendlyName');
    lastHeartBeat = registerOutput<String>('lastHeartBeat');
    lastSessionHostUpdateTime = registerOutput<String>('lastSessionHostUpdateTime');
    lastUpdateTime = registerOutput<String>('lastUpdateTime');
    this.name = registerOutput<String>('name');
    objectId = registerOutput<String>('objectId');
    osVersion = registerOutput<String>('osVersion');
    pendingSessions = registerOutput<int>('pendingSessions');
    resourceId = registerOutput<String>('resourceId');
    sessionHostConfiguration = registerOutput<String>('sessionHostConfiguration');
    sessionHostHealthCheckResults = registerOutput<List<Map<String, dynamic>>>('sessionHostHealthCheckResults');
    sessions = registerOutput<int>('sessions');
    status = registerOutput<String>('status');
    statusTimestamp = registerOutput<String>('statusTimestamp');
    sxSStackVersion = registerOutput<String>('sxSStackVersion');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updateErrorMessage = registerOutput<String>('updateErrorMessage');
    updateState = registerOutput<String>('updateState');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }
}
