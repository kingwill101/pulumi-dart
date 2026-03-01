import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_groups_information_response.dart';
import 'detector_response.dart';
import 'smart_detector_alert_rule_args.dart';
import 'throttling_information_response.dart';

/// The alert rule information
///
/// Uses Azure REST API version 2021-04-01. In version 2.x of the Azure Native provider, it used API version 2021-04-01.
///
/// Other available API versions: 2019-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native alertsmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a Smart Detector alert rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var smartDetectorAlertRule = new AzureNative.AlertsManagement.SmartDetectorAlertRule("smartDetectorAlertRule", new()
///     {
///         ActionGroups = new AzureNative.AlertsManagement.Inputs.ActionGroupsInformationArgs
///         {
///             CustomEmailSubject = "My custom email subject",
///             CustomWebhookPayload = "{\"AlertRuleName\":\"#alertrulename\"}",
///             GroupIds = new[]
///             {
///                 "/subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourcegroups/actionGroups/providers/microsoft.insights/actiongroups/MyActionGroup",
///             },
///         },
///         AlertRuleName = "MyAlertRule",
///         Description = "Sample smart detector alert rule description",
///         Detector = new AzureNative.AlertsManagement.Inputs.DetectorArgs
///         {
///             Id = "VMMemoryLeak",
///         },
///         Frequency = "PT5M",
///         ResourceGroupName = "MyAlertRules",
///         Scope = new[]
///         {
///             "/subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourceGroups/MyVms/providers/Microsoft.Compute/virtualMachines/vm1",
///         },
///         Severity = AzureNative.AlertsManagement.Severity.Sev3,
///         State = AzureNative.AlertsManagement.AlertRuleState.Enabled,
///         Throttling = new AzureNative.AlertsManagement.Inputs.ThrottlingInformationArgs
///         {
///             Duration = "PT20M",
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
/// 	alertsmanagement "github.com/pulumi/pulumi-azure-native-sdk/alertsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alertsmanagement.NewSmartDetectorAlertRule(ctx, "smartDetectorAlertRule", &alertsmanagement.SmartDetectorAlertRuleArgs{
/// 			ActionGroups: &alertsmanagement.ActionGroupsInformationArgs{
/// 				CustomEmailSubject:   pulumi.String("My custom email subject"),
/// 				CustomWebhookPayload: pulumi.String("{\"AlertRuleName\":\"#alertrulename\"}"),
/// 				GroupIds: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourcegroups/actionGroups/providers/microsoft.insights/actiongroups/MyActionGroup"),
/// 				},
/// 			},
/// 			AlertRuleName: pulumi.String("MyAlertRule"),
/// 			Description:   pulumi.String("Sample smart detector alert rule description"),
/// 			Detector: &alertsmanagement.DetectorArgs{
/// 				Id: pulumi.String("VMMemoryLeak"),
/// 			},
/// 			Frequency:         pulumi.String("PT5M"),
/// 			ResourceGroupName: pulumi.String("MyAlertRules"),
/// 			Scope: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourceGroups/MyVms/providers/Microsoft.Compute/virtualMachines/vm1"),
/// 			},
/// 			Severity: pulumi.String(alertsmanagement.SeveritySev3),
/// 			State:    pulumi.String(alertsmanagement.AlertRuleStateEnabled),
/// 			Throttling: &alertsmanagement.ThrottlingInformationArgs{
/// 				Duration: pulumi.String("PT20M"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.alertsmanagement.SmartDetectorAlertRule;
/// import com.pulumi.azurenative.alertsmanagement.SmartDetectorAlertRuleArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.ActionGroupsInformationArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.DetectorArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.ThrottlingInformationArgs;
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
///         var smartDetectorAlertRule = new SmartDetectorAlertRule("smartDetectorAlertRule", SmartDetectorAlertRuleArgs.builder()
///             .actionGroups(ActionGroupsInformationArgs.builder()
///                 .customEmailSubject("My custom email subject")
///                 .customWebhookPayload("{\"AlertRuleName\":\"#alertrulename\"}")
///                 .groupIds("/subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourcegroups/actionGroups/providers/microsoft.insights/actiongroups/MyActionGroup")
///                 .build())
///             .alertRuleName("MyAlertRule")
///             .description("Sample smart detector alert rule description")
///             .detector(DetectorArgs.builder()
///                 .id("VMMemoryLeak")
///                 .build())
///             .frequency("PT5M")
///             .resourceGroupName("MyAlertRules")
///             .scope("/subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourceGroups/MyVms/providers/Microsoft.Compute/virtualMachines/vm1")
///             .severity("Sev3")
///             .state("Enabled")
///             .throttling(ThrottlingInformationArgs.builder()
///                 .duration("PT20M")
///                 .build())
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
/// const smartDetectorAlertRule = new azure_native.alertsmanagement.SmartDetectorAlertRule("smartDetectorAlertRule", {
///     actionGroups: {
///         customEmailSubject: "My custom email subject",
///         customWebhookPayload: "{\"AlertRuleName\":\"#alertrulename\"}",
///         groupIds: ["/subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourcegroups/actionGroups/providers/microsoft.insights/actiongroups/MyActionGroup"],
///     },
///     alertRuleName: "MyAlertRule",
///     description: "Sample smart detector alert rule description",
///     detector: {
///         id: "VMMemoryLeak",
///     },
///     frequency: "PT5M",
///     resourceGroupName: "MyAlertRules",
///     scope: ["/subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourceGroups/MyVms/providers/Microsoft.Compute/virtualMachines/vm1"],
///     severity: azure_native.alertsmanagement.Severity.Sev3,
///     state: azure_native.alertsmanagement.AlertRuleState.Enabled,
///     throttling: {
///         duration: "PT20M",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// smart_detector_alert_rule = azure_native.alertsmanagement.SmartDetectorAlertRule("smartDetectorAlertRule",
///     action_groups={
///         "custom_email_subject": "My custom email subject",
///         "custom_webhook_payload": "{\"AlertRuleName\":\"#alertrulename\"}",
///         "group_ids": ["/subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourcegroups/actionGroups/providers/microsoft.insights/actiongroups/MyActionGroup"],
///     },
///     alert_rule_name="MyAlertRule",
///     description="Sample smart detector alert rule description",
///     detector={
///         "id": "VMMemoryLeak",
///     },
///     frequency="PT5M",
///     resource_group_name="MyAlertRules",
///     scope=["/subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourceGroups/MyVms/providers/Microsoft.Compute/virtualMachines/vm1"],
///     severity=azure_native.alertsmanagement.Severity.SEV3,
///     state=azure_native.alertsmanagement.AlertRuleState.ENABLED,
///     throttling={
///         "duration": "PT20M",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   smartDetectorAlertRule:
///     type: azure-native:alertsmanagement:SmartDetectorAlertRule
///     properties:
///       actionGroups:
///         customEmailSubject: My custom email subject
///         customWebhookPayload: '{"AlertRuleName":"#alertrulename"}'
///         groupIds:
///           - /subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourcegroups/actionGroups/providers/microsoft.insights/actiongroups/MyActionGroup
///       alertRuleName: MyAlertRule
///       description: Sample smart detector alert rule description
///       detector:
///         id: VMMemoryLeak
///       frequency: PT5M
///       resourceGroupName: MyAlertRules
///       scope:
///         - /subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourceGroups/MyVms/providers/Microsoft.Compute/virtualMachines/vm1
///       severity: Sev3
///       state: Enabled
///       throttling:
///         duration: PT20M
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
/// $ pulumi import azure-native:alertsmanagement:SmartDetectorAlertRule MyAlertRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/microsoft.alertsManagement/smartDetectorAlertRules/{alertRuleName}
/// ```
class SmartDetectorAlertRule extends pulumi.CustomResource {
  /// The alert rule actions.
  late final pulumi.Output<ActionGroupsInformationResponse> actionGroups;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The alert rule description.
  late final pulumi.Output<String?> description;
  /// The alert rule's detector.
  late final pulumi.Output<DetectorResponse> detector;
  /// The alert rule frequency in ISO8601 format. The time granularity must be in minutes and minimum value is 1 minute, depending on the detector.
  late final pulumi.Output<String> frequency;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The alert rule resources scope.
  late final pulumi.Output<List<String>> scope;
  /// The alert rule severity.
  late final pulumi.Output<String> severity;
  /// The alert rule state.
  late final pulumi.Output<String> state;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The alert rule throttling information.
  late final pulumi.Output<ThrottlingInformationResponse?> throttling;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [SmartDetectorAlertRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SmartDetectorAlertRule]. {@macro pulumi_alertsmanagement_smart_detector_alert_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SmartDetectorAlertRule(
    String name, {
    SmartDetectorAlertRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:alertsmanagement:SmartDetectorAlertRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actionGroups = registerOutput<ActionGroupsInformationResponse>('actionGroups');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.detector = registerOutput<DetectorResponse>('detector');
    this.frequency = registerOutput<String>('frequency');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.scope = registerOutput<List<String>>('scope');
    this.severity = registerOutput<String>('severity');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.throttling = registerOutput<ThrottlingInformationResponse?>('throttling');
    this.type = registerOutput<String>('type');
  }
}
