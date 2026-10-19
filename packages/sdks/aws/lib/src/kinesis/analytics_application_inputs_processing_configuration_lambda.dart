// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsProcessingConfigurationLambda {
  final pulumi.Input<String> resourceArn;
  final pulumi.Input<String> roleArn;

  /// Creates a new [AnalyticsApplicationInputsProcessingConfigurationLambda].
  /// [resourceArn] Required.
  /// [roleArn] Required.
  const AnalyticsApplicationInputsProcessingConfigurationLambda({
    required this.resourceArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
      'roleArn': roleArn,
    };
  }

  factory AnalyticsApplicationInputsProcessingConfigurationLambda.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsProcessingConfigurationLambda(
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
