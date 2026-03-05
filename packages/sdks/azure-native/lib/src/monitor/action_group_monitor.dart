import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_group_args.dart';
import 'managed_service_identity_response.dart';

/// An action group resource.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2018-03-01, 2022-06-01, 2023-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:monitor:ActionGroup SampleActionGroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/actionGroups/{actionGroupName}
/// ```
class ActionGroupMonitor extends pulumi.CustomResource {
  /// The list of ARM role receivers that are part of this action group. Roles are Azure RBAC roles and only built-in roles are supported.
  late final pulumi.Output<List<Map<String, dynamic>>?> armRoleReceivers;

  /// The list of AutomationRunbook receivers that are part of this action group.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  automationRunbookReceivers;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The list of AzureAppPush receivers that are part of this action group.
  late final pulumi.Output<List<Map<String, dynamic>>?> azureAppPushReceivers;

  /// The list of azure function receivers that are part of this action group.
  late final pulumi.Output<List<Map<String, dynamic>>?> azureFunctionReceivers;

  /// The list of email receivers that are part of this action group.
  late final pulumi.Output<List<Map<String, dynamic>>?> emailReceivers;

  /// Indicates whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications.
  late final pulumi.Output<bool> enabled;

  /// The list of event hub receivers that are part of this action group.
  late final pulumi.Output<List<Map<String, dynamic>>?> eventHubReceivers;

  /// The short name of the action group. This will be used in SMS messages.
  late final pulumi.Output<String> groupShortName;

  /// Managed service identity (system assigned and/or user assigned identities)
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The list of incident receivers that are part of this action group.
  late final pulumi.Output<List<Map<String, dynamic>>?> incidentReceivers;

  /// The list of ITSM receivers that are part of this action group.
  late final pulumi.Output<List<Map<String, dynamic>>?> itsmReceivers;

  /// Resource location
  late final pulumi.Output<String> location;

  /// The list of logic app receivers that are part of this action group.
  late final pulumi.Output<List<Map<String, dynamic>>?> logicAppReceivers;

  /// Azure resource name
  late final pulumi.Output<String> name;

  /// The list of SMS receivers that are part of this action group.
  late final pulumi.Output<List<Map<String, dynamic>>?> smsReceivers;

  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;

  /// Azure resource type
  late final pulumi.Output<String> type;

  /// The list of voice receivers that are part of this action group.
  late final pulumi.Output<List<Map<String, dynamic>>?> voiceReceivers;

  /// The list of webhook receivers that are part of this action group.
  late final pulumi.Output<List<Map<String, dynamic>>?> webhookReceivers;

  /// Creates a new [ActionGroupMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionGroupMonitor]. {@macro pulumi_monitor_action_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionGroupMonitor(
    String name, {
    ActionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:monitor:ActionGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    armRoleReceivers = registerOutput<List<Map<String, dynamic>>?>(
      'armRoleReceivers',
    );
    automationRunbookReceivers = registerOutput<List<Map<String, dynamic>>?>(
      'automationRunbookReceivers',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureAppPushReceivers = registerOutput<List<Map<String, dynamic>>?>(
      'azureAppPushReceivers',
    );
    azureFunctionReceivers = registerOutput<List<Map<String, dynamic>>?>(
      'azureFunctionReceivers',
    );
    emailReceivers = registerOutput<List<Map<String, dynamic>>?>(
      'emailReceivers',
    );
    enabled = registerOutput<bool>('enabled');
    eventHubReceivers = registerOutput<List<Map<String, dynamic>>?>(
      'eventHubReceivers',
    );
    groupShortName = registerOutput<String>('groupShortName');
    identity = registerOutput<ManagedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    incidentReceivers = registerOutput<List<Map<String, dynamic>>?>(
      'incidentReceivers',
    );
    itsmReceivers = registerOutput<List<Map<String, dynamic>>?>(
      'itsmReceivers',
    );
    location = registerOutput<String>('location');
    logicAppReceivers = registerOutput<List<Map<String, dynamic>>?>(
      'logicAppReceivers',
    );
    this.name = registerOutput<String>('name');
    smsReceivers = registerOutput<List<Map<String, dynamic>>?>('smsReceivers');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    voiceReceivers = registerOutput<List<Map<String, dynamic>>?>(
      'voiceReceivers',
    );
    webhookReceivers = registerOutput<List<Map<String, dynamic>>?>(
      'webhookReceivers',
    );
  }
}
