// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutability Settings at vault level
class ImmutabilitySettings {
  /// Immutability state
  final pulumi.Input<String>? state;

  /// Creates a new [ImmutabilitySettings].
  /// [state] Immutability state
  ImmutabilitySettings({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state};
  }

  factory ImmutabilitySettings.fromMap(Map<String, dynamic> map) {
    return ImmutabilitySettings(
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
