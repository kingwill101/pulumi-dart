// ignore_for_file: unused_element, unnecessary_cast

class ExpressGatewayServicePrimaryContainerEnvironment {
  /// Name of the environment variable.
  final String name;

  /// Value of the environment variable.
  final String value;

  ExpressGatewayServicePrimaryContainerEnvironment({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ExpressGatewayServicePrimaryContainerEnvironment.fromMap(
      Map<String, dynamic> map) {
    return ExpressGatewayServicePrimaryContainerEnvironment(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
