// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_response.dart';

/// Definition of LoggingFilterModelProperties
class LoggingFilterModelPropertiesResponse {
  /// Default handling for logs that don't match any of the specified filtering conditions.
  final pulumi.Input<String>? defaultBehavior;
  /// The filters that you want to apply to the logs.
  final pulumi.Input<List<FilterResponse>>? filters;

  /// Creates a new [LoggingFilterModelPropertiesResponse].
  /// [defaultBehavior] Default handling for logs that don't match any of the specified filtering conditions.
  /// [filters] The filters that you want to apply to the logs.
  LoggingFilterModelPropertiesResponse({
    this.defaultBehavior,
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBehavior': ?defaultBehavior,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<FilterResponse>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<FilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoggingFilterModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoggingFilterModelPropertiesResponse(
      defaultBehavior: map['defaultBehavior'] == null ? null : (map['defaultBehavior'] as String).input(),
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<FilterResponse>(map['filters'], (value) => FilterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

