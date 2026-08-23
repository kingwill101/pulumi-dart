import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_authorization_rule_args.dart';
import 'system_data_response.dart';

/// Single item in a List or Get AuthorizationRule operation
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NameSpaceAuthorizationRuleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var namespaceAuthorizationRule = new AzureNative.EventHub.NamespaceAuthorizationRule("namespaceAuthorizationRule", new()
///     {
///         AuthorizationRuleName = "sdk-Authrules-1746",
///         NamespaceName = "sdk-Namespace-2702",
///         ResourceGroupName = "ArunMonocle",
///         Rights = new[]
///         {
///             AzureNative.EventHub.AccessRights.Listen,
///             AzureNative.EventHub.AccessRights.Send,
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
/// 	eventhub "github.com/pulumi/pulumi-azure-native-sdk/eventhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventhub.NewNamespaceAuthorizationRule(ctx, "namespaceAuthorizationRule", &eventhub.NamespaceAuthorizationRuleArgs{
/// 			AuthorizationRuleName: pulumi.String("sdk-Authrules-1746"),
/// 			NamespaceName:         pulumi.String("sdk-Namespace-2702"),
/// 			ResourceGroupName:     pulumi.String("ArunMonocle"),
/// 			Rights: pulumi.StringArray{
/// 				pulumi.String(eventhub.AccessRightsListen),
/// 				pulumi.String(eventhub.AccessRightsSend),
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
/// resource "azure-native_eventhub_namespaceauthorizationrule" "namespaceAuthorizationRule" {
///   authorization_rule_name = "sdk-Authrules-1746"
///   namespace_name          = "sdk-Namespace-2702"
///   resource_group_name     = "ArunMonocle"
///   rights                  = ["Listen", "Send"]
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
/// import com.pulumi.azurenative.eventhub.NamespaceAuthorizationRule;
/// import com.pulumi.azurenative.eventhub.NamespaceAuthorizationRuleArgs;
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
///         var namespaceAuthorizationRule = new NamespaceAuthorizationRule("namespaceAuthorizationRule", NamespaceAuthorizationRuleArgs.builder()
///             .authorizationRuleName("sdk-Authrules-1746")
///             .namespaceName("sdk-Namespace-2702")
///             .resourceGroupName("ArunMonocle")
///             .rights(
///                 "Listen",
///                 "Send")
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
/// const namespaceAuthorizationRule = new azure_native.eventhub.NamespaceAuthorizationRule("namespaceAuthorizationRule", {
///     authorizationRuleName: "sdk-Authrules-1746",
///     namespaceName: "sdk-Namespace-2702",
///     resourceGroupName: "ArunMonocle",
///     rights: [
///         azure_native.eventhub.AccessRights.Listen,
///         azure_native.eventhub.AccessRights.Send,
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace_authorization_rule = azure_native.eventhub.NamespaceAuthorizationRule("namespaceAuthorizationRule",
///     authorization_rule_name="sdk-Authrules-1746",
///     namespace_name="sdk-Namespace-2702",
///     resource_group_name="ArunMonocle",
///     rights=[
///         azure_native.eventhub.AccessRights.LISTEN,
///         azure_native.eventhub.AccessRights.SEND,
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   namespaceAuthorizationRule:
///     type: azure-native:eventhub:NamespaceAuthorizationRule
///     properties:
///       authorizationRuleName: sdk-Authrules-1746
///       namespaceName: sdk-Namespace-2702
///       resourceGroupName: ArunMonocle
///       rights:
///         - Listen
///         - Send
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
/// $ pulumi import azure-native:eventhub:NamespaceAuthorizationRule sdk-Authrules-1746 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/authorizationRules/{authorizationRuleName}
/// ```
class NamespaceAuthorizationRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The rights associated with the rule.
  late final pulumi.Output<List<String>> rights;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// Creates a new [NamespaceAuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceAuthorizationRule]. {@macro pulumi_eventhub_namespace_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceAuthorizationRule(
    String name, {
    NamespaceAuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventhub:NamespaceAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    rights = registerOutput<List<String>>('rights');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
