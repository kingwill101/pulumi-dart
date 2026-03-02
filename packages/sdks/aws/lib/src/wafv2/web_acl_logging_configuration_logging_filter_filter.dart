// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_logging_configuration_logging_filter_filter_condition.dart';

class WebAclLoggingConfigurationLoggingFilterFilter {
  /// Parameter that determines how to handle logs that meet the conditions and requirements of the filter. The valid values for `behavior` are `KEEP` or `DROP`.
  final pulumi.Input<String> behavior;
  /// Match condition(s) for the filter. See Condition below for more details.
  final pulumi.Input<List<WebAclLoggingConfigurationLoggingFilterFilterCondition>> conditions;
  /// Logic to apply to the filtering conditions. You can specify that a log must match all conditions or at least one condition in order to satisfy the filter. Valid values for `requirement` are `MEETS_ALL` or `MEETS_ANY`.
  final pulumi.Input<String> requirement;

  /// Creates a new [WebAclLoggingConfigurationLoggingFilterFilter].
  /// [behavior] Parameter that determines how to handle logs that meet the conditions and requirements of the filter. The valid values for `behavior` are `KEEP` or `DROP`.
  /// [conditions] Match condition(s) for the filter. See Condition below for more details.
  /// [requirement] Logic to apply to the filtering conditions. You can specify that a log must match all conditions or at least one condition in order to satisfy the filter. Valid values for `requirement` are `MEETS_ALL` or `MEETS_ANY`.
  WebAclLoggingConfigurationLoggingFilterFilter({
    required this.behavior,
    required this.conditions,
    required this.requirement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
      'conditions': pulumi.Input.mapInputValue<List<WebAclLoggingConfigurationLoggingFilterFilterCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<WebAclLoggingConfigurationLoggingFilterFilterCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requirement': requirement,
    };
  }

  factory WebAclLoggingConfigurationLoggingFilterFilter.fromMap(Map<String, dynamic> map) {
    return WebAclLoggingConfigurationLoggingFilterFilter(
      behavior: (map['behavior'] as String).input(),
      conditions: (pulumi.Input.decodeList<WebAclLoggingConfigurationLoggingFilterFilterCondition>(map['conditions'], (value) => WebAclLoggingConfigurationLoggingFilterFilterCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requirement: (map['requirement'] as String).input(),
    );
  }
}

