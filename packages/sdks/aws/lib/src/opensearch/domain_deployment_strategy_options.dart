// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDeploymentStrategyOptions {
  /// Deployment strategy for the domain. Valid values: `Default` and `CapacityOptimized`.
  final pulumi.Input<String> deploymentStrategy;

  /// Creates a new [DomainDeploymentStrategyOptions].
  /// [deploymentStrategy] Deployment strategy for the domain. Valid values: `Default` and `CapacityOptimized`.
  const DomainDeploymentStrategyOptions({
    required this.deploymentStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStrategy': deploymentStrategy,
    };
  }

  factory DomainDeploymentStrategyOptions.fromMap(Map<String, dynamic> map) {
    return DomainDeploymentStrategyOptions(
      deploymentStrategy: pulumi.Input.fromValue(map['deploymentStrategy'] as String),
    );
  }
}
