// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRestApiEndpointConfiguration {
  /// The IP address types that can invoke an API (RestApi).
  final pulumi.Input<String> ipAddressType;

  /// List of endpoint types.
  final pulumi.Input<List<String>> types;

  /// Set of VPC Endpoint identifiers.
  final pulumi.Input<List<String>> vpcEndpointIds;

  /// Creates a new [GetRestApiEndpointConfiguration].
  /// [ipAddressType] The IP address types that can invoke an API (RestApi).
  /// [types] List of endpoint types.
  /// [vpcEndpointIds] Set of VPC Endpoint identifiers.
  GetRestApiEndpointConfiguration({
    required this.ipAddressType,
    required this.types,
    required this.vpcEndpointIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ipAddressType,
      'types': types,
      'vpcEndpointIds': vpcEndpointIds,
    };
  }

  factory GetRestApiEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return GetRestApiEndpointConfiguration(
      ipAddressType: pulumi.Input.fromValue(map['ipAddressType'] as String),
      types: pulumi.Input.fromValue((map['types'] as List).cast<String>()),
      vpcEndpointIds: pulumi.Input.fromValue(
        (map['vpcEndpointIds'] as List).cast<String>(),
      ),
    );
  }
}
