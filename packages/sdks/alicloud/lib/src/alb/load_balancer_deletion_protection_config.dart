// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerDeletionProtectionConfig {
  /// Remove the Protection Status
  final bool? enabled;
  /// Deletion Protection Turn-on Time Use Greenwich Mean Time, in the Format of Yyyy-MM-ddTHH: mm: SSZ
  final String? enabledTime;

  /// Creates a new [LoadBalancerDeletionProtectionConfig].
  /// [enabled] Remove the Protection Status
  /// [enabledTime] Deletion Protection Turn-on Time Use Greenwich Mean Time, in the Format of Yyyy-MM-ddTHH: mm: SSZ
  LoadBalancerDeletionProtectionConfig({
    this.enabled,
    this.enabledTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'enabledTime': ?enabledTime,
    };
  }

  factory LoadBalancerDeletionProtectionConfig.fromMap(Map<String, dynamic> map) {
    return LoadBalancerDeletionProtectionConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      enabledTime: map['enabledTime'] == null ? null : map['enabledTime'] as String,
    );
  }
}

