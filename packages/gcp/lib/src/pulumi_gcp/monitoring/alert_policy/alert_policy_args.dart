// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../alert_policy_alert_strategy/alert_policy_alert_strategy.dart';
import '../alert_policy_condition/alert_policy_condition.dart';
import '../alert_policy_documentation/alert_policy_documentation.dart';

/// The set of arguments for AlertPolicy.
class AlertPolicyArgs {
  /// Control over how this alert policy's notification channels are notified.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyAlertStrategy>? alertStrategy;

  /// How to combine the results of multiple conditions to
  /// determine if an incident should be opened.
  /// Possible values are: `AND`, `OR`, `AND_WITH_MATCHING_RESOURCE`.
  final pulumi.Input<String> combiner;

  /// A list of conditions for the policy. The conditions are combined by
  /// AND or OR according to the combiner field. If the combined conditions
  /// evaluate to true, then an incident is created. A policy can have from
  /// one to six conditions.
  /// Structure is documented below.
  final pulumi.Input<List<AlertPolicyCondition>> conditions;

  /// A short name or phrase used to identify the policy in
  /// dashboards, notifications, and incidents. To avoid confusion, don't use
  /// the same display name for multiple policies in the same project. The
  /// name is limited to 512 Unicode characters.
  final pulumi.Input<String> displayName;

  /// Documentation that is included with notifications and incidents related
  /// to this policy. Best practice is for the documentation to include information
  /// to help responders understand, mitigate, escalate, and correct the underlying
  /// problems detected by the alerting policy. Notification channels that have
  /// limited capacity might not show this documentation.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyDocumentation>? documentation;

  /// Whether or not the policy is enabled. The default is true.
  final pulumi.Input<bool>? enabled;

  /// Identifies the notification channels to which notifications should be
  /// sent when incidents are opened or closed or when new violations occur
  /// on an already opened incident. Each element of this array corresponds
  /// to the name field in each of the NotificationChannel objects that are
  /// returned from the notificationChannels.list method. The syntax of the
  /// entries in this field is
  /// `projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]`
  final pulumi.Input<List<String>>? notificationChannels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The severity of an alert policy indicates how important incidents generated
  /// by that policy are. The severity level will be displayed on the Incident
  /// detail page and in notifications.
  /// Possible values are: `CRITICAL`, `ERROR`, `WARNING`.
  final pulumi.Input<String>? severity;

  /// This field is intended to be used for organizing and identifying the AlertPolicy
  /// objects.The field can contain up to 64 entries. Each key and value is limited
  /// to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
  /// can contain only lowercase letters, numerals, underscores, and dashes. Keys
  /// must begin with a letter.
  final pulumi.Input<Map<String, String>>? userLabels;

  AlertPolicyArgs({
    this.alertStrategy,
    required this.combiner,
    required this.conditions,
    required this.displayName,
    this.documentation,
    this.enabled,
    this.notificationChannels,
    this.project,
    this.severity,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alertStrategyValue = alertStrategy;
    if (alertStrategyValue != null) {
      map['alertStrategy'] = pulumi.Input.mapOptionalInputValue<
          AlertPolicyAlertStrategy,
          Map<String, dynamic>>(alertStrategyValue, (value) => value.toMap());
    }
    map['combiner'] = combiner;
    map['conditions'] = pulumi.Input.mapInputValue<List<AlertPolicyCondition>,
            List<Map<String, dynamic>>>(
        conditions,
        (value) =>
            pulumi.Input.encodeList<AlertPolicyCondition, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['displayName'] = displayName;
    final documentationValue = documentation;
    if (documentationValue != null) {
      map['documentation'] = pulumi.Input.mapOptionalInputValue<
          AlertPolicyDocumentation,
          Map<String, dynamic>>(documentationValue, (value) => value.toMap());
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final notificationChannelsValue = notificationChannels;
    if (notificationChannelsValue != null) {
      map['notificationChannels'] = notificationChannelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final severityValue = severity;
    if (severityValue != null) {
      map['severity'] = severityValue;
    }
    final userLabelsValue = userLabels;
    if (userLabelsValue != null) {
      map['userLabels'] = userLabelsValue;
    }
    return map;
  }

  factory AlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AlertPolicyArgs(
      alertStrategy: pulumi.Input.asOptionalInput<AlertPolicyAlertStrategy>(
          map['alertStrategy']),
      combiner: pulumi.Input.asInput<String>(map['combiner']),
      conditions:
          pulumi.Input.asInput<List<AlertPolicyCondition>>(map['conditions']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      documentation: pulumi.Input.asOptionalInput<AlertPolicyDocumentation>(
          map['documentation']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      notificationChannels: pulumi.Input.asOptionalInput<List<String>>(
          map['notificationChannels']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      severity: pulumi.Input.asOptionalInput<String>(map['severity']),
      userLabels:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['userLabels']),
    );
  }
}
