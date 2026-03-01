// ignore_for_file: unused_element, unnecessary_cast

import 'apache_tomcat_aksworkload_deployment.dart';

/// ApacheTomcat workload instance model custom properties.
class ApacheTomcatAKSWorkloadDeploymentModelCustomProperties {
  /// ApacheTomcat web application.
  final ApacheTomcatAKSWorkloadDeployment? apacheTomcatAksWorkloadDeploymentProperties;
  /// Gets or sets the instance type.
  /// Expected value is 'ApacheTomcatAKSWorkloadDeploymentModelCustomProperties'.
  final String instanceType;

  /// Creates a new [ApacheTomcatAKSWorkloadDeploymentModelCustomProperties].
  /// [apacheTomcatAksWorkloadDeploymentProperties] ApacheTomcat web application.
  /// [instanceType] Gets or sets the instance type.
  ApacheTomcatAKSWorkloadDeploymentModelCustomProperties({
    this.apacheTomcatAksWorkloadDeploymentProperties,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apacheTomcatAksWorkloadDeploymentProperties': ?apacheTomcatAksWorkloadDeploymentProperties == null ? null : apacheTomcatAksWorkloadDeploymentProperties!.toMap(),
      'instanceType': instanceType,
    };
  }

  factory ApacheTomcatAKSWorkloadDeploymentModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return ApacheTomcatAKSWorkloadDeploymentModelCustomProperties(
      apacheTomcatAksWorkloadDeploymentProperties: map['apacheTomcatAksWorkloadDeploymentProperties'] == null ? null : ApacheTomcatAKSWorkloadDeployment.fromMap((map['apacheTomcatAksWorkloadDeploymentProperties'] as Map).cast<String, dynamic>()),
      instanceType: map['instanceType'] as String,
    );
  }
}

