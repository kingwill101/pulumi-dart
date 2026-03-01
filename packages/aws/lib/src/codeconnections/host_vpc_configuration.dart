// ignore_for_file: unused_element, unnecessary_cast


class HostVpcConfiguration {
  /// ID of the security group or security groups associated with the Amazon VPC connected to the infrastructure where your provider type is installed.
  final List<String> securityGroupIds;
  /// The ID of the subnet or subnets associated with the Amazon VPC connected to the infrastructure where your provider type is installed.
  final List<String> subnetIds;
  /// The value of the Transport Layer Security (TLS) certificate associated with the infrastructure where your provider type is installed.
  final String? tlsCertificate;
  /// The ID of the Amazon VPC connected to the infrastructure where your provider type is installed.
  final String vpcId;

  /// Creates a new [HostVpcConfiguration].
  /// [securityGroupIds] ID of the security group or security groups associated with the Amazon VPC connected to the infrastructure where your provider type is installed.
  /// [subnetIds] The ID of the subnet or subnets associated with the Amazon VPC connected to the infrastructure where your provider type is installed.
  /// [tlsCertificate] The value of the Transport Layer Security (TLS) certificate associated with the infrastructure where your provider type is installed.
  /// [vpcId] The ID of the Amazon VPC connected to the infrastructure where your provider type is installed.
  HostVpcConfiguration({
    required this.securityGroupIds,
    required this.subnetIds,
    this.tlsCertificate,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'tlsCertificate': ?tlsCertificate,
      'vpcId': vpcId,
    };
  }

  factory HostVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return HostVpcConfiguration(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tlsCertificate: map['tlsCertificate'] == null ? null : map['tlsCertificate'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

