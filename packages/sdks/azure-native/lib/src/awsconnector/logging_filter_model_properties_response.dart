// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_wafv2_logging_configuration_response.dart';

/// Definition of LoggingFilterModelProperties
class LoggingFilterModelPropertiesResponse {
  /// Default handling for logs that don't match any of the specified filtering conditions.
  final pulumi.Input<String>? defaultBehavior;
  /// The filters that you want to apply to the logs.
  final pulumi.Input<List<FilterWafv2LoggingConfigurationResponse>>? filters;

  /// Creates a new [LoggingFilterModelPropertiesResponse].
  /// [defaultBehavior] Default handling for logs that don't match any of the specified filtering conditions.
  /// [filters] The filters that you want to apply to the logs.
  const LoggingFilterModelPropertiesResponse({
    this.defaultBehavior,
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBehavior': ?defaultBehavior,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<FilterWafv2LoggingConfigurationResponse>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<FilterWafv2LoggingConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoggingFilterModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoggingFilterModelPropertiesResponse(
      defaultBehavior: (() { final guardedValue = map['defaultBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterWafv2LoggingConfigurationResponse>(guardedValue, (value) => FilterWafv2LoggingConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
