// ignore_for_file: unused_element, unnecessary_cast

import 'apache_tomcat_aksworkload_deployment_model_custom_properties.dart';
import 'workload_instance_model_properties.dart';

/// Workload deployment model properties.
class WorkloadDeploymentModelProperties {
  /// Workload deployment model custom properties.
  final ApacheTomcatAKSWorkloadDeploymentModelCustomProperties? customProperties;
  /// Gets or sets the display name.
  final String? displayName;
  /// Gets or sets the deployment target platform.
  final String? targetPlatform;
  /// Workload instance model properties.
  final WorkloadInstanceModelProperties? workloadInstanceProperties;

  /// Creates a new [WorkloadDeploymentModelProperties].
  /// [customProperties] Workload deployment model custom properties.
  /// [displayName] Gets or sets the display name.
  /// [targetPlatform] Gets or sets the deployment target platform.
  /// [workloadInstanceProperties] Workload instance model properties.
  WorkloadDeploymentModelProperties({
    this.customProperties,
    this.displayName,
    this.targetPlatform,
    this.workloadInstanceProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': ?customProperties == null ? null : customProperties!.toMap(),
      'displayName': ?displayName,
      'targetPlatform': ?targetPlatform,
      'workloadInstanceProperties': ?workloadInstanceProperties == null ? null : workloadInstanceProperties!.toMap(),
    };
  }

  factory WorkloadDeploymentModelProperties.fromMap(Map<String, dynamic> map) {
    return WorkloadDeploymentModelProperties(
      customProperties: map['customProperties'] == null ? null : ApacheTomcatAKSWorkloadDeploymentModelCustomProperties.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      targetPlatform: map['targetPlatform'] == null ? null : map['targetPlatform'] as String,
      workloadInstanceProperties: map['workloadInstanceProperties'] == null ? null : WorkloadInstanceModelProperties.fromMap((map['workloadInstanceProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

