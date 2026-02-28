// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDefaultVpc.
class GetDefaultVpcResult {
  final List<String> privateSubnetIds;
  final List<String> publicSubnetIds;

  /// The VPC ID for the default VPC
  final String vpcId;

  /// Creates a new [GetDefaultVpcResult].
  /// [privateSubnetIds] Required.
  /// [publicSubnetIds] Required.
  /// [vpcId] The VPC ID for the default VPC
  GetDefaultVpcResult({
    required this.privateSubnetIds,
    required this.publicSubnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateSubnetIds'] = privateSubnetIds;
    map['publicSubnetIds'] = publicSubnetIds;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetDefaultVpcResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultVpcResult(
      privateSubnetIds: (map['privateSubnetIds'] as List).cast<String>(),
      publicSubnetIds: (map['publicSubnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
