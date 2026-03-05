// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackSetAutoDeployment {
  /// Whether or not auto-deployment is enabled.
  final pulumi.Input<bool>? enabled;
  /// Whether or not to retain stacks when the account is removed.
  final pulumi.Input<bool>? retainStacksOnAccountRemoval;

  /// Creates a new [StackSetAutoDeployment].
  /// [enabled] Whether or not auto-deployment is enabled.
  /// [retainStacksOnAccountRemoval] Whether or not to retain stacks when the account is removed.
  StackSetAutoDeployment({
    this.enabled,
    this.retainStacksOnAccountRemoval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'retainStacksOnAccountRemoval': ?retainStacksOnAccountRemoval,
    };
  }

  factory StackSetAutoDeployment.fromMap(Map<String, dynamic> map) {
    return StackSetAutoDeployment(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retainStacksOnAccountRemoval: (() { final guardedValue = map['retainStacksOnAccountRemoval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

