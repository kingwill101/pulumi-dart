// ignore_for_file: unused_element, unnecessary_cast

import 'iisaksworkload_deployment.dart';

/// IIS workload instance model custom properties.
class IISAKSWorkloadDeploymentModelCustomProperties {
  /// IIS AKS workload deployment.
  final IISAKSWorkloadDeployment? iisAksWorkloadDeploymentProperties;
  /// Gets or sets the instance type.
  /// Expected value is 'IISAKSWorkloadDeploymentModelCustomProperties'.
  final String instanceType;

  /// Creates a new [IISAKSWorkloadDeploymentModelCustomProperties].
  /// [iisAksWorkloadDeploymentProperties] IIS AKS workload deployment.
  /// [instanceType] Gets or sets the instance type.
  IISAKSWorkloadDeploymentModelCustomProperties({
    this.iisAksWorkloadDeploymentProperties,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iisAksWorkloadDeploymentProperties': ?iisAksWorkloadDeploymentProperties == null ? null : iisAksWorkloadDeploymentProperties!.toMap(),
      'instanceType': instanceType,
    };
  }

  factory IISAKSWorkloadDeploymentModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return IISAKSWorkloadDeploymentModelCustomProperties(
      iisAksWorkloadDeploymentProperties: map['iisAksWorkloadDeploymentProperties'] == null ? null : IISAKSWorkloadDeployment.fromMap((map['iisAksWorkloadDeploymentProperties'] as Map).cast<String, dynamic>()),
      instanceType: map['instanceType'] as String,
    );
  }
}

