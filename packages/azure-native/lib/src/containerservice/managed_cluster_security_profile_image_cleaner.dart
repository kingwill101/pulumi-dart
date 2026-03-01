// ignore_for_file: unused_element, unnecessary_cast


/// Image Cleaner removes unused images from nodes, freeing up disk space and helping to reduce attack surface area. Here are settings for the security profile.
class ManagedClusterSecurityProfileImageCleaner {
  /// Whether to enable Image Cleaner on AKS cluster.
  final bool? enabled;
  /// Image Cleaner scanning interval in hours.
  final int? intervalHours;

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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      intervalHours: map['intervalHours'] == null ? null : map['intervalHours'] as int,
    );
  }
}

