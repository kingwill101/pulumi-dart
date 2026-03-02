// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image Cleaner removes unused images from nodes, freeing up disk space and helping to reduce attack surface area. Here are settings for the security profile.
class ManagedClusterSecurityProfileImageCleaner {
  /// Whether to enable Image Cleaner on AKS cluster.
  final pulumi.Input<bool>? enabled;
  /// Image Cleaner scanning interval in hours.
  final pulumi.Input<int>? intervalHours;

  /// Creates a new [ManagedClusterSecurityProfileImageCleaner].
  /// [enabled] Whether to enable Image Cleaner on AKS cluster.
  /// [intervalHours] Image Cleaner scanning interval in hours.
  ManagedClusterSecurityProfileImageCleaner({
    this.enabled,
    this.intervalHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'intervalHours': ?intervalHours,
    };
  }

  factory ManagedClusterSecurityProfileImageCleaner.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSecurityProfileImageCleaner(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      intervalHours: map['intervalHours'] == null ? null : (map['intervalHours'] as int).input(),
    );
  }
}

