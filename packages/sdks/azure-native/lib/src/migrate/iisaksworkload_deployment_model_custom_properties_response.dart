// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iisaksworkload_deployment_response.dart';

/// IIS workload instance model custom properties.
class IISAKSWorkloadDeploymentModelCustomPropertiesResponse {
  /// IIS AKS workload deployment.
  final pulumi.Input<IISAKSWorkloadDeploymentResponse>? iisAksWorkloadDeploymentProperties;
  /// Gets or sets the instance type.
  /// Expected value is 'IISAKSWorkloadDeploymentModelCustomProperties'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [IISAKSWorkloadDeploymentModelCustomPropertiesResponse].
  /// [iisAksWorkloadDeploymentProperties] IIS AKS workload deployment.
  /// [instanceType] Gets or sets the instance type.
  IISAKSWorkloadDeploymentModelCustomPropertiesResponse({
    this.iisAksWorkloadDeploymentProperties,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iisAksWorkloadDeploymentProperties': ?pulumi.Input.mapOptionalInputValue<IISAKSWorkloadDeploymentResponse, Map<String, dynamic>>(iisAksWorkloadDeploymentProperties, (value) => value.toMap()),
      'instanceType': instanceType,
    };
  }

  factory IISAKSWorkloadDeploymentModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IISAKSWorkloadDeploymentModelCustomPropertiesResponse(
      iisAksWorkloadDeploymentProperties: map['iisAksWorkloadDeploymentProperties'] == null ? null : (IISAKSWorkloadDeploymentResponse.fromMap((map['iisAksWorkloadDeploymentProperties'] as Map).cast<String, dynamic>())).input(),
      instanceType: (map['instanceType'] as String).input(),
    );
  }
}

