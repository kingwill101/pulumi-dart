// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The order by expression to be used in the report.
class ReportConfigSorting {
  /// Direction of sort.
  final pulumi.Input<String>? direction;
  /// The name of the column to sort.
  final pulumi.Input<String> name;

  /// Creates a new [ReportConfigSorting].
  /// [direction] Direction of sort.
  /// [name] The name of the column to sort.
  ReportConfigSorting({
    this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'name': name,
    };
  }

  factory ReportConfigSorting.fromMap(Map<String, dynamic> map) {
    return ReportConfigSorting(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

