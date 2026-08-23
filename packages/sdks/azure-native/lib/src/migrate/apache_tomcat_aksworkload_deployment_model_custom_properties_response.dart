// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apache_tomcat_aksworkload_deployment_response.dart';

/// ApacheTomcat workload instance model custom properties.
class ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse {
  /// ApacheTomcat web application.
  final pulumi.Input<ApacheTomcatAKSWorkloadDeploymentResponse>? apacheTomcatAksWorkloadDeploymentProperties;
  /// Gets or sets the instance type.
  /// Expected value is 'ApacheTomcatAKSWorkloadDeploymentModelCustomProperties'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse].
  /// [apacheTomcatAksWorkloadDeploymentProperties] ApacheTomcat web application.
  /// [instanceType] Gets or sets the instance type.
  const ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse({
    this.apacheTomcatAksWorkloadDeploymentProperties,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apacheTomcatAksWorkloadDeploymentProperties': ?pulumi.Input.mapOptionalInputValue<ApacheTomcatAKSWorkloadDeploymentResponse, Map<String, dynamic>>(apacheTomcatAksWorkloadDeploymentProperties, (value) => value.toMap()),
      'instanceType': instanceType,
    };
  }

  factory ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse(
      apacheTomcatAksWorkloadDeploymentProperties: (() { final guardedValue = map['apacheTomcatAksWorkloadDeploymentProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApacheTomcatAKSWorkloadDeploymentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}
