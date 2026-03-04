// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainNameEndpointConfiguration {
  /// The IP address types that can invoke an API (RestApi).
  final pulumi.Input<String> ipAddressType;

  /// List of endpoint types.
  final pulumi.Input<List<String>> types;

  /// Creates a new [GetDomainNameEndpointConfiguration].
  /// [ipAddressType] The IP address types that can invoke an API (RestApi).
  /// [types] List of endpoint types.
  GetDomainNameEndpointConfiguration({
    required this.ipAddressType,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipAddressType': ipAddressType, 'types': types};
  }

  factory GetDomainNameEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return GetDomainNameEndpointConfiguration(
      ipAddressType: pulumi.Input.fromValue(map['ipAddressType'] as String),
      types: pulumi.Input.fromValue((map['types'] as List).cast<String>()),
    );
  }
}
