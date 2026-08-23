import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_workspace_args.dart';
import 'azure_monitor_workspace_response_default_ingestion_settings.dart';
import 'azure_monitor_workspace_response_metrics.dart';
import 'system_data_response.dart';

/// An Azure Monitor Workspace definition
///
/// Uses Azure REST API version 2023-04-03. In version 2.x of the Azure Native provider, it used API version 2023-04-03.
///
/// Other available API versions: 2023-10-01-preview, 2025-05-03-preview, 2025-10-03, 2025-10-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an Azure Monitor Workspace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureMonitorWorkspace = new AzureNative.Monitor.AzureMonitorWorkspace("azureMonitorWorkspace", new()
///     {
///         AzureMonitorWorkspaceName = "myAzureMonitorWorkspace",
///         Location = "eastus",
///         ResourceGroupName = "myResourceGroup",
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewAzureMonitorWorkspace(ctx, "azureMonitorWorkspace", &monitor.AzureMonitorWorkspaceArgs{
/// 			AzureMonitorWorkspaceName: pulumi.String("myAzureMonitorWorkspace"),
/// 			Location:                  pulumi.String("eastus"),
/// 			ResourceGroupName:         pulumi.String("myResourceGroup"),
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
/// resource "azure-native_monitor_azuremonitorworkspace" "azureMonitorWorkspace" {
///   azure_monitor_workspace_name = "myAzureMonitorWorkspace"
///   location                     = "eastus"
///   resource_group_name          = "myResourceGroup"
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
/// import com.pulumi.azurenative.monitor.AzureMonitorWorkspace;
/// import com.pulumi.azurenative.monitor.AzureMonitorWorkspaceArgs;
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
///         var azureMonitorWorkspace = new AzureMonitorWorkspace("azureMonitorWorkspace", AzureMonitorWorkspaceArgs.builder()
///             .azureMonitorWorkspaceName("myAzureMonitorWorkspace")
///             .location("eastus")
///             .resourceGroupName("myResourceGroup")
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
/// const azureMonitorWorkspace = new azure_native.monitor.AzureMonitorWorkspace("azureMonitorWorkspace", {
///     azureMonitorWorkspaceName: "myAzureMonitorWorkspace",
///     location: "eastus",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_monitor_workspace = azure_native.monitor.AzureMonitorWorkspace("azureMonitorWorkspace",
///     azure_monitor_workspace_name="myAzureMonitorWorkspace",
///     location="eastus",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   azureMonitorWorkspace:
///     type: azure-native:monitor:AzureMonitorWorkspace
///     properties:
///       azureMonitorWorkspaceName: myAzureMonitorWorkspace
///       location: eastus
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:monitor:AzureMonitorWorkspace myAzureMonitorWorkspace /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Monitor/accounts/{azureMonitorWorkspaceName}
/// ```
class AzureMonitorWorkspace extends pulumi.CustomResource {
  /// The immutable Id of the Azure Monitor Workspace. This property is read-only.
  late final pulumi.Output<String> accountId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Data Collection Rule and Endpoint used for ingestion by default.
  late final pulumi.Output<AzureMonitorWorkspaceResponseDefaultIngestionSettings> defaultIngestionSettings;
  /// Resource entity tag (ETag)
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Properties related to the metrics container in the Azure Monitor Workspace
  late final pulumi.Output<AzureMonitorWorkspaceResponseMetrics> metrics;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of private endpoint connections
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// The provisioning state of the Azure Monitor Workspace. Set to Succeeded if everything is healthy.
  late final pulumi.Output<String> provisioningState;
  /// Gets or sets allow or disallow public network access to Azure Monitor Workspace
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AzureMonitorWorkspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureMonitorWorkspace]. {@macro pulumi_monitor_azure_monitor_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureMonitorWorkspace(
    String name, {
    AzureMonitorWorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:AzureMonitorWorkspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    defaultIngestionSettings = registerOutput<AzureMonitorWorkspaceResponseDefaultIngestionSettings>('defaultIngestionSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureMonitorWorkspaceResponseDefaultIngestionSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    metrics = registerOutput<AzureMonitorWorkspaceResponseMetrics>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureMonitorWorkspaceResponseMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
