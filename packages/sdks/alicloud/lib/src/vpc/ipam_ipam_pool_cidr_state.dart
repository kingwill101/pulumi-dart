// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpamIpamPoolCidr resources.
class IpamIpamPoolCidrState {
  /// The CIDR address segment to be preset.
  ///
  /// > **NOTE:**  currently, only IPv4 address segments are supported.
  final pulumi.Input<String>? cidr;
  /// The ID of the IPAM pool instance.
  final pulumi.Input<String>? ipamPoolId;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [IpamIpamPoolCidrState].
  /// [cidr] The CIDR address segment to be preset.
  /// [ipamPoolId] The ID of the IPAM pool instance.
  /// [status] The status of the resource
  IpamIpamPoolCidrState({
    this.cidr,
    this.ipamPoolId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'ipamPoolId': ?ipamPoolId,
      'status': ?status,
    };
  }

  factory IpamIpamPoolCidrState.fromMap(Map<String, dynamic> map) {
    return IpamIpamPoolCidrState(
      cidr: map['cidr'] == null ? null : (map['cidr'] as String).input(),
      ipamPoolId: map['ipamPoolId'] == null ? null : (map['ipamPoolId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

