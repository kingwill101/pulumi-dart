// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit {
  /// CPU requirement expressed in Kubernetes resource units.
  final String cpu;

  /// Memory requirement expressed in Kubernetes resource units.
  final String memory;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit].
  /// [cpu] CPU requirement expressed in Kubernetes resource units.
  /// [memory] Memory requirement expressed in Kubernetes resource units.
  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit({
    required this.cpu,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': cpu, 'memory': memory};
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit(
      cpu: map['cpu'] as String,
      memory: map['memory'] as String,
    );
  }
}
