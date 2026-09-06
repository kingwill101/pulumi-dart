// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A data disks attached to a virtual machine.
class ComputeDataDiskResponse {
  /// Gets data disk size in GiB.
  final pulumi.Input<int?>? diskSizeGiB;
  /// When backed by a blob, the URI of underlying blob.
  final pulumi.Input<String?>? diskUri;
  /// When backed by managed disk, this is the ID of the compute disk resource.
  final pulumi.Input<String?>? managedDiskId;
  /// Gets data disk name.
  final pulumi.Input<String?>? name;

  /// Creates a new [ComputeDataDiskResponse].
  /// [diskSizeGiB] Gets data disk size in GiB.
  /// [diskUri] When backed by a blob, the URI of underlying blob.
  /// [managedDiskId] When backed by managed disk, this is the ID of the compute disk resource.
  /// [name] Gets data disk name.
  const ComputeDataDiskResponse({
    this.diskSizeGiB,
    this.diskUri,
    this.managedDiskId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGiB': ?diskSizeGiB,
      'diskUri': ?diskUri,
      'managedDiskId': ?managedDiskId,
      'name': ?name,
    };
  }

  factory ComputeDataDiskResponse.fromMap(Map<String, dynamic> map) {
    return ComputeDataDiskResponse(
      diskSizeGiB: (() { final guardedValue = map['diskSizeGiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      diskUri: (() { final guardedValue = map['diskUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedDiskId: (() { final guardedValue = map['managedDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
