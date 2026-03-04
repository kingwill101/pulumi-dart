// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies ProxyAgent settings while creating the virtual machine. Minimum
/// api-version: 2023-09-01.
class ProxyAgentSettings {
  /// Specifies whether ProxyAgent feature should be enabled on the virtual machine
  /// or virtual machine scale set.
  final pulumi.Input<bool>? enabled;

  /// Increase the value of this property allows user to reset the key used for
  /// securing communication channel between guest and host.
  final pulumi.Input<int>? keyIncarnationId;

  /// Specifies the mode that ProxyAgent will execute on if the feature is enabled.
  /// ProxyAgent will start to audit or monitor but not enforce access control over
  /// requests to host endpoints in Audit mode, while in Enforce mode it will enforce
  /// access control. The default value is Enforce mode.
  final pulumi.Input<String>? mode;

  /// Creates a new [ProxyAgentSettings].
  /// [enabled] Specifies whether ProxyAgent feature should be enabled on the virtual machine
  /// [keyIncarnationId] Increase the value of this property allows user to reset the key used for
  /// [mode] Specifies the mode that ProxyAgent will execute on if the feature is enabled.
  ProxyAgentSettings({this.enabled, this.keyIncarnationId, this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'keyIncarnationId': ?keyIncarnationId,
      'mode': ?mode,
    };
  }

  factory ProxyAgentSettings.fromMap(Map<String, dynamic> map) {
    return ProxyAgentSettings(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      keyIncarnationId: (() {
        final guardedValue = map['keyIncarnationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
