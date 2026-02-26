// ignore_for_file: unused_element, unnecessary_cast

class ServiceEndpoint {
  /// The FQDN of the endpoint as described in the config.
  final String? address;

  /// The simple name of the endpoint as described in the config.
  final String? name;

  ServiceEndpoint({
    this.address,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory ServiceEndpoint.fromMap(Map<String, dynamic> map) {
    return ServiceEndpoint(
      address: map['address'] == null ? null : map['address'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
