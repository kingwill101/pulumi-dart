import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_mode_settings_response.dart';
import 'private_link_scope_args.dart';
import 'system_data_response.dart';

/// An Azure Monitor PrivateLinkScope definition.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2021-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateLinkScopeCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkScope = new AzureNative.Monitor.PrivateLinkScope("privateLinkScope", new()
///     {
///         AccessModeSettings = new AzureNative.Monitor.Inputs.AccessModeSettingsArgs
///         {
///             Exclusions = new() { },
///             IngestionAccessMode = AzureNative.Monitor.AccessMode.Open,
///             QueryAccessMode = AzureNative.Monitor.AccessMode.Open,
///         },
///         Location = "Global",
///         ResourceGroupName = "my-resource-group",
///         ScopeName = "my-privatelinkscope",
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
/// 		_, err := monitor.NewPrivateLinkScope(ctx, "privateLinkScope", &monitor.PrivateLinkScopeArgs{
/// 			AccessModeSettings: &monitor.AccessModeSettingsArgs{
/// 				Exclusions:          monitor.AccessModeSettingsExclusionArray{},
/// 				IngestionAccessMode: pulumi.String(monitor.AccessModeOpen),
/// 				QueryAccessMode:     pulumi.String(monitor.AccessModeOpen),
/// 			},
/// 			Location:          pulumi.String("Global"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			ScopeName:         pulumi.String("my-privatelinkscope"),
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
/// resource "azure-native_monitor_privatelinkscope" "privateLinkScope" {
///   access_mode_settings = {
///     exclusions            = []
///     ingestion_access_mode = "Open"
///     query_access_mode     = "Open"
///   }
///   location            = "Global"
///   resource_group_name = "my-resource-group"
///   scope_name          = "my-privatelinkscope"
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
/// import com.pulumi.azurenative.monitor.PrivateLinkScope;
/// import com.pulumi.azurenative.monitor.PrivateLinkScopeArgs;
/// import com.pulumi.azurenative.monitor.inputs.AccessModeSettingsArgs;
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
///         var privateLinkScope = new PrivateLinkScope("privateLinkScope", PrivateLinkScopeArgs.builder()
///             .accessModeSettings(AccessModeSettingsArgs.builder()
///                 .exclusions()
///                 .ingestionAccessMode("Open")
///                 .queryAccessMode("Open")
///                 .build())
///             .location("Global")
///             .resourceGroupName("my-resource-group")
///             .scopeName("my-privatelinkscope")
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
/// const privateLinkScope = new azure_native.monitor.PrivateLinkScope("privateLinkScope", {
///     accessModeSettings: {
///         exclusions: [],
///         ingestionAccessMode: azure_native.monitor.AccessMode.Open,
///         queryAccessMode: azure_native.monitor.AccessMode.Open,
///     },
///     location: "Global",
///     resourceGroupName: "my-resource-group",
///     scopeName: "my-privatelinkscope",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_scope = azure_native.monitor.PrivateLinkScope("privateLinkScope",
///     access_mode_settings={
///         "exclusions": [],
///         "ingestion_access_mode": azure_native.monitor.AccessMode.OPEN,
///         "query_access_mode": azure_native.monitor.AccessMode.OPEN,
///     },
///     location="Global",
///     resource_group_name="my-resource-group",
///     scope_name="my-privatelinkscope")
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkScope:
///     type: azure-native:monitor:PrivateLinkScope
///     properties:
///       accessModeSettings:
///         exclusions: []
///         ingestionAccessMode: Open
///         queryAccessMode: Open
///       location: Global
///       resourceGroupName: my-resource-group
///       scopeName: my-privatelinkscope
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PrivateLinkScopeUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkScope = new AzureNative.Monitor.PrivateLinkScope("privateLinkScope", new()
///     {
///         AccessModeSettings = new AzureNative.Monitor.Inputs.AccessModeSettingsArgs
///         {
///             Exclusions = new() { },
///             IngestionAccessMode = AzureNative.Monitor.AccessMode.Open,
///             QueryAccessMode = AzureNative.Monitor.AccessMode.Open,
///         },
///         Location = "Global",
///         ResourceGroupName = "my-resource-group",
///         ScopeName = "my-privatelinkscope",
///         Tags =
///         {
///             { "Tag1", "Value1" },
///         },
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
/// 		_, err := monitor.NewPrivateLinkScope(ctx, "privateLinkScope", &monitor.PrivateLinkScopeArgs{
/// 			AccessModeSettings: &monitor.AccessModeSettingsArgs{
/// 				Exclusions:          monitor.AccessModeSettingsExclusionArray{},
/// 				IngestionAccessMode: pulumi.String(monitor.AccessModeOpen),
/// 				QueryAccessMode:     pulumi.String(monitor.AccessModeOpen),
/// 			},
/// 			Location:          pulumi.String("Global"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			ScopeName:         pulumi.String("my-privatelinkscope"),
/// 			Tags: pulumi.StringMap{
/// 				"Tag1": pulumi.String("Value1"),
/// 			},
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
/// resource "azure-native_monitor_privatelinkscope" "privateLinkScope" {
///   access_mode_settings = {
///     exclusions            = []
///     ingestion_access_mode = "Open"
///     query_access_mode     = "Open"
///   }
///   location            = "Global"
///   resource_group_name = "my-resource-group"
///   scope_name          = "my-privatelinkscope"
///   tags = {
///     "Tag1" = "Value1"
///   }
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
/// import com.pulumi.azurenative.monitor.PrivateLinkScope;
/// import com.pulumi.azurenative.monitor.PrivateLinkScopeArgs;
/// import com.pulumi.azurenative.monitor.inputs.AccessModeSettingsArgs;
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
///         var privateLinkScope = new PrivateLinkScope("privateLinkScope", PrivateLinkScopeArgs.builder()
///             .accessModeSettings(AccessModeSettingsArgs.builder()
///                 .exclusions()
///                 .ingestionAccessMode("Open")
///                 .queryAccessMode("Open")
///                 .build())
///             .location("Global")
///             .resourceGroupName("my-resource-group")
///             .scopeName("my-privatelinkscope")
///             .tags(Map.of("Tag1", "Value1"))
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
/// const privateLinkScope = new azure_native.monitor.PrivateLinkScope("privateLinkScope", {
///     accessModeSettings: {
///         exclusions: [],
///         ingestionAccessMode: azure_native.monitor.AccessMode.Open,
///         queryAccessMode: azure_native.monitor.AccessMode.Open,
///     },
///     location: "Global",
///     resourceGroupName: "my-resource-group",
///     scopeName: "my-privatelinkscope",
///     tags: {
///         Tag1: "Value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_scope = azure_native.monitor.PrivateLinkScope("privateLinkScope",
///     access_mode_settings={
///         "exclusions": [],
///         "ingestion_access_mode": azure_native.monitor.AccessMode.OPEN,
///         "query_access_mode": azure_native.monitor.AccessMode.OPEN,
///     },
///     location="Global",
///     resource_group_name="my-resource-group",
///     scope_name="my-privatelinkscope",
///     tags={
///         "Tag1": "Value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkScope:
///     type: azure-native:monitor:PrivateLinkScope
///     properties:
///       accessModeSettings:
///         exclusions: []
///         ingestionAccessMode: Open
///         queryAccessMode: Open
///       location: Global
///       resourceGroupName: my-resource-group
///       scopeName: my-privatelinkscope
///       tags:
///         Tag1: Value1
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
/// $ pulumi import azure-native:monitor:PrivateLinkScope my-privatelinkscope /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/privateLinkScopes/{scopeName}
/// ```
class PrivateLinkScope extends pulumi.CustomResource {
  /// Access mode settings
  late final pulumi.Output<AccessModeSettingsResponse> accessModeSettings;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of private endpoint connections.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// Current state of this PrivateLinkScope: whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateLinkScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkScope]. {@macro pulumi_monitor_private_link_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkScope(
    String name, {
    PrivateLinkScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:PrivateLinkScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessModeSettings = registerOutput<AccessModeSettingsResponse>('accessModeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessModeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
