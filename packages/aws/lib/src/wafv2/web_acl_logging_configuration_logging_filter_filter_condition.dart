// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_logging_configuration_logging_filter_filter_condition_action_condition.dart';
import 'web_acl_logging_configuration_logging_filter_filter_condition_label_name_condition.dart';

class WebAclLoggingConfigurationLoggingFilterFilterCondition {
  /// Configuration for a single action condition. See Action Condition below for more details.
  final WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition?
  actionCondition;

  /// Condition for a single label name. See Label Name Condition below for more details.
  final WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameCondition?
  labelNameCondition;

  /// Creates a new [WebAclLoggingConfigurationLoggingFilterFilterCondition].
  /// [actionCondition] Configuration for a single action condition. See Action Condition below for more details.
  /// [labelNameCondition] Condition for a single label name. See Label Name Condition below for more details.
  WebAclLoggingConfigurationLoggingFilterFilterCondition({
    this.actionCondition,
    this.labelNameCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionCondition': ?actionCondition == null
          ? null
          : actionCondition!.toMap(),
      'labelNameCondition': ?labelNameCondition == null
          ? null
          : labelNameCondition!.toMap(),
    };
  }

  factory WebAclLoggingConfigurationLoggingFilterFilterCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclLoggingConfigurationLoggingFilterFilterCondition(
      actionCondition: map['actionCondition'] == null
          ? null
          : WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition.fromMap(
              (map['actionCondition'] as Map).cast<String, dynamic>(),
            ),
      labelNameCondition: map['labelNameCondition'] == null
          ? null
          : WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameCondition.fromMap(
              (map['labelNameCondition'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
