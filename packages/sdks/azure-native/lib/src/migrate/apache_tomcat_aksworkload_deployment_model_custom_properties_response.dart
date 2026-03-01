// ignore_for_file: unused_element, unnecessary_cast

import 'apache_tomcat_aksworkload_deployment_response.dart';

/// ApacheTomcat workload instance model custom properties.
class ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse {
  /// ApacheTomcat web application.
  final ApacheTomcatAKSWorkloadDeploymentResponse? apacheTomcatAksWorkloadDeploymentProperties;
  /// Gets or sets the instance type.
  /// Expected value is 'ApacheTomcatAKSWorkloadDeploymentModelCustomProperties'.
  final String instanceType;

  /// Creates a new [ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse].
  /// [apacheTomcatAksWorkloadDeploymentProperties] ApacheTomcat web application.
  /// [instanceType] Gets or sets the instance type.
  ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse({
    this.apacheTomcatAksWorkloadDeploymentProperties,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apacheTomcatAksWorkloadDeploymentProperties': ?apacheTomcatAksWorkloadDeploymentProperties == null ? null : apacheTomcatAksWorkloadDeploymentProperties!.toMap(),
      'instanceType': instanceType,
    };
  }

  factory ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse(
      apacheTomcatAksWorkloadDeploymentProperties: map['apacheTomcatAksWorkloadDeploymentProperties'] == null ? null : ApacheTomcatAKSWorkloadDeploymentResponse.fromMap((map['apacheTomcatAksWorkloadDeploymentProperties'] as Map).cast<String, dynamic>()),
      instanceType: map['instanceType'] as String,
    );
  }
}

