import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_authorization_rule_args.dart';
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
/// ### EventHubAuthorizationRuleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventHubAuthorizationRule = new AzureNative.EventHub.EventHubAuthorizationRule("eventHubAuthorizationRule", new()
///     {
///         AuthorizationRuleName = "sdk-Authrules-2513",
///         EventHubName = "sdk-EventHub-532",
///         NamespaceName = "sdk-Namespace-960",
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
/// 		_, err := eventhub.NewEventHubAuthorizationRule(ctx, "eventHubAuthorizationRule", &eventhub.EventHubAuthorizationRuleArgs{
/// 			AuthorizationRuleName: pulumi.String("sdk-Authrules-2513"),
/// 			EventHubName:          pulumi.String("sdk-EventHub-532"),
/// 			NamespaceName:         pulumi.String("sdk-Namespace-960"),
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
/// resource "azure-native_eventhub_eventhubauthorizationrule" "eventHubAuthorizationRule" {
///   authorization_rule_name = "sdk-Authrules-2513"
///   event_hub_name          = "sdk-EventHub-532"
///   namespace_name          = "sdk-Namespace-960"
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
/// import com.pulumi.azurenative.eventhub.EventHubAuthorizationRule;
/// import com.pulumi.azurenative.eventhub.EventHubAuthorizationRuleArgs;
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
///         var eventHubAuthorizationRule = new EventHubAuthorizationRule("eventHubAuthorizationRule", EventHubAuthorizationRuleArgs.builder()
///             .authorizationRuleName("sdk-Authrules-2513")
///             .eventHubName("sdk-EventHub-532")
///             .namespaceName("sdk-Namespace-960")
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
/// const eventHubAuthorizationRule = new azure_native.eventhub.EventHubAuthorizationRule("eventHubAuthorizationRule", {
///     authorizationRuleName: "sdk-Authrules-2513",
///     eventHubName: "sdk-EventHub-532",
///     namespaceName: "sdk-Namespace-960",
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
/// event_hub_authorization_rule = azure_native.eventhub.EventHubAuthorizationRule("eventHubAuthorizationRule",
///     authorization_rule_name="sdk-Authrules-2513",
///     event_hub_name="sdk-EventHub-532",
///     namespace_name="sdk-Namespace-960",
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
///   eventHubAuthorizationRule:
///     type: azure-native:eventhub:EventHubAuthorizationRule
///     properties:
///       authorizationRuleName: sdk-Authrules-2513
///       eventHubName: sdk-EventHub-532
///       namespaceName: sdk-Namespace-960
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
/// $ pulumi import azure-native:eventhub:EventHubAuthorizationRule sdk-Authrules-2513 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventhubs/{eventHubName}/authorizationRules/{authorizationRuleName}
/// ```
class EventHubAuthorizationRule extends pulumi.CustomResource {
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

  /// Creates a new [EventHubAuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventHubAuthorizationRule]. {@macro pulumi_eventhub_event_hub_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventHubAuthorizationRule(
    String name, {
    EventHubAuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventhub:EventHubAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    rights = registerOutput<List<String>>('rights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [EventHubAuthorizationRule] resource.
  EventHubAuthorizationRule.reference(String urn)
    : super(
        'azure-native:eventhub:EventHubAuthorizationRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    rights = registerOutput<List<String>>('rights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
