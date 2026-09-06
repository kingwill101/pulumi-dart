// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties to attach new disk to the Virtual Machine.
class AttachNewDataDiskOptionsResponse {
  /// The name of the disk to be attached.
  final pulumi.Input<String?>? diskName;
  /// Size of the disk to be attached in Gibibytes.
  final pulumi.Input<int?>? diskSizeGiB;
  /// The storage type for the disk (i.e. Standard, Premium).
  final pulumi.Input<String?>? diskType;

  /// Creates a new [AttachNewDataDiskOptionsResponse].
  /// [diskName] The name of the disk to be attached.
  /// [diskSizeGiB] Size of the disk to be attached in Gibibytes.
  /// [diskType] The storage type for the disk (i.e. Standard, Premium).
  const AttachNewDataDiskOptionsResponse({
    this.diskName,
    this.diskSizeGiB,
    this.diskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskName': ?diskName,
      'diskSizeGiB': ?diskSizeGiB,
      'diskType': ?diskType,
    };
  }

  factory AttachNewDataDiskOptionsResponse.fromMap(Map<String, dynamic> map) {
    return AttachNewDataDiskOptionsResponse(
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGiB: (() { final guardedValue = map['diskSizeGiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
