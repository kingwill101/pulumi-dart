import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_ip_filter_rule_args.dart';

/// Single item in a List or Get IpFilterRules operation
///
/// Uses Azure REST API version 2018-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NameSpaceIpFilterRuleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var namespaceIpFilterRule = new AzureNative.EventHub.NamespaceIpFilterRule("namespaceIpFilterRule", new()
///     {
///         Action = AzureNative.EventHub.IPAction.Accept,
///         FilterName = "sdk-IPFilterRules-7337",
///         IpFilterRuleName = "sdk-IPFilterRules-7337",
///         IpMask = "13.78.143.246/32",
///         NamespaceName = "sdk-Namespace-5232",
///         ResourceGroupName = "ResourceGroup",
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
/// 	eventhub "github.com/pulumi/pulumi-azure-native-sdk/eventhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventhub.NewNamespaceIpFilterRule(ctx, "namespaceIpFilterRule", &eventhub.NamespaceIpFilterRuleArgs{
/// 			Action:            pulumi.String(eventhub.IPActionAccept),
/// 			FilterName:        pulumi.String("sdk-IPFilterRules-7337"),
/// 			IpFilterRuleName:  pulumi.String("sdk-IPFilterRules-7337"),
/// 			IpMask:            pulumi.String("13.78.143.246/32"),
/// 			NamespaceName:     pulumi.String("sdk-Namespace-5232"),
/// 			ResourceGroupName: pulumi.String("ResourceGroup"),
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
/// resource "azure-native_eventhub_namespaceipfilterrule" "namespaceIpFilterRule" {
///   action              = "Accept"
///   filter_name         = "sdk-IPFilterRules-7337"
///   ip_filter_rule_name = "sdk-IPFilterRules-7337"
///   ip_mask             = "13.78.143.246/32"
///   namespace_name      = "sdk-Namespace-5232"
///   resource_group_name = "ResourceGroup"
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
/// import com.pulumi.azurenative.eventhub.NamespaceIpFilterRule;
/// import com.pulumi.azurenative.eventhub.NamespaceIpFilterRuleArgs;
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
///         var namespaceIpFilterRule = new NamespaceIpFilterRule("namespaceIpFilterRule", NamespaceIpFilterRuleArgs.builder()
///             .action("Accept")
///             .filterName("sdk-IPFilterRules-7337")
///             .ipFilterRuleName("sdk-IPFilterRules-7337")
///             .ipMask("13.78.143.246/32")
///             .namespaceName("sdk-Namespace-5232")
///             .resourceGroupName("ResourceGroup")
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
/// const namespaceIpFilterRule = new azure_native.eventhub.NamespaceIpFilterRule("namespaceIpFilterRule", {
///     action: azure_native.eventhub.IPAction.Accept,
///     filterName: "sdk-IPFilterRules-7337",
///     ipFilterRuleName: "sdk-IPFilterRules-7337",
///     ipMask: "13.78.143.246/32",
///     namespaceName: "sdk-Namespace-5232",
///     resourceGroupName: "ResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace_ip_filter_rule = azure_native.eventhub.NamespaceIpFilterRule("namespaceIpFilterRule",
///     action=azure_native.eventhub.IPAction.ACCEPT,
///     filter_name="sdk-IPFilterRules-7337",
///     ip_filter_rule_name="sdk-IPFilterRules-7337",
///     ip_mask="13.78.143.246/32",
///     namespace_name="sdk-Namespace-5232",
///     resource_group_name="ResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   namespaceIpFilterRule:
///     type: azure-native:eventhub:NamespaceIpFilterRule
///     properties:
///       action: Accept
///       filterName: sdk-IPFilterRules-7337
///       ipFilterRuleName: sdk-IPFilterRules-7337
///       ipMask: 13.78.143.246/32
///       namespaceName: sdk-Namespace-5232
///       resourceGroupName: ResourceGroup
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
/// $ pulumi import azure-native:eventhub:NamespaceIpFilterRule sdk-IPFilterRules-7337 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/ipfilterrules/{ipFilterRuleName}
/// ```
class NamespaceIpFilterRule extends pulumi.CustomResource {
  /// The IP Filter Action
  late final pulumi.Output<String?> action;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// IP Filter name
  late final pulumi.Output<String?> filterName;
  /// IP Mask
  late final pulumi.Output<String?> ipMask;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NamespaceIpFilterRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceIpFilterRule]. {@macro pulumi_eventhub_namespace_ip_filter_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceIpFilterRule(
    String name, {
    NamespaceIpFilterRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventhub:NamespaceIpFilterRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String?>('action');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    filterName = registerOutput<String?>('filterName');
    ipMask = registerOutput<String?>('ipMask');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
