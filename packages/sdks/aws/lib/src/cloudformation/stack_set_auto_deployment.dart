// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackSetAutoDeployment {
  /// A list of StackSet ARNs that this StackSet depends on for auto-deployment operations. When auto-deployment is triggered, operations will be sequenced to ensure all dependencies complete successfully before this StackSet's operation begins.
  final pulumi.Input<List<String>?>? dependsOnStackSets;
  /// Whether or not auto-deployment is enabled.
  final pulumi.Input<bool?>? enabled;
  /// Whether or not to retain stacks when the account is removed.
  final pulumi.Input<bool?>? retainStacksOnAccountRemoval;

  /// Creates a new [StackSetAutoDeployment].
  /// [dependsOnStackSets] A list of StackSet ARNs that this StackSet depends on for auto-deployment operations. When auto-deployment is triggered, operations will be sequenced to ensure all dependencies complete successfully before this StackSet's operation begins.
  /// [enabled] Whether or not auto-deployment is enabled.
  /// [retainStacksOnAccountRemoval] Whether or not to retain stacks when the account is removed.
  const StackSetAutoDeployment({
    this.dependsOnStackSets,
    this.enabled,
    this.retainStacksOnAccountRemoval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOnStackSets': ?dependsOnStackSets,
      'enabled': ?enabled,
      'retainStacksOnAccountRemoval': ?retainStacksOnAccountRemoval,
    };
  }

  factory StackSetAutoDeployment.fromMap(Map<String, dynamic> map) {
    return StackSetAutoDeployment(
      dependsOnStackSets: (() { final guardedValue = map['dependsOnStackSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retainStacksOnAccountRemoval: (() { final guardedValue = map['retainStacksOnAccountRemoval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
