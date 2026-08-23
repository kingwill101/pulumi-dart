// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRestApiEndpointConfiguration {
  /// IP address types that can invoke a REST API.
  final pulumi.Input<String> ipAddressType;
  /// List of endpoint types.
  final pulumi.Input<List<String>> types;
  /// Set of VPC Endpoint identifiers.
  final pulumi.Input<List<String>> vpcEndpointIds;

  /// Creates a new [GetRestApiEndpointConfiguration].
  /// [ipAddressType] IP address types that can invoke a REST API.
  /// [types] List of endpoint types.
  /// [vpcEndpointIds] Set of VPC Endpoint identifiers.
  const GetRestApiEndpointConfiguration({
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
      vpcEndpointIds: pulumi.Input.fromValue((map['vpcEndpointIds'] as List).cast<String>()),
    );
  }
}
