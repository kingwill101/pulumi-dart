// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpamIpamPoolCidrsCidr {
  /// The CIDR address segment to be preset.&gt; currently, only IPv4 address segments are supported.
  final pulumi.Input<String> cidr;
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// The ID of the IPAM pool instance.
  final pulumi.Input<String> ipamPoolId;
  /// The status of the resource
  final pulumi.Input<String> status;

  /// Creates a new [GetIpamIpamPoolCidrsCidr].
  /// [cidr] The CIDR address segment to be preset.&gt; currently, only IPv4 address segments are supported.
  /// [id] The ID of the resource supplied above.
  /// [ipamPoolId] The ID of the IPAM pool instance.
  /// [status] The status of the resource
  GetIpamIpamPoolCidrsCidr({
    required this.cidr,
    required this.id,
    required this.ipamPoolId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'id': id,
      'ipamPoolId': ipamPoolId,
      'status': status,
    };
  }

  factory GetIpamIpamPoolCidrsCidr.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamPoolCidrsCidr(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipamPoolId: pulumi.Input.fromValue(map['ipamPoolId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

