// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apache_tomcat_aksworkload_deployment_model_custom_properties.dart';
import 'workload_instance_model_properties.dart';

/// Workload deployment model properties.
class WorkloadDeploymentModelProperties {
  /// Workload deployment model custom properties.
  final pulumi.Input<ApacheTomcatAKSWorkloadDeploymentModelCustomProperties>? customProperties;
  /// Gets or sets the display name.
  final pulumi.Input<String>? displayName;
  /// Gets or sets the deployment target platform.
  final pulumi.Input<String>? targetPlatform;
  /// Workload instance model properties.
  final pulumi.Input<WorkloadInstanceModelProperties>? workloadInstanceProperties;

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
      'customProperties': ?pulumi.Input.mapOptionalInputValue<ApacheTomcatAKSWorkloadDeploymentModelCustomProperties, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
      'displayName': ?displayName,
      'targetPlatform': ?targetPlatform,
      'workloadInstanceProperties': ?pulumi.Input.mapOptionalInputValue<WorkloadInstanceModelProperties, Map<String, dynamic>>(workloadInstanceProperties, (value) => value.toMap()),
    };
  }

  factory WorkloadDeploymentModelProperties.fromMap(Map<String, dynamic> map) {
    return WorkloadDeploymentModelProperties(
      customProperties: map['customProperties'] == null ? null : (ApacheTomcatAKSWorkloadDeploymentModelCustomProperties.fromMap((map['customProperties']! as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      targetPlatform: map['targetPlatform'] == null ? null : (map['targetPlatform']! as String).input(),
      workloadInstanceProperties: map['workloadInstanceProperties'] == null ? null : (WorkloadInstanceModelProperties.fromMap((map['workloadInstanceProperties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

