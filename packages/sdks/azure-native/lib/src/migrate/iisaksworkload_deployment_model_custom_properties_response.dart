// ignore_for_file: unused_element, unnecessary_cast

import 'iisaksworkload_deployment_response.dart';

/// IIS workload instance model custom properties.
class IISAKSWorkloadDeploymentModelCustomPropertiesResponse {
  /// IIS AKS workload deployment.
  final IISAKSWorkloadDeploymentResponse? iisAksWorkloadDeploymentProperties;
  /// Gets or sets the instance type.
  /// Expected value is 'IISAKSWorkloadDeploymentModelCustomProperties'.
  final String instanceType;

  /// Creates a new [IISAKSWorkloadDeploymentModelCustomPropertiesResponse].
  /// [iisAksWorkloadDeploymentProperties] IIS AKS workload deployment.
  /// [instanceType] Gets or sets the instance type.
  IISAKSWorkloadDeploymentModelCustomPropertiesResponse({
    this.iisAksWorkloadDeploymentProperties,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iisAksWorkloadDeploymentProperties': ?iisAksWorkloadDeploymentProperties == null ? null : iisAksWorkloadDeploymentProperties!.toMap(),
      'instanceType': instanceType,
    };
  }

  factory IISAKSWorkloadDeploymentModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IISAKSWorkloadDeploymentModelCustomPropertiesResponse(
      iisAksWorkloadDeploymentProperties: map['iisAksWorkloadDeploymentProperties'] == null ? null : IISAKSWorkloadDeploymentResponse.fromMap((map['iisAksWorkloadDeploymentProperties'] as Map).cast<String, dynamic>()),
      instanceType: map['instanceType'] as String,
    );
  }
}

