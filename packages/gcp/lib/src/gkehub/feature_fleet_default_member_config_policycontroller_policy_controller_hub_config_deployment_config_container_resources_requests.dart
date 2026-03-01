// ignore_for_file: unused_element, unnecessary_cast

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests {
  /// CPU requirement expressed in Kubernetes resource units.
  final String? cpu;

  /// Memory requirement expressed in Kubernetes resource units.
  final String? memory;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests].
  /// [cpu] CPU requirement expressed in Kubernetes resource units.
  /// [memory] Memory requirement expressed in Kubernetes resource units.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': ?cpu, 'memory': ?memory};
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests(
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}
