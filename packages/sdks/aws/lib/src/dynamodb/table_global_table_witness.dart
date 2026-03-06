// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableGlobalTableWitness {
  /// Name of the AWS Region that serves as a witness for the MRSC global table.
  final pulumi.Input<String>? regionName;

  /// Creates a new [TableGlobalTableWitness].
  /// [regionName] Name of the AWS Region that serves as a witness for the MRSC global table.
  const TableGlobalTableWitness({
    this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': ?regionName,
    };
  }

  factory TableGlobalTableWitness.fromMap(Map<String, dynamic> map) {
    return TableGlobalTableWitness(
      regionName: (() { final guardedValue = map['regionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

