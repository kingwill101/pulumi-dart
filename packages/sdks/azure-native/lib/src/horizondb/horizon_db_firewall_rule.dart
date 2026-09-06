import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizon_db_firewall_rule_args.dart';
import 'horizon_db_firewall_rule_properties_response.dart';
import 'system_data_response.dart';

/// Represents the HorizonDB firewall rule.
///
/// Uses Azure REST API version 2026-01-20-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a HorizonDB firewall rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var horizonDbFirewallRule = new AzureNative.HorizonDb.HorizonDbFirewallRule("horizonDbFirewallRule", new()
///     {
///         ClusterName = "examplecluster",
///         FirewallRuleName = "examplefirewallrule",
///         PoolName = "examplepool",
///         Properties = new AzureNative.HorizonDb.Inputs.HorizonDbFirewallRulePropertiesArgs
///         {
///             Description = "Allow access from corporate network",
///             EndIpAddress = "10.0.0.10",
///             StartIpAddress = "10.0.0.1",
///         },
///         ResourceGroupName = "exampleresourcegroup",
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
/// 	horizondb "github.com/pulumi/pulumi-azure-native-sdk/horizondb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := horizondb.NewHorizonDbFirewallRule(ctx, "horizonDbFirewallRule", &horizondb.HorizonDbFirewallRuleArgs{
/// 			ClusterName:      pulumi.String("examplecluster"),
/// 			FirewallRuleName: pulumi.String("examplefirewallrule"),
/// 			PoolName:         pulumi.String("examplepool"),
/// 			Properties: &horizondb.HorizonDbFirewallRulePropertiesArgs{
/// 				Description:    pulumi.String("Allow access from corporate network"),
/// 				EndIpAddress:   pulumi.String("10.0.0.10"),
/// 				StartIpAddress: pulumi.String("10.0.0.1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
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
/// resource "azure-native_horizondb_horizondbfirewallrule" "horizonDbFirewallRule" {
///   cluster_name       = "examplecluster"
///   firewall_rule_name = "examplefirewallrule"
///   pool_name          = "examplepool"
///   properties = {
///     description      = "Allow access from corporate network"
///     end_ip_address   = "10.0.0.10"
///     start_ip_address = "10.0.0.1"
///   }
///   resource_group_name = "exampleresourcegroup"
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
/// import com.pulumi.azurenative.horizondb.HorizonDbFirewallRule;
/// import com.pulumi.azurenative.horizondb.HorizonDbFirewallRuleArgs;
/// import com.pulumi.azurenative.horizondb.inputs.HorizonDbFirewallRulePropertiesArgs;
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
///         var horizonDbFirewallRule = new HorizonDbFirewallRule("horizonDbFirewallRule", HorizonDbFirewallRuleArgs.builder()
///             .clusterName("examplecluster")
///             .firewallRuleName("examplefirewallrule")
///             .poolName("examplepool")
///             .properties(HorizonDbFirewallRulePropertiesArgs.builder()
///                 .description("Allow access from corporate network")
///                 .endIpAddress("10.0.0.10")
///                 .startIpAddress("10.0.0.1")
///                 .build())
///             .resourceGroupName("exampleresourcegroup")
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
/// const horizonDbFirewallRule = new azure_native.horizondb.HorizonDbFirewallRule("horizonDbFirewallRule", {
///     clusterName: "examplecluster",
///     firewallRuleName: "examplefirewallrule",
///     poolName: "examplepool",
///     properties: {
///         description: "Allow access from corporate network",
///         endIpAddress: "10.0.0.10",
///         startIpAddress: "10.0.0.1",
///     },
///     resourceGroupName: "exampleresourcegroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// horizon_db_firewall_rule = azure_native.horizondb.HorizonDbFirewallRule("horizonDbFirewallRule",
///     cluster_name="examplecluster",
///     firewall_rule_name="examplefirewallrule",
///     pool_name="examplepool",
///     properties={
///         "description": "Allow access from corporate network",
///         "end_ip_address": "10.0.0.10",
///         "start_ip_address": "10.0.0.1",
///     },
///     resource_group_name="exampleresourcegroup")
///
/// ```
///
/// ```yaml
/// resources:
///   horizonDbFirewallRule:
///     type: azure-native:horizondb:HorizonDbFirewallRule
///     properties:
///       clusterName: examplecluster
///       firewallRuleName: examplefirewallrule
///       poolName: examplepool
///       properties:
///         description: Allow access from corporate network
///         endIpAddress: 10.0.0.10
///         startIpAddress: 10.0.0.1
///       resourceGroupName: exampleresourcegroup
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
/// $ pulumi import azure-native:horizondb:HorizonDbFirewallRule examplefirewallrule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HorizonDb/clusters/{clusterName}/pools/{poolName}/firewallRules/{firewallRuleName}
/// ```
class HorizonDbFirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<HorizonDbFirewallRulePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HorizonDbFirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HorizonDbFirewallRule]. {@macro pulumi_horizondb_horizon_db_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HorizonDbFirewallRule(
    String name, {
    HorizonDbFirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:horizondb:HorizonDbFirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HorizonDbFirewallRulePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HorizonDbFirewallRulePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [HorizonDbFirewallRule] resource.
  HorizonDbFirewallRule.reference(String urn)
    : super(
        'azure-native:horizondb:HorizonDbFirewallRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HorizonDbFirewallRulePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HorizonDbFirewallRulePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
