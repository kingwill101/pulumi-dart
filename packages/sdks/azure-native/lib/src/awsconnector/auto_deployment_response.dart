// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AutoDeployment
class AutoDeploymentResponse {
  /// If set to true, StackSets automatically deploys additional stack instances to AWS Organizations accounts that are added to a target organization or organizational unit (OU) in the specified Regions. If an account is removed from a target organization or OU, StackSets deletes stack instances from the account in the specified Regions.
  final pulumi.Input<bool?>? enabled;
  /// If set to true, stack resources are retained when an account is removed from a target organization or OU. If set to false, stack resources are deleted. Specify only if Enabled is set to True.
  final pulumi.Input<bool?>? retainStacksOnAccountRemoval;

  /// Creates a new [AutoDeploymentResponse].
  /// [enabled] If set to true, StackSets automatically deploys additional stack instances to AWS Organizations accounts that are added to a target organization or organizational unit (OU) in the specified Regions. If an account is removed from a target organization or OU, StackSets deletes stack instances from the account in the specified Regions.
  /// [retainStacksOnAccountRemoval] If set to true, stack resources are retained when an account is removed from a target organization or OU. If set to false, stack resources are deleted. Specify only if Enabled is set to True.
  const AutoDeploymentResponse({
    this.enabled,
    this.retainStacksOnAccountRemoval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'retainStacksOnAccountRemoval': ?retainStacksOnAccountRemoval,
    };
  }

  factory AutoDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return AutoDeploymentResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retainStacksOnAccountRemoval: (() { final guardedValue = map['retainStacksOnAccountRemoval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
