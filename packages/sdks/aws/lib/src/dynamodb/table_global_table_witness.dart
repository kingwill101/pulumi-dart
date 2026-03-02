// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableGlobalTableWitness {
  /// Name of the AWS Region that serves as a witness for the MRSC global table.
  final pulumi.Input<String>? regionName;

  /// Creates a new [TableGlobalTableWitness].
  /// [regionName] Name of the AWS Region that serves as a witness for the MRSC global table.
  TableGlobalTableWitness({
    this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': ?regionName,
    };
  }

  factory TableGlobalTableWitness.fromMap(Map<String, dynamic> map) {
    return TableGlobalTableWitness(
      regionName: map['regionName'] == null ? null : ((map['regionName'] as String).input()).input(),
    );
  }
}

