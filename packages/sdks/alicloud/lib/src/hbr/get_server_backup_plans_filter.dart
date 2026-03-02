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
  GetServerBackupPlansFilter({
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'values': ?values,
    };
  }

  factory GetServerBackupPlansFilter.fromMap(Map<String, dynamic> map) {
    return GetServerBackupPlansFilter(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

