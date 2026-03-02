// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_logging_configuration_logging_filter_filter_condition_action_condition.dart';
import 'web_acl_logging_configuration_logging_filter_filter_condition_label_name_condition.dart';

class WebAclLoggingConfigurationLoggingFilterFilterCondition {
  /// Configuration for a single action condition. See Action Condition below for more details.
  final pulumi.Input<WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition>? actionCondition;
  /// Condition for a single label name. See Label Name Condition below for more details.
  final pulumi.Input<WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameCondition>? labelNameCondition;

  /// Creates a new [WebAclLoggingConfigurationLoggingFilterFilterCondition].
  /// [actionCondition] Configuration for a single action condition. See Action Condition below for more details.
  /// [labelNameCondition] Condition for a single label name. See Label Name Condition below for more details.
  WebAclLoggingConfigurationLoggingFilterFilterCondition({
    this.actionCondition,
    this.labelNameCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionCondition': ?pulumi.Input.mapOptionalInputValue<WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition, Map<String, dynamic>>(actionCondition, (value) => value.toMap()),
      'labelNameCondition': ?pulumi.Input.mapOptionalInputValue<WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameCondition, Map<String, dynamic>>(labelNameCondition, (value) => value.toMap()),
    };
  }

  factory WebAclLoggingConfigurationLoggingFilterFilterCondition.fromMap(Map<String, dynamic> map) {
    return WebAclLoggingConfigurationLoggingFilterFilterCondition(
      actionCondition: map['actionCondition'] == null ? null : ((WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition.fromMap((map['actionCondition']! as Map).cast<String, dynamic>())).input()).input(),
      labelNameCondition: map['labelNameCondition'] == null ? null : ((WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameCondition.fromMap((map['labelNameCondition']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

