// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apache_tomcat_aksworkload_deployment.dart';

/// ApacheTomcat workload instance model custom properties.
class ApacheTomcatAKSWorkloadDeploymentModelCustomProperties {
  /// ApacheTomcat web application.
  final pulumi.Input<ApacheTomcatAKSWorkloadDeployment>? apacheTomcatAksWorkloadDeploymentProperties;
  /// Gets or sets the instance type.
  /// Expected value is 'ApacheTomcatAKSWorkloadDeploymentModelCustomProperties'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [ApacheTomcatAKSWorkloadDeploymentModelCustomProperties].
  /// [apacheTomcatAksWorkloadDeploymentProperties] ApacheTomcat web application.
  /// [instanceType] Gets or sets the instance type.
  ApacheTomcatAKSWorkloadDeploymentModelCustomProperties({
    this.apacheTomcatAksWorkloadDeploymentProperties,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apacheTomcatAksWorkloadDeploymentProperties': ?pulumi.Input.mapOptionalInputValue<ApacheTomcatAKSWorkloadDeployment, Map<String, dynamic>>(apacheTomcatAksWorkloadDeploymentProperties, (value) => value.toMap()),
      'instanceType': instanceType,
    };
  }

  factory ApacheTomcatAKSWorkloadDeploymentModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return ApacheTomcatAKSWorkloadDeploymentModelCustomProperties(
      apacheTomcatAksWorkloadDeploymentProperties: map['apacheTomcatAksWorkloadDeploymentProperties'] == null ? null : (ApacheTomcatAKSWorkloadDeployment.fromMap((map['apacheTomcatAksWorkloadDeploymentProperties'] as Map).cast<String, dynamic>())).input(),
      instanceType: (map['instanceType'] as String).input(),
    );
  }
}

