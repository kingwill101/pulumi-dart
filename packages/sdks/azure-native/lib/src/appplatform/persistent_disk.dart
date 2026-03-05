// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Persistent disk payload
class PersistentDisk {
  /// Mount path of the persistent disk
  final pulumi.Input<String>? mountPath;
  /// Size of the persistent disk in GB
  final pulumi.Input<int>? sizeInGB;

  /// Creates a new [PersistentDisk].
  /// [mountPath] Mount path of the persistent disk
  /// [sizeInGB] Size of the persistent disk in GB
  PersistentDisk({
    this.mountPath,
    this.sizeInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'sizeInGB': ?sizeInGB,
    };
  }

  factory PersistentDisk.fromMap(Map<String, dynamic> map) {
    return PersistentDisk(
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInGB: (() { final guardedValue = map['sizeInGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

