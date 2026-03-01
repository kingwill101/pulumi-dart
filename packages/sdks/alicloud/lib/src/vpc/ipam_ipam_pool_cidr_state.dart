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
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? ipamPoolId,
    pulumi.Output<String>? status,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      ipamPoolId = pulumi.Input.asOptionalInput<String>(ipamPoolId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'ipamPoolId': ?ipamPoolId,
      'status': ?status,
    };
  }

  factory IpamIpamPoolCidrState.fromMap(Map<String, dynamic> map) {
    return IpamIpamPoolCidrState(
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      ipamPoolId: map['ipamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipamPoolId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

