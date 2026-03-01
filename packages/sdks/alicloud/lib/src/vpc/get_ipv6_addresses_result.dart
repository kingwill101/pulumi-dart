// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipv6_addresses_address.dart';

/// Result data returned by getIpv6Addresses.
class GetIpv6AddressesResult {
  final List<GetIpv6AddressesAddress> addresses;
  final String? associatedInstanceId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<String> names;
  final String? outputFile;
  final String? status;
  final String? vpcId;
  final String? vswitchId;

  /// Creates a new [GetIpv6AddressesResult].
  /// [addresses] Required.
  /// [associatedInstanceId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [vpcId] Optional.
  /// [vswitchId] Optional.
  GetIpv6AddressesResult({
    required this.addresses,
    this.associatedInstanceId,
    required this.id,
    required this.ids,
    required this.names,
    this.outputFile,
    this.status,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': pulumi.Input.encodeList<GetIpv6AddressesAddress, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'associatedInstanceId': ?associatedInstanceId,
      'id': id,
      'ids': ids,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetIpv6AddressesResult.fromMap(Map<String, dynamic> map) {
    return GetIpv6AddressesResult(
      addresses: pulumi.Input.decodeList<GetIpv6AddressesAddress>(map['addresses'], (value) => GetIpv6AddressesAddress.fromMap((value as Map).cast<String, dynamic>())),
      associatedInstanceId: map['associatedInstanceId'] == null ? null : map['associatedInstanceId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

