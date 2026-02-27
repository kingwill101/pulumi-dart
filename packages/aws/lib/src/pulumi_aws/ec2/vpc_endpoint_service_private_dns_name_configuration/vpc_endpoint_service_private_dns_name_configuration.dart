// ignore_for_file: unused_element, unnecessary_cast

class VpcEndpointServicePrivateDnsNameConfiguration {
  /// Name of the record subdomain the service provider needs to create.
  final String? name;

  /// Verification state of the VPC endpoint service. Consumers of the endpoint service can use the private name only when the state is `verified`.
  final String? state;

  /// Endpoint service verification type, for example `TXT`.
  final String? type;

  /// Value the service provider adds to the private DNS name domain record before verification.
  final String? value;

  VpcEndpointServicePrivateDnsNameConfiguration({
    this.name,
    this.state,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory VpcEndpointServicePrivateDnsNameConfiguration.fromMap(
      Map<String, dynamic> map) {
    return VpcEndpointServicePrivateDnsNameConfiguration(
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
