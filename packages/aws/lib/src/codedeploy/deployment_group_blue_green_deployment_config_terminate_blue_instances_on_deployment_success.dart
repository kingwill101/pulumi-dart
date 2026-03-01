// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess {
  /// The action to take on instances in the original environment after a successful blue/green deployment.
  /// * `TERMINATE`: Instances are terminated after a specified wait time.
  /// * `KEEP_ALIVE`: Instances are left running after they are deregistered from the load balancer and removed from the deployment group.
  final String? action;

  /// The number of minutes to wait after a successful blue/green deployment before terminating instances from the original environment.
  final int? terminationWaitTimeInMinutes;

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
      action: map['action'] == null ? null : map['action'] as String,
      terminationWaitTimeInMinutes: map['terminationWaitTimeInMinutes'] == null
          ? null
          : map['terminationWaitTimeInMinutes'] as int,
    );
  }
}
