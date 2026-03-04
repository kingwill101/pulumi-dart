// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerBackupPlansFilter {
  /// The key of the field to filter. Valid values: `planId`, `instanceId`, `planName`.
  final pulumi.Input<String>? key;

  /// Set of values that are accepted for the given field.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GetServerBackupPlansFilter].
  /// [key] The key of the field to filter. Valid values: `planId`, `instanceId`, `planName`.
  /// [values] Set of values that are accepted for the given field.
  GetServerBackupPlansFilter({this.key, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'values': ?values};
  }

  factory GetServerBackupPlansFilter.fromMap(Map<String, dynamic> map) {
    return GetServerBackupPlansFilter(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
