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
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      retainStacksOnAccountRemoval: map['retainStacksOnAccountRemoval'] == null ? null : (map['retainStacksOnAccountRemoval'] as bool).input(),
    );
  }
}

