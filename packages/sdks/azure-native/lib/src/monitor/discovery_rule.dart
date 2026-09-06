import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovery_rule_args.dart';
import 'system_data_response.dart';

/// A discovery rule which automatically finds entities and relationships in a health model based on an Azure Resource Graph query
///
/// Uses Azure REST API version 2025-05-03-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DiscoveryRules_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var discoveryRule = new AzureNative.Monitor.DiscoveryRule("discoveryRule", new()
///     {
///         AzureMonitorWorkspaceName = "myWorkspace",
///         DiscoveryRuleName = "myDiscoveryRule",
///         HealthModelName = "myHealthModel",
///         Properties = new AzureNative.Monitor.Inputs.ResourceGraphQueryDiscoveryRulePropertiesArgs
///         {
///             AddRecommendedSignals = AzureNative.Monitor.DiscoveryRuleRecommendedSignalsBehavior.Enabled,
///             AuthenticationSetting = "authSetting1",
///             DiscoverRelationships = AzureNative.Monitor.DiscoveryRuleRelationshipDiscoveryBehavior.Enabled,
///             DiscoveryRuleKind = "ResourceGraphQuery",
///             DisplayName = "myDisplayName",
///             ResourceGraphQuery = "resources | where subscriptionId == '7ddfffd7-9b32-40df-1234-828cbd55d6f4' | where resourceGroup == 'my-rg'",
///         },
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
/// 		_, err := monitor.NewDiscoveryRule(ctx, "discoveryRule", &monitor.DiscoveryRuleArgs{
/// 			AzureMonitorWorkspaceName: pulumi.String("myWorkspace"),
/// 			DiscoveryRuleName:         pulumi.String("myDiscoveryRule"),
/// 			HealthModelName:           pulumi.String("myHealthModel"),
/// 			Properties: &monitor.ResourceGraphQueryDiscoveryRulePropertiesArgs{
/// 				AddRecommendedSignals: pulumi.String(monitor.DiscoveryRuleRecommendedSignalsBehaviorEnabled),
/// 				AuthenticationSetting: pulumi.String("authSetting1"),
/// 				DiscoverRelationships: pulumi.String(monitor.DiscoveryRuleRelationshipDiscoveryBehaviorEnabled),
/// 				DiscoveryRuleKind:     pulumi.String("ResourceGraphQuery"),
/// 				DisplayName:           pulumi.String("myDisplayName"),
/// 				ResourceGraphQuery:    pulumi.String("resources | where subscriptionId == '7ddfffd7-9b32-40df-1234-828cbd55d6f4' | where resourceGroup == 'my-rg'"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_monitor_discoveryrule" "discoveryRule" {
///   azure_monitor_workspace_name = "myWorkspace"
///   discovery_rule_name          = "myDiscoveryRule"
///   health_model_name            = "myHealthModel"
///   properties = {
///     "addRecommendedSignals" = "Enabled"
///     "authenticationSetting" = "authSetting1"
///     "discoverRelationships" = "Enabled"
///     "discoveryRuleKind"     = "ResourceGraphQuery"
///     "displayName"           = "myDisplayName"
///     "resourceGraphQuery"    = "resources | where subscriptionId == '7ddfffd7-9b32-40df-1234-828cbd55d6f4' | where resourceGroup == 'my-rg'"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.monitor.DiscoveryRule;
/// import com.pulumi.azurenative.monitor.DiscoveryRuleArgs;
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
///         var discoveryRule = new DiscoveryRule("discoveryRule", DiscoveryRuleArgs.builder()
///             .azureMonitorWorkspaceName("myWorkspace")
///             .discoveryRuleName("myDiscoveryRule")
///             .healthModelName("myHealthModel")
///             .properties(ResourceGraphQueryDiscoveryRulePropertiesArgs.builder()
///                 .addRecommendedSignals("Enabled")
///                 .authenticationSetting("authSetting1")
///                 .discoverRelationships("Enabled")
///                 .discoveryRuleKind("ResourceGraphQuery")
///                 .displayName("myDisplayName")
///                 .resourceGraphQuery("resources | where subscriptionId == '7ddfffd7-9b32-40df-1234-828cbd55d6f4' | where resourceGroup == 'my-rg'")
///                 .build())
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
/// const discoveryRule = new azure_native.monitor.DiscoveryRule("discoveryRule", {
///     azureMonitorWorkspaceName: "myWorkspace",
///     discoveryRuleName: "myDiscoveryRule",
///     healthModelName: "myHealthModel",
///     properties: {
///         addRecommendedSignals: azure_native.monitor.DiscoveryRuleRecommendedSignalsBehavior.Enabled,
///         authenticationSetting: "authSetting1",
///         discoverRelationships: azure_native.monitor.DiscoveryRuleRelationshipDiscoveryBehavior.Enabled,
///         discoveryRuleKind: "ResourceGraphQuery",
///         displayName: "myDisplayName",
///         resourceGraphQuery: "resources | where subscriptionId == '7ddfffd7-9b32-40df-1234-828cbd55d6f4' | where resourceGroup == 'my-rg'",
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// discovery_rule = azure_native.monitor.DiscoveryRule("discoveryRule",
///     azure_monitor_workspace_name="myWorkspace",
///     discovery_rule_name="myDiscoveryRule",
///     health_model_name="myHealthModel",
///     properties={
///         "add_recommended_signals": azure_native.monitor.DiscoveryRuleRecommendedSignalsBehavior.ENABLED,
///         "authentication_setting": "authSetting1",
///         "discover_relationships": azure_native.monitor.DiscoveryRuleRelationshipDiscoveryBehavior.ENABLED,
///         "discovery_rule_kind": "ResourceGraphQuery",
///         "display_name": "myDisplayName",
///         "resource_graph_query": "resources | where subscriptionId == '7ddfffd7-9b32-40df-1234-828cbd55d6f4' | where resourceGroup == 'my-rg'",
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   discoveryRule:
///     type: azure-native:monitor:DiscoveryRule
///     properties:
///       azureMonitorWorkspaceName: myWorkspace
///       discoveryRuleName: myDiscoveryRule
///       healthModelName: myHealthModel
///       properties:
///         addRecommendedSignals: Enabled
///         authenticationSetting: authSetting1
///         discoverRelationships: Enabled
///         discoveryRuleKind: ResourceGraphQuery
///         displayName: myDisplayName
///         resourceGraphQuery: resources | where subscriptionId == '7ddfffd7-9b32-40df-1234-828cbd55d6f4' | where resourceGroup == 'my-rg'
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
/// $ pulumi import azure-native:monitor:DiscoveryRule myDiscoveryRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Monitor/accounts/{azureMonitorWorkspaceName}/healthmodels/{healthModelName}/discoveryrules/{discoveryRuleName}
/// ```
class DiscoveryRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<dynamic> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DiscoveryRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiscoveryRule]. {@macro pulumi_monitor_discovery_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiscoveryRule(
    String name, {
    DiscoveryRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:DiscoveryRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DiscoveryRule] resource.
  DiscoveryRule.reference(String urn)
    : super(
        'azure-native:monitor:DiscoveryRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
