// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceRequest {
  /// CPU requirement expressed in Kubernetes resource units.
  final String cpu;

  /// Memory requirement expressed in Kubernetes resource units.
  final String memory;

  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceRequest({
    required this.cpu,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpu'] = cpu;
    map['memory'] = memory;
    return map;
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceRequest.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceRequest(
      cpu: map['cpu'] as String,
      memory: map['memory'] as String,
    );
  }
}
