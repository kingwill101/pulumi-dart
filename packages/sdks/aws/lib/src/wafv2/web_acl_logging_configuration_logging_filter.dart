// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_logging_configuration_logging_filter_filter.dart';

class WebAclLoggingConfigurationLoggingFilter {
  /// Default handling for logs that don't match any of the specified filtering conditions. Valid values for `default_behavior` are `KEEP` or `DROP`.
  final pulumi.Input<String> defaultBehavior;

  /// Filter(s) that you want to apply to the logs. See Filter below for more details.
  final pulumi.Input<List<WebAclLoggingConfigurationLoggingFilterFilter>>
  filters;

  /// Creates a new [WebAclLoggingConfigurationLoggingFilter].
  /// [defaultBehavior] Default handling for logs that don't match any of the specified filtering conditions. Valid values for `default_behavior` are `KEEP` or `DROP`.
  /// [filters] Filter(s) that you want to apply to the logs. See Filter below for more details.
  WebAclLoggingConfigurationLoggingFilter({
    required this.defaultBehavior,
    required this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBehavior': defaultBehavior,
      'filters':
          pulumi.Input.mapInputValue<
            List<WebAclLoggingConfigurationLoggingFilterFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  WebAclLoggingConfigurationLoggingFilterFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory WebAclLoggingConfigurationLoggingFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclLoggingConfigurationLoggingFilter(
      defaultBehavior: pulumi.Input.fromValue(map['defaultBehavior'] as String),
      filters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<WebAclLoggingConfigurationLoggingFilterFilter>(
          map['filters']!,
          (value) => WebAclLoggingConfigurationLoggingFilterFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
