// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerDeletionProtectionConfig {
  /// Specifies whether to enable deletion protection. Valid values:
  final bool? enabled;
  /// Opening time of the configuration read-only mode.
  final String? enabledTime;
  /// The reason why deletion protection is enabled. The reason must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The reason must start with a letter.
  ///
  ///
  /// > **NOTE:**  This parameter takes effect only when `DeletionProtectionEnabled` is set to `true`.
  final String? reason;

  /// Creates a new [LoadBalancerDeletionProtectionConfig].
  /// [enabled] Specifies whether to enable deletion protection. Valid values:
  /// [enabledTime] Opening time of the configuration read-only mode.
  /// [reason] The reason why deletion protection is enabled. The reason must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The reason must start with a letter.
  LoadBalancerDeletionProtectionConfig({
    this.enabled,
    this.enabledTime,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'enabledTime': ?enabledTime,
      'reason': ?reason,
    };
  }

  factory LoadBalancerDeletionProtectionConfig.fromMap(Map<String, dynamic> map) {
    return LoadBalancerDeletionProtectionConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      enabledTime: map['enabledTime'] == null ? null : map['enabledTime'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}

