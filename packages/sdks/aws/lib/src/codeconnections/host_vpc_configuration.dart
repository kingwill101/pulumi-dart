// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HostVpcConfiguration {
  /// ID of the security group or security groups associated with the Amazon VPC connected to the infrastructure where your provider type is installed.
  final pulumi.Input<List<String>> securityGroupIds;

  /// The ID of the subnet or subnets associated with the Amazon VPC connected to the infrastructure where your provider type is installed.
  final pulumi.Input<List<String>> subnetIds;

  /// The value of the Transport Layer Security (TLS) certificate associated with the infrastructure where your provider type is installed.
  final pulumi.Input<String>? tlsCertificate;

  /// The ID of the Amazon VPC connected to the infrastructure where your provider type is installed.
  final pulumi.Input<String> vpcId;

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
      securityGroupIds: pulumi.Input.fromValue(
        (map['securityGroupIds'] as List).cast<String>(),
      ),
      subnetIds: pulumi.Input.fromValue(
        (map['subnetIds'] as List).cast<String>(),
      ),
      tlsCertificate: (() {
        final guardedValue = map['tlsCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
