// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceSourceConfigurationAuthenticationConfiguration {
  /// ARN of the IAM role that grants the App Runner service access to a source repository. Required for ECR image repositories (but not for ECR Public)
  final pulumi.Input<String>? accessRoleArn;
  /// ARN of the App Runner connection that enables the App Runner service to connect to a source repository. Required for GitHub code repositories.
  final pulumi.Input<String>? connectionArn;

  /// Creates a new [ServiceSourceConfigurationAuthenticationConfiguration].
  /// [accessRoleArn] ARN of the IAM role that grants the App Runner service access to a source repository. Required for ECR image repositories (but not for ECR Public)
  /// [connectionArn] ARN of the App Runner connection that enables the App Runner service to connect to a source repository. Required for GitHub code repositories.
  ServiceSourceConfigurationAuthenticationConfiguration({
    this.accessRoleArn,
    this.connectionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRoleArn': ?accessRoleArn,
      'connectionArn': ?connectionArn,
    };
  }

  factory ServiceSourceConfigurationAuthenticationConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceSourceConfigurationAuthenticationConfiguration(
      accessRoleArn: map['accessRoleArn'] == null ? null : ((map['accessRoleArn'] as String).input()).input(),
      connectionArn: map['connectionArn'] == null ? null : ((map['connectionArn'] as String).input()).input(),
    );
  }
}

