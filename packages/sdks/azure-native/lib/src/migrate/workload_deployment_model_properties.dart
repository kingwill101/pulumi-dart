// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apache_tomcat_aksworkload_deployment_model_custom_properties.dart';
import 'workload_instance_model_properties.dart';

/// Workload deployment model properties.
class WorkloadDeploymentModelProperties {
  /// Workload deployment model custom properties.
  final pulumi.Input<ApacheTomcatAKSWorkloadDeploymentModelCustomProperties>?
  customProperties;

  /// Gets or sets the display name.
  final pulumi.Input<String>? displayName;

  /// Gets or sets the deployment target platform.
  final pulumi.Input<String>? targetPlatform;

  /// Workload instance model properties.
  final pulumi.Input<WorkloadInstanceModelProperties>?
  workloadInstanceProperties;

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
      'customProperties':
          ?pulumi.Input.mapOptionalInputValue<
            ApacheTomcatAKSWorkloadDeploymentModelCustomProperties,
            Map<String, dynamic>
          >(customProperties, (value) => value.toMap()),
      'displayName': ?displayName,
      'targetPlatform': ?targetPlatform,
      'workloadInstanceProperties':
          ?pulumi.Input.mapOptionalInputValue<
            WorkloadInstanceModelProperties,
            Map<String, dynamic>
          >(workloadInstanceProperties, (value) => value.toMap()),
    };
  }

  factory WorkloadDeploymentModelProperties.fromMap(Map<String, dynamic> map) {
    return WorkloadDeploymentModelProperties(
      customProperties: (() {
        final guardedValue = map['customProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApacheTomcatAKSWorkloadDeploymentModelCustomProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetPlatform: (() {
        final guardedValue = map['targetPlatform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workloadInstanceProperties: (() {
        final guardedValue = map['workloadInstanceProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkloadInstanceModelProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
