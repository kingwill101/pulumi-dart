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
    pulumi.Output<String>? associatedInstanceId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
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
      associatedInstanceId: map['associatedInstanceId'] == null ? null : pulumi.Output.create<String>(map['associatedInstanceId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

