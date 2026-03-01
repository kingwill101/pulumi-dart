// ignore_for_file: unused_element, unnecessary_cast

class ExpressGatewayServicePrimaryContainerEnvironment {
  /// Name of the environment variable.
  final String name;

  /// Value of the environment variable.
  final String value;

  /// Creates a new [ExpressGatewayServicePrimaryContainerEnvironment].
  /// [name] Name of the environment variable.
  /// [value] Value of the environment variable.
  ExpressGatewayServicePrimaryContainerEnvironment({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory ExpressGatewayServicePrimaryContainerEnvironment.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExpressGatewayServicePrimaryContainerEnvironment(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
