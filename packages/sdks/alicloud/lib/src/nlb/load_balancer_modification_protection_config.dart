// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerModificationProtectionConfig {
  /// Opening time of the configuration read-only mode.
  final String? enabledTime;
  /// The reason why the configuration read-only mode is enabled. The value must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The value must start with a letter.
  ///
  /// > **NOTE:**   This parameter takes effect only if the `status` parameter is set to `ConsoleProtection`.
  final String? reason;
  /// Specifies whether to enable the configuration read-only mode. Valid values:
  /// - `NonProtection`: disables the configuration read-only mode. In this case, you cannot set the `ModificationProtectionReason` parameter. If you specify `ModificationProtectionReason`, the value is cleared.
  /// - `ConsoleProtection`: enables the configuration read-only mode. In this case, you can specify `ModificationProtectionReason`.
  ///
  /// > **NOTE:**  If you set this parameter to `ConsoleProtection`, you cannot use the NLB console to modify instance configurations. However, you can call API operations to modify instance configurations.
  final String? status;

  /// Creates a new [LoadBalancerModificationProtectionConfig].
  /// [enabledTime] Opening time of the configuration read-only mode.
  /// [reason] The reason why the configuration read-only mode is enabled. The value must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The value must start with a letter.
  /// [status] Specifies whether to enable the configuration read-only mode. Valid values:
  LoadBalancerModificationProtectionConfig({
    this.enabledTime,
    this.reason,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledTime': ?enabledTime,
      'reason': ?reason,
      'status': ?status,
    };
  }

  factory LoadBalancerModificationProtectionConfig.fromMap(Map<String, dynamic> map) {
    return LoadBalancerModificationProtectionConfig(
      enabledTime: map['enabledTime'] == null ? null : map['enabledTime'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

