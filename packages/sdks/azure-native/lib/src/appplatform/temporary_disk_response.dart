// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Temporary disk payload
class TemporaryDiskResponse {
  /// Mount path of the temporary disk
  final pulumi.Input<String>? mountPath;
  /// Size of the temporary disk in GB
  final pulumi.Input<int>? sizeInGB;

  /// Creates a new [TemporaryDiskResponse].
  /// [mountPath] Mount path of the temporary disk
  /// [sizeInGB] Size of the temporary disk in GB
  const TemporaryDiskResponse({
    this.mountPath,
    this.sizeInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'sizeInGB': ?sizeInGB,
    };
  }

  factory TemporaryDiskResponse.fromMap(Map<String, dynamic> map) {
    return TemporaryDiskResponse(
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInGB: (() { final guardedValue = map['sizeInGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

