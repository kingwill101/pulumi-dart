// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExpressGatewayServicePrimaryContainerSecret {
  /// Name of the secret.
  final pulumi.Input<String> name;
  /// ARN of the AWS Secrets Manager secret or AWS Systems Manager parameter containing the secret value.
  final pulumi.Input<String> valueFrom;

  /// Creates a new [ExpressGatewayServicePrimaryContainerSecret].
  /// [name] Name of the secret.
  /// [valueFrom] ARN of the AWS Secrets Manager secret or AWS Systems Manager parameter containing the secret value.
  const ExpressGatewayServicePrimaryContainerSecret({
    required this.name,
    required this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'valueFrom': valueFrom,
    };
  }

  factory ExpressGatewayServicePrimaryContainerSecret.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServicePrimaryContainerSecret(
      name: pulumi.Input.fromValue(map['name'] as String),
      valueFrom: pulumi.Input.fromValue(map['valueFrom'] as String),
    );
  }
}
