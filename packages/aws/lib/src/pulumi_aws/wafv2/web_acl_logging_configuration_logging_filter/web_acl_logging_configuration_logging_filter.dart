// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_logging_configuration_logging_filter_filter/web_acl_logging_configuration_logging_filter_filter.dart';

class WebAclLoggingConfigurationLoggingFilter {
  /// Default handling for logs that don't match any of the specified filtering conditions. Valid values for <span pulumi-lang-nodejs="`defaultBehavior`" pulumi-lang-dotnet="`DefaultBehavior`" pulumi-lang-go="`defaultBehavior`" pulumi-lang-python="`default_behavior`" pulumi-lang-yaml="`defaultBehavior`" pulumi-lang-java="`defaultBehavior`">`default_behavior`</span> are `KEEP` or `DROP`.
  final String defaultBehavior;

  /// Filter(s) that you want to apply to the logs. See Filter below for more details.
  final List<WebAclLoggingConfigurationLoggingFilterFilter> filters;

  WebAclLoggingConfigurationLoggingFilter({
    required this.defaultBehavior,
    required this.filters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultBehavior'] = defaultBehavior;
    map['filters'] = Input.encodeList<
        WebAclLoggingConfigurationLoggingFilterFilter,
        Map<String, dynamic>>(filters, (value) => value.toMap());
    return map;
  }

  factory WebAclLoggingConfigurationLoggingFilter.fromMap(
      Map<String, dynamic> map) {
    return WebAclLoggingConfigurationLoggingFilter(
      defaultBehavior: map['defaultBehavior'] as String,
      filters: Input.decodeList<WebAclLoggingConfigurationLoggingFilterFilter>(
          map['filters'],
          (value) => WebAclLoggingConfigurationLoggingFilterFilter.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
