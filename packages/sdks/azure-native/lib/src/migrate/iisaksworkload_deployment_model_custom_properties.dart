// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iisaksworkload_deployment.dart';

/// IIS workload instance model custom properties.
class IISAKSWorkloadDeploymentModelCustomProperties {
  /// IIS AKS workload deployment.
  final pulumi.Input<IISAKSWorkloadDeployment?>? iisAksWorkloadDeploymentProperties;
  /// Gets or sets the instance type.
  /// Expected value is 'IISAKSWorkloadDeploymentModelCustomProperties'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [IISAKSWorkloadDeploymentModelCustomProperties].
  /// [iisAksWorkloadDeploymentProperties] IIS AKS workload deployment.
  /// [instanceType] Gets or sets the instance type.
  const IISAKSWorkloadDeploymentModelCustomProperties({
    this.iisAksWorkloadDeploymentProperties,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iisAksWorkloadDeploymentProperties': ?pulumi.Input.mapOptionalInputValue<IISAKSWorkloadDeployment, Map<String, dynamic>>(iisAksWorkloadDeploymentProperties, (value) => value.toMap()),
      'instanceType': instanceType,
    };
  }

  factory IISAKSWorkloadDeploymentModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return IISAKSWorkloadDeploymentModelCustomProperties(
      iisAksWorkloadDeploymentProperties: (() { final guardedValue = map['iisAksWorkloadDeploymentProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IISAKSWorkloadDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}
