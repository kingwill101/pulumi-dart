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
      accessRoleArn: (() { final guardedValue = map['accessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionArn: (() { final guardedValue = map['connectionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

