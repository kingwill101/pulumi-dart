// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess {
  /// The action to take on instances in the original environment after a successful blue/green deployment.
  /// * `TERMINATE`: Instances are terminated after a specified wait time.
  /// * `KEEP_ALIVE`: Instances are left running after they are deregistered from the load balancer and removed from the deployment group.
  final pulumi.Input<String>? action;

  /// The number of minutes to wait after a successful blue/green deployment before terminating instances from the original environment.
  final pulumi.Input<int>? terminationWaitTimeInMinutes;

  /// Creates a new [DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess].
  /// [action] The action to take on instances in the original environment after a successful blue/green deployment.
  /// [terminationWaitTimeInMinutes] The number of minutes to wait after a successful blue/green deployment before terminating instances from the original environment.
  DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess({
    this.action,
    this.terminationWaitTimeInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'terminationWaitTimeInMinutes': ?terminationWaitTimeInMinutes,
    };
  }

  factory DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      terminationWaitTimeInMinutes: (() {
        final guardedValue = map['terminationWaitTimeInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
