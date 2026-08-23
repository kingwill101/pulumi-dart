// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for action
class ActionConfigurationResponse {
  /// The access level of the action
  final pulumi.Input<String>? accessLevel;
  /// The identity used by the action
  final pulumi.Input<String>? identity;
  /// The mode of the action
  final pulumi.Input<String>? mode;

  /// Creates a new [ActionConfigurationResponse].
  /// [accessLevel] The access level of the action
  /// [identity] The identity used by the action
  /// [mode] The mode of the action
  const ActionConfigurationResponse({
    this.accessLevel,
    this.identity,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': ?accessLevel,
      'identity': ?identity,
      'mode': ?mode,
    };
  }

  factory ActionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ActionConfigurationResponse(
      accessLevel: (() { final guardedValue = map['accessLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
