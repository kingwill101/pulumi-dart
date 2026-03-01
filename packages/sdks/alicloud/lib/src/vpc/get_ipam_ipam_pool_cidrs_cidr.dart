// ignore_for_file: unused_element, unnecessary_cast


class GetIpamIpamPoolCidrsCidr {
  /// The CIDR address segment to be preset.> currently, only IPv4 address segments are supported.
  final String cidr;
  /// The ID of the resource supplied above.
  final String id;
  /// The ID of the IPAM pool instance.
  final String ipamPoolId;
  /// The status of the resource
  final String status;

  /// Creates a new [GetIpamIpamPoolCidrsCidr].
  /// [cidr] The CIDR address segment to be preset.> currently, only IPv4 address segments are supported.
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
      cidr: map['cidr'] as String,
      id: map['id'] as String,
      ipamPoolId: map['ipamPoolId'] as String,
      status: map['status'] as String,
    );
  }
}

