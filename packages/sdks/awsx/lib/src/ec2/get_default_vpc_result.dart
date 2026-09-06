// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDefaultVpc.
class GetDefaultVpcResult {
  final List<String>? privateSubnetIds;
  final List<String>? publicSubnetIds;
  /// The VPC ID for the default VPC
  final String? vpcId;

  /// Creates a new [GetDefaultVpcResult].
  /// [privateSubnetIds] Optional.
  /// [publicSubnetIds] Optional.
  /// [vpcId] The VPC ID for the default VPC
  const GetDefaultVpcResult({
    this.privateSubnetIds,
    this.publicSubnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateSubnetIds': ?privateSubnetIds,
      'publicSubnetIds': ?publicSubnetIds,
      'vpcId': ?vpcId,
    };
  }

  factory GetDefaultVpcResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultVpcResult(
      privateSubnetIds: (() { final guardedValue = map['privateSubnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      publicSubnetIds: (() { final guardedValue = map['publicSubnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
