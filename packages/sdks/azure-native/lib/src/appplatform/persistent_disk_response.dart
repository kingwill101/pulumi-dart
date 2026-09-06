// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Persistent disk payload
class PersistentDiskResponse {
  /// Mount path of the persistent disk
  final pulumi.Input<String?>? mountPath;
  /// Size of the persistent disk in GB
  final pulumi.Input<int?>? sizeInGB;
  /// Size of the used persistent disk in GB
  final pulumi.Input<int> usedInGB;

  /// Creates a new [PersistentDiskResponse].
  /// [mountPath] Mount path of the persistent disk
  /// [sizeInGB] Size of the persistent disk in GB
  /// [usedInGB] Size of the used persistent disk in GB
  const PersistentDiskResponse({
    this.mountPath,
    this.sizeInGB,
    required this.usedInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'sizeInGB': ?sizeInGB,
      'usedInGB': usedInGB,
    };
  }

  factory PersistentDiskResponse.fromMap(Map<String, dynamic> map) {
    return PersistentDiskResponse(
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInGB: (() { final guardedValue = map['sizeInGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      usedInGB: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['usedInGB'])),
    );
  }
}
