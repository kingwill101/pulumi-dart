// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ipv6_addresses_get_ipv6_addresses_args_doc}
/// Arguments for getIpv6Addresses.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ipv6_addresses_get_ipv6_addresses_args_doc}
class GetIpv6AddressesArgs {
  /// The ID of the instance that is assigned the IPv6 address.
  final pulumi.Input<String>? associatedInstanceId;
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the IPv6 address. Valid values:`Pending` or `Available`.
  /// - `Pending`: The IPv6 address is being configured.
  /// - `Available`: The IPv6 address is available.
  final pulumi.Input<String>? status;
  /// The ID of the VPC to which the IPv6 address belongs.
  final pulumi.Input<String>? vpcId;
  /// The ID of the vSwitch to which the IPv6 address belongs.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetIpv6AddressesArgs].
  /// [associatedInstanceId] The ID of the instance that is assigned the IPv6 address.
  /// [ids] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the IPv6 address. Valid values:`Pending` or `Available`.
  /// [vpcId] The ID of the VPC to which the IPv6 address belongs.
  /// [vswitchId] The ID of the vSwitch to which the IPv6 address belongs.
  GetIpv6AddressesArgs({
    String? associatedInstanceId,
    List<String>? ids,
    String? outputFile,
    String? status,
    String? vpcId,
    String? vswitchId,
  }) :
      associatedInstanceId = pulumi.Input.asOptionalInput<String>(associatedInstanceId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedInstanceId': ?associatedInstanceId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetIpv6AddressesArgs.fromMap(Map<String, dynamic> map) {
    return GetIpv6AddressesArgs(
      associatedInstanceId: map['associatedInstanceId'] == null ? null : map['associatedInstanceId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

