import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_tag_rules_properties_response.dart';
import 'system_data_response.dart';
import 'tag_rule_args.dart';

/// Capture logs and metrics of Azure resources based on ARM tags.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-06-01.
///
/// Other available API versions: 2023-06-01, 2023-06-15-preview, 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TagRules_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tagRule = new AzureNative.Elastic.TagRule("tagRule", new()
///     {
///         MonitorName = "myMonitor",
///         ResourceGroupName = "myResourceGroup",
///         RuleSetName = "default",
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
/// 	elastic "github.com/pulumi/pulumi-azure-native-sdk/elastic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elastic.NewTagRule(ctx, "tagRule", &elastic.TagRuleArgs{
/// 			MonitorName:       pulumi.String("myMonitor"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			RuleSetName:       pulumi.String("default"),
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
/// import com.pulumi.azurenative.elastic.TagRule;
/// import com.pulumi.azurenative.elastic.TagRuleArgs;
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
///         var tagRule = new TagRule("tagRule", TagRuleArgs.builder()
///             .monitorName("myMonitor")
///             .resourceGroupName("myResourceGroup")
///             .ruleSetName("default")
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
/// const tagRule = new azure_native.elastic.TagRule("tagRule", {
///     monitorName: "myMonitor",
///     resourceGroupName: "myResourceGroup",
///     ruleSetName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// tag_rule = azure_native.elastic.TagRule("tagRule",
///     monitor_name="myMonitor",
///     resource_group_name="myResourceGroup",
///     rule_set_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   tagRule:
///     type: azure-native:elastic:TagRule
///     properties:
///       monitorName: myMonitor
///       resourceGroupName: myResourceGroup
///       ruleSetName: default
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
/// $ pulumi import azure-native:elastic:TagRule default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Elastic/monitors/{monitorName}/tagRules/{ruleSetName}
/// ```
class TagRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Name of the rule set.
  late final pulumi.Output<String> name;

  /// Properties of the monitoring tag rules.
  late final pulumi.Output<MonitoringTagRulesPropertiesResponse> properties;

  /// The system metadata relating to this resource
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the rule set.
  late final pulumi.Output<String> type;

  /// Creates a new [TagRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagRule]. {@macro pulumi_elastic_tag_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagRule(
    String name, {
    TagRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:elastic:TagRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MonitoringTagRulesPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
