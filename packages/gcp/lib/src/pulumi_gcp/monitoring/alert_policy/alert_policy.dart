import 'package:pulumi/pulumi.dart';
import '../alert_policy_alert_strategy/alert_policy_alert_strategy.dart';
import '../alert_policy_condition/alert_policy_condition.dart';
import '../alert_policy_creation_record/alert_policy_creation_record.dart';
import '../alert_policy_documentation/alert_policy_documentation.dart';
import 'alert_policy_args.dart';

/// A description of the conditions under which some aspect of your system is
/// considered to be "unhealthy" and the ways to notify people or services
/// about this state.
///
///
/// To get more information about AlertPolicy, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.alertPolicies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/alerts/)
///
/// ## Example Usage
///
/// ### Monitoring Alert Policy Basic
///
///
///
/// ### Monitoring Alert Policy Evaluation Missing Data
///
///
///
/// ### Monitoring Alert Policy Forecast Options
///
///
///
/// ### Monitoring Alert Policy Promql Condition
///
///
///
/// ### Monitoring Alert Policy Sql Condition
///
///
///
///
/// ## Import
///
/// AlertPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/alertPolicies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AlertPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/alertPolicy:AlertPolicy default projects/{{project}}/alertPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/alertPolicy:AlertPolicy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/alertPolicy:AlertPolicy default {{name}}
/// ```
class AlertPolicy extends CustomResource {
  /// Control over how this alert policy's notification channels are notified.
  /// Structure is documented below.
  late final Output<AlertPolicyAlertStrategy?> alertStrategy;

  /// How to combine the results of multiple conditions to
  /// determine if an incident should be opened.
  /// Possible values are: `AND`, `OR`, `AND_WITH_MATCHING_RESOURCE`.
  late final Output<String> combiner;

  /// A list of conditions for the policy. The conditions are combined by
  /// AND or OR according to the combiner field. If the combined conditions
  /// evaluate to true, then an incident is created. A policy can have from
  /// one to six conditions.
  /// Structure is documented below.
  late final Output<List<AlertPolicyCondition>> conditions;

  /// A read-only record of the creation of the alerting policy.
  /// If provided in a call to create or update, this field will
  /// be ignored.
  /// Structure is documented below.
  late final Output<List<AlertPolicyCreationRecord>> creationRecords;

  /// A short name or phrase used to identify the policy in
  /// dashboards, notifications, and incidents. To avoid confusion, don't use
  /// the same display name for multiple policies in the same project. The
  /// name is limited to 512 Unicode characters.
  late final Output<String> displayName;

  /// Documentation that is included with notifications and incidents related
  /// to this policy. Best practice is for the documentation to include information
  /// to help responders understand, mitigate, escalate, and correct the underlying
  /// problems detected by the alerting policy. Notification channels that have
  /// limited capacity might not show this documentation.
  /// Structure is documented below.
  late final Output<AlertPolicyDocumentation?> documentation;

  /// Whether or not the policy is enabled. The default is true.
  late final Output<bool?> enabled;

  /// The unique resource name for this policy.
  /// Its syntax is: projects/[PROJECT_ID]/alertPolicies/[ALERT_POLICY_ID]
  late final Output<String> name;

  /// Identifies the notification channels to which notifications should be
  /// sent when incidents are opened or closed or when new violations occur
  /// on an already opened incident. Each element of this array corresponds
  /// to the name field in each of the NotificationChannel objects that are
  /// returned from the notificationChannels.list method. The syntax of the
  /// entries in this field is
  /// `projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]`
  late final Output<List<String>?> notificationChannels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The severity of an alert policy indicates how important incidents generated
  /// by that policy are. The severity level will be displayed on the Incident
  /// detail page and in notifications.
  /// Possible values are: `CRITICAL`, `ERROR`, `WARNING`.
  late final Output<String?> severity;

  /// This field is intended to be used for organizing and identifying the AlertPolicy
  /// objects.The field can contain up to 64 entries. Each key and value is limited
  /// to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
  /// can contain only lowercase letters, numerals, underscores, and dashes. Keys
  /// must begin with a letter.
  late final Output<Map<String, String>?> userLabels;

  AlertPolicy(
    String name, {
    AlertPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/alertPolicy:AlertPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alertStrategy =
        registerOutput<AlertPolicyAlertStrategy?>('alertStrategy');
    this.combiner = registerOutput<String>('combiner');
    this.conditions = registerOutput<List<AlertPolicyCondition>>('conditions');
    this.creationRecords =
        registerOutput<List<AlertPolicyCreationRecord>>('creationRecords');
    this.displayName = registerOutput<String>('displayName');
    this.documentation =
        registerOutput<AlertPolicyDocumentation?>('documentation');
    this.enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    this.notificationChannels =
        registerOutput<List<String>?>('notificationChannels');
    this.project = registerOutput<String>('project');
    this.severity = registerOutput<String?>('severity');
    this.userLabels = registerOutput<Map<String, String>?>('userLabels');
  }
}
