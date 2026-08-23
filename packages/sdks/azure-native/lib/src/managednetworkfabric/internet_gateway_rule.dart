import 'package:pulumi/pulumi.dart' as pulumi;
import 'internet_gateway_rule_args.dart';
import 'rule_properties_response.dart';
import 'system_data_response.dart';

/// The Internet Gateway Rule resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### InternetGatewayRules_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var internetGatewayRule = new AzureNative.ManagedNetworkFabric.InternetGatewayRule("internetGatewayRule", new()
///     {
///         Annotation = "annotationValue",
///         InternetGatewayRuleName = "example-internetGatewayRule",
///         Location = "eastus",
///         ResourceGroupName = "example-rg",
///         RuleProperties = new AzureNative.ManagedNetworkFabric.Inputs.RulePropertiesArgs
///         {
///             Action = AzureNative.ManagedNetworkFabric.Action.Allow,
///             AddressList = new[]
///             {
///                 "10.10.10.10",
///             },
///         },
///         Tags =
///         {
///             { "keyID", "keyValue" },
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
/// 	managednetworkfabric "github.com/pulumi/pulumi-azure-native-sdk/managednetworkfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetworkfabric.NewInternetGatewayRule(ctx, "internetGatewayRule", &managednetworkfabric.InternetGatewayRuleArgs{
/// 			Annotation:              pulumi.String("annotationValue"),
/// 			InternetGatewayRuleName: pulumi.String("example-internetGatewayRule"),
/// 			Location:                pulumi.String("eastus"),
/// 			ResourceGroupName:       pulumi.String("example-rg"),
/// 			RuleProperties: &managednetworkfabric.RulePropertiesArgs{
/// 				Action: pulumi.String(managednetworkfabric.ActionAllow),
/// 				AddressList: pulumi.StringArray{
/// 					pulumi.String("10.10.10.10"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"keyID": pulumi.String("keyValue"),
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
/// resource "azure-native_managednetworkfabric_internetgatewayrule" "internetGatewayRule" {
///   annotation                 = "annotationValue"
///   internet_gateway_rule_name = "example-internetGatewayRule"
///   location                   = "eastus"
///   resource_group_name        = "example-rg"
///   rule_properties = {
///     action       = "Allow"
///     address_list = ["10.10.10.10"]
///   }
///   tags = {
///     "keyID" = "keyValue"
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
/// import com.pulumi.azurenative.managednetworkfabric.InternetGatewayRule;
/// import com.pulumi.azurenative.managednetworkfabric.InternetGatewayRuleArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.RulePropertiesArgs;
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
///         var internetGatewayRule = new InternetGatewayRule("internetGatewayRule", InternetGatewayRuleArgs.builder()
///             .annotation("annotationValue")
///             .internetGatewayRuleName("example-internetGatewayRule")
///             .location("eastus")
///             .resourceGroupName("example-rg")
///             .ruleProperties(RulePropertiesArgs.builder()
///                 .action("Allow")
///                 .addressList("10.10.10.10")
///                 .build())
///             .tags(Map.of("keyID", "keyValue"))
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
/// const internetGatewayRule = new azure_native.managednetworkfabric.InternetGatewayRule("internetGatewayRule", {
///     annotation: "annotationValue",
///     internetGatewayRuleName: "example-internetGatewayRule",
///     location: "eastus",
///     resourceGroupName: "example-rg",
///     ruleProperties: {
///         action: azure_native.managednetworkfabric.Action.Allow,
///         addressList: ["10.10.10.10"],
///     },
///     tags: {
///         keyID: "keyValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// internet_gateway_rule = azure_native.managednetworkfabric.InternetGatewayRule("internetGatewayRule",
///     annotation="annotationValue",
///     internet_gateway_rule_name="example-internetGatewayRule",
///     location="eastus",
///     resource_group_name="example-rg",
///     rule_properties={
///         "action": azure_native.managednetworkfabric.Action.ALLOW,
///         "address_list": ["10.10.10.10"],
///     },
///     tags={
///         "keyID": "keyValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   internetGatewayRule:
///     type: azure-native:managednetworkfabric:InternetGatewayRule
///     properties:
///       annotation: annotationValue
///       internetGatewayRuleName: example-internetGatewayRule
///       location: eastus
///       resourceGroupName: example-rg
///       ruleProperties:
///         action: Allow
///         addressList:
///           - 10.10.10.10
///       tags:
///         keyID: keyValue
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
/// $ pulumi import azure-native:managednetworkfabric:InternetGatewayRule example-internetGatewayRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/internetGatewayRules/{internetGatewayRuleName}
/// ```
class InternetGatewayRule extends pulumi.CustomResource {
  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of Internet Gateway resource Id.
  late final pulumi.Output<List<String>> internetGatewayIds;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Rules for the InternetGateways
  late final pulumi.Output<RulePropertiesResponse> ruleProperties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [InternetGatewayRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InternetGatewayRule]. {@macro pulumi_managednetworkfabric_internet_gateway_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InternetGatewayRule(
    String name, {
    InternetGatewayRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:InternetGatewayRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    internetGatewayIds = registerOutput<List<String>>('internetGatewayIds');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    ruleProperties = registerOutput<RulePropertiesResponse>('ruleProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RulePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
