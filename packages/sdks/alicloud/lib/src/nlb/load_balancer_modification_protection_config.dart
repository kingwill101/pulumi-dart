// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerModificationProtectionConfig {
  /// Opening time of the configuration read-only mode.
  final pulumi.Input<String>? enabledTime;
  /// The reason why the configuration read-only mode is enabled. The value must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The value must start with a letter.
  ///
  /// &gt; **NOTE:**   This parameter takes effect only if the `status` parameter is set to `ConsoleProtection`.
  final pulumi.Input<String>? reason;
  /// Specifies whether to enable the configuration read-only mode. Valid values:
  /// - `NonProtection`: disables the configuration read-only mode. In this case, you cannot set the `ModificationProtectionReason` parameter. If you specify `ModificationProtectionReason`, the value is cleared.
  /// - `ConsoleProtection`: enables the configuration read-only mode. In this case, you can specify `ModificationProtectionReason`.
  ///
  /// &gt; **NOTE:**  If you set this parameter to `ConsoleProtection`, you cannot use the NLB console to modify instance configurations. However, you can call API operations to modify instance configurations.
  final pulumi.Input<String>? status;

  /// Creates a new [LoadBalancerModificationProtectionConfig].
  /// [enabledTime] Opening time of the configuration read-only mode.
  /// [reason] The reason why the configuration read-only mode is enabled. The value must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The value must start with a letter.
  /// [status] Specifies whether to enable the configuration read-only mode. Valid values:
  const LoadBalancerModificationProtectionConfig({
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
      enabledTime: (() { final guardedValue = map['enabledTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

