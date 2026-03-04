// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerDeletionProtectionConfig {
  /// Specifies whether to enable deletion protection. Valid values:
  final pulumi.Input<bool>? enabled;

  /// Opening time of the configuration read-only mode.
  final pulumi.Input<String>? enabledTime;

  /// The reason why deletion protection is enabled. The reason must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The reason must start with a letter.
  ///
  ///
  /// &gt; **NOTE:**  This parameter takes effect only when `DeletionProtectionEnabled` is set to `true`.
  final pulumi.Input<String>? reason;

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

  factory LoadBalancerDeletionProtectionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerDeletionProtectionConfig(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabledTime: (() {
        final guardedValue = map['enabledTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reason: (() {
        final guardedValue = map['reason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
