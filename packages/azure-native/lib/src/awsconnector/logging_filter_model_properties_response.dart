// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_response.dart';

/// Definition of LoggingFilterModelProperties
class LoggingFilterModelPropertiesResponse {
  /// Default handling for logs that don't match any of the specified filtering conditions.
  final String? defaultBehavior;
  /// The filters that you want to apply to the logs.
  final List<FilterResponse>? filters;

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
      'filters': ?filters == null ? null : pulumi.Input.encodeList<FilterResponse, Map<String, dynamic>>(filters!, (value) => value.toMap()),
    };
  }

  factory LoggingFilterModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoggingFilterModelPropertiesResponse(
      defaultBehavior: map['defaultBehavior'] == null ? null : map['defaultBehavior'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<FilterResponse>(map['filters'], (value) => FilterResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

