// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter.dart';

/// Definition of LoggingFilterModelProperties
class LoggingFilterModelProperties {
  /// Default handling for logs that don't match any of the specified filtering conditions.
  final String? defaultBehavior;
  /// The filters that you want to apply to the logs.
  final List<Filter>? filters;

  /// Creates a new [LoggingFilterModelProperties].
  /// [defaultBehavior] Default handling for logs that don't match any of the specified filtering conditions.
  /// [filters] The filters that you want to apply to the logs.
  LoggingFilterModelProperties({
    this.defaultBehavior,
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBehavior': ?defaultBehavior,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<Filter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
    };
  }

  factory LoggingFilterModelProperties.fromMap(Map<String, dynamic> map) {
    return LoggingFilterModelProperties(
      defaultBehavior: map['defaultBehavior'] == null ? null : map['defaultBehavior'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<Filter>(map['filters'], (value) => Filter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

