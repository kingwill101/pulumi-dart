// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStorageConfigBlockStorage {
  /// Indicates if the block storage capability is enabled on your EKS Auto Mode cluster. If the block storage capability is enabled, EKS Auto Mode will create and delete block storage volumes in your Amazon Web Services account.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ClusterStorageConfigBlockStorage].
  /// [enabled] Indicates if the block storage capability is enabled on your EKS Auto Mode cluster. If the block storage capability is enabled, EKS Auto Mode will create and delete block storage volumes in your Amazon Web Services account.
  ClusterStorageConfigBlockStorage({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ClusterStorageConfigBlockStorage.fromMap(Map<String, dynamic> map) {
    return ClusterStorageConfigBlockStorage(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

