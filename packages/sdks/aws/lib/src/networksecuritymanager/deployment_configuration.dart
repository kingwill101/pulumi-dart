// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentConfiguration {
  /// Whether to enable cross-account visibility for the deployment.
  final pulumi.Input<bool> enableCrossAccountVisibility;

  /// Creates a new [DeploymentConfiguration].
  /// [enableCrossAccountVisibility] Whether to enable cross-account visibility for the deployment.
  const DeploymentConfiguration({
    required this.enableCrossAccountVisibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCrossAccountVisibility': enableCrossAccountVisibility,
    };
  }

  factory DeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentConfiguration(
      enableCrossAccountVisibility: pulumi.Input.fromValue(map['enableCrossAccountVisibility'] as bool),
    );
  }
}
