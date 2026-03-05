// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityTokenServicePreferences resources.
class SecurityTokenServicePreferencesState {
  /// The version of the STS global endpoint token. Valid values: `v1Token`, `v2Token`.
  final pulumi.Input<String>? globalEndpointTokenVersion;

  /// Creates a new [SecurityTokenServicePreferencesState].
  /// [globalEndpointTokenVersion] The version of the STS global endpoint token. Valid values: `v1Token`, `v2Token`.
  SecurityTokenServicePreferencesState({
    this.globalEndpointTokenVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalEndpointTokenVersion': ?globalEndpointTokenVersion,
    };
  }

  factory SecurityTokenServicePreferencesState.fromMap(Map<String, dynamic> map) {
    return SecurityTokenServicePreferencesState(
      globalEndpointTokenVersion: (() { final guardedValue = map['globalEndpointTokenVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

