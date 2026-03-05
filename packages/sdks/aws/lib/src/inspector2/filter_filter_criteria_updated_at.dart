// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilterFilterCriteriaUpdatedAt {
  /// (Required) The end of the port range, inclusive.
  final pulumi.Input<String>? endInclusive;
  /// (Optional) Start of the date range in RFC 3339 format, inclusive. Set the timezone to UTC.
  final pulumi.Input<String>? startInclusive;

  /// Creates a new [FilterFilterCriteriaUpdatedAt].
  /// [endInclusive] (Required) The end of the port range, inclusive.
  /// [startInclusive] (Optional) Start of the date range in RFC 3339 format, inclusive. Set the timezone to UTC.
  FilterFilterCriteriaUpdatedAt({
    this.endInclusive,
    this.startInclusive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endInclusive': ?endInclusive,
      'startInclusive': ?startInclusive,
    };
  }

  factory FilterFilterCriteriaUpdatedAt.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaUpdatedAt(
      endInclusive: (() { final guardedValue = map['endInclusive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startInclusive: (() { final guardedValue = map['startInclusive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

