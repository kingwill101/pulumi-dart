// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCellsFilterTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final pulumi.Input<String?>? create;

  /// Creates a new [DataCellsFilterTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  const DataCellsFilterTimeouts({
    this.create,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
    };
  }

  factory DataCellsFilterTimeouts.fromMap(Map<String, dynamic> map) {
    return DataCellsFilterTimeouts(
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
