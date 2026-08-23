// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainDeploymentStrategyOption {
  /// Deployment strategy for the domain.
  final pulumi.Input<String> deploymentStrategy;

  /// Creates a new [GetDomainDeploymentStrategyOption].
  /// [deploymentStrategy] Deployment strategy for the domain.
  const GetDomainDeploymentStrategyOption({
    required this.deploymentStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStrategy': deploymentStrategy,
    };
  }

  factory GetDomainDeploymentStrategyOption.fromMap(Map<String, dynamic> map) {
    return GetDomainDeploymentStrategyOption(
      deploymentStrategy: pulumi.Input.fromValue(map['deploymentStrategy'] as String),
    );
  }
}
