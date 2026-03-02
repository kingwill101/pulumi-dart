// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceServiceConnectConfigurationLogConfigurationSecretOption {
  /// Name of the secret.
  final pulumi.Input<String> name;
  /// Secret to expose to the container. The supported values are either the full ARN of the AWS Secrets Manager secret or the full ARN of the parameter in the SSM Parameter Store.
  final pulumi.Input<String> valueFrom;

  /// Creates a new [ServiceServiceConnectConfigurationLogConfigurationSecretOption].
  /// [name] Name of the secret.
  /// [valueFrom] Secret to expose to the container. The supported values are either the full ARN of the AWS Secrets Manager secret or the full ARN of the parameter in the SSM Parameter Store.
  ServiceServiceConnectConfigurationLogConfigurationSecretOption({
    required this.name,
    required this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'valueFrom': valueFrom,
    };
  }

  factory ServiceServiceConnectConfigurationLogConfigurationSecretOption.fromMap(Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationLogConfigurationSecretOption(
      name: (map['name'] as String).input(),
      valueFrom: (map['valueFrom'] as String).input(),
    );
  }
}

