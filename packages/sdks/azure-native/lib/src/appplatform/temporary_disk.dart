// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Temporary disk payload
class TemporaryDisk {
  /// Mount path of the temporary disk
  final pulumi.Input<String?>? mountPath;
  /// Size of the temporary disk in GB
  final pulumi.Input<int?>? sizeInGB;

  /// Creates a new [TemporaryDisk].
  /// [mountPath] Mount path of the temporary disk
  /// [sizeInGB] Size of the temporary disk in GB
  TemporaryDisk({
    pulumi.Input<String?>? mountPath,
    this.sizeInGB,
  }) : mountPath = mountPath ?? pulumi.Input.fromValue('/tmp');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'sizeInGB': ?sizeInGB,
    };
  }

  factory TemporaryDisk.fromMap(Map<String, dynamic> map) {
    return TemporaryDisk(
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInGB: (() { final guardedValue = map['sizeInGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
