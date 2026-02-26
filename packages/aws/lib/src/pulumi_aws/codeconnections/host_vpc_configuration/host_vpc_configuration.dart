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

  HostVpcConfiguration({
    required this.securityGroupIds,
    required this.subnetIds,
    this.tlsCertificate,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    final tlsCertificateValue = tlsCertificate;
    if (tlsCertificateValue != null) {
      map['tlsCertificate'] = tlsCertificateValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory HostVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return HostVpcConfiguration(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tlsCertificate: map['tlsCertificate'] == null
          ? null
          : map['tlsCertificate'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}
