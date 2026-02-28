// ignore_for_file: unused_element, unnecessary_cast

class ExpressGatewayServicePrimaryContainerSecret {
  final String name;

  /// ARN of the AWS Secrets Manager secret or AWS Systems Manager parameter containing the secret value.
  final String valueFrom;

  /// Creates a new [ExpressGatewayServicePrimaryContainerSecret].
  /// [name] Required.
  /// [valueFrom] ARN of the AWS Secrets Manager secret or AWS Systems Manager parameter containing the secret value.
  ExpressGatewayServicePrimaryContainerSecret({
    required this.name,
    required this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['valueFrom'] = valueFrom;
    return map;
  }

  factory ExpressGatewayServicePrimaryContainerSecret.fromMap(
      Map<String, dynamic> map) {
    return ExpressGatewayServicePrimaryContainerSecret(
      name: map['name'] as String,
      valueFrom: map['valueFrom'] as String,
    );
  }
}
