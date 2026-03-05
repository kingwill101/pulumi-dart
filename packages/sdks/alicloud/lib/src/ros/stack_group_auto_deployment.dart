// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackGroupAutoDeployment {
  /// Enable or disable automatic deployment. Valid Values:
  final pulumi.Input<bool>? enabled;
  /// Whether to retain the stack in the member account when the member account is deleted from the target folder. Valid values:
  final pulumi.Input<bool>? retainStacksOnAccountRemoval;

  /// Creates a new [StackGroupAutoDeployment].
  /// [enabled] Enable or disable automatic deployment. Valid Values:
  /// [retainStacksOnAccountRemoval] Whether to retain the stack in the member account when the member account is deleted from the target folder. Valid values:
  StackGroupAutoDeployment({
    this.enabled,
    this.retainStacksOnAccountRemoval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'retainStacksOnAccountRemoval': ?retainStacksOnAccountRemoval,
    };
  }

  factory StackGroupAutoDeployment.fromMap(Map<String, dynamic> map) {
    return StackGroupAutoDeployment(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retainStacksOnAccountRemoval: (() { final guardedValue = map['retainStacksOnAccountRemoval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

