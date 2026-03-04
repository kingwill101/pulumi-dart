// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Microsoft Defender settings for the security profile threat detection.
class ManagedClusterSecurityProfileDefenderSecurityMonitoring {
  /// Whether to enable Defender threat detection
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterSecurityProfileDefenderSecurityMonitoring].
  /// [enabled] Whether to enable Defender threat detection
  ManagedClusterSecurityProfileDefenderSecurityMonitoring({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory ManagedClusterSecurityProfileDefenderSecurityMonitoring.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedClusterSecurityProfileDefenderSecurityMonitoring(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
