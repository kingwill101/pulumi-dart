// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Persistent disk payload
class PersistentDiskResponse {
  /// Mount path of the persistent disk
  final pulumi.Input<String>? mountPath;
  /// Size of the persistent disk in GB
  final pulumi.Input<int>? sizeInGB;
  /// Size of the used persistent disk in GB
  final pulumi.Input<int> usedInGB;

  /// Creates a new [PersistentDiskResponse].
  /// [mountPath] Mount path of the persistent disk
  /// [sizeInGB] Size of the persistent disk in GB
  /// [usedInGB] Size of the used persistent disk in GB
  PersistentDiskResponse({
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
      mountPath: map['mountPath'] == null ? null : (map['mountPath'] as String).input(),
      sizeInGB: map['sizeInGB'] == null ? null : (map['sizeInGB'] as int).input(),
      usedInGB: (map['usedInGB'] as int).input(),
    );
  }
}

