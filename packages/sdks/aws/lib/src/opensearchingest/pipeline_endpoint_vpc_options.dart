// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineEndpointVpcOptions {
  /// List of security groups associated with the VPC endpoint.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// List of subnet IDs associated with the VPC endpoint.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [PipelineEndpointVpcOptions].
  /// [securityGroupIds] List of security groups associated with the VPC endpoint.
  /// [subnetIds] List of subnet IDs associated with the VPC endpoint.
  const PipelineEndpointVpcOptions({
    this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': subnetIds,
    };
  }

  factory PipelineEndpointVpcOptions.fromMap(Map<String, dynamic> map) {
    return PipelineEndpointVpcOptions(
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
    );
  }
}
