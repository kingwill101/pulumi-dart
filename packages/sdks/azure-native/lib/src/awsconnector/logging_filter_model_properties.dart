// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter.dart';

/// Definition of LoggingFilterModelProperties
class LoggingFilterModelProperties {
  /// Default handling for logs that don't match any of the specified filtering conditions.
  final pulumi.Input<String>? defaultBehavior;
  /// The filters that you want to apply to the logs.
  final pulumi.Input<List<Filter>>? filters;

  /// Creates a new [LoggingFilterModelProperties].
  /// [defaultBehavior] Default handling for logs that don't match any of the specified filtering conditions.
  /// [filters] The filters that you want to apply to the logs.
  const LoggingFilterModelProperties({
    this.defaultBehavior,
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBehavior': ?defaultBehavior,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<Filter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<Filter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoggingFilterModelProperties.fromMap(Map<String, dynamic> map) {
    return LoggingFilterModelProperties(
      defaultBehavior: (() { final guardedValue = map['defaultBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Filter>(guardedValue, (value) => Filter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

