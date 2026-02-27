// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_logging_configuration_logging_filter_filter_condition/web_acl_logging_configuration_logging_filter_filter_condition.dart';

class WebAclLoggingConfigurationLoggingFilterFilter {
  /// Parameter that determines how to handle logs that meet the conditions and requirements of the filter. The valid values for `behavior` are `KEEP` or `DROP`.
  final String behavior;

  /// Match condition(s) for the filter. See Condition below for more details.
  final List<WebAclLoggingConfigurationLoggingFilterFilterCondition> conditions;

  /// Logic to apply to the filtering conditions. You can specify that a log must match all conditions or at least one condition in order to satisfy the filter. Valid values for `requirement` are `MEETS_ALL` or `MEETS_ANY`.
  final String requirement;

  WebAclLoggingConfigurationLoggingFilterFilter({
    required this.behavior,
    required this.conditions,
    required this.requirement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['behavior'] = behavior;
    map['conditions'] = Input.encodeList<
        WebAclLoggingConfigurationLoggingFilterFilterCondition,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    map['requirement'] = requirement;
    return map;
  }

  factory WebAclLoggingConfigurationLoggingFilterFilter.fromMap(
      Map<String, dynamic> map) {
    return WebAclLoggingConfigurationLoggingFilterFilter(
      behavior: map['behavior'] as String,
      conditions: Input.decodeList<
              WebAclLoggingConfigurationLoggingFilterFilterCondition>(
          map['conditions'],
          (value) =>
              WebAclLoggingConfigurationLoggingFilterFilterCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      requirement: map['requirement'] as String,
    );
  }
}
