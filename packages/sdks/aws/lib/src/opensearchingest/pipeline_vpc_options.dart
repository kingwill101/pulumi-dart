// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineVpcOptions {
  /// A list of security groups associated with the VPC endpoint.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// A list of subnet IDs associated with the VPC endpoint.
  final pulumi.Input<List<String>> subnetIds;
  /// Whether you or Amazon OpenSearch Ingestion service create and manage the VPC endpoint configured for the pipeline. Valid values are `CUSTOMER` or `SERVICE`
  final pulumi.Input<String?>? vpcEndpointManagement;

  /// Creates a new [PipelineVpcOptions].
  /// [securityGroupIds] A list of security groups associated with the VPC endpoint.
  /// [subnetIds] A list of subnet IDs associated with the VPC endpoint.
  /// [vpcEndpointManagement] Whether you or Amazon OpenSearch Ingestion service create and manage the VPC endpoint configured for the pipeline. Valid values are `CUSTOMER` or `SERVICE`
  const PipelineVpcOptions({
    this.securityGroupIds,
    required this.subnetIds,
    this.vpcEndpointManagement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': subnetIds,
      'vpcEndpointManagement': ?vpcEndpointManagement,
    };
  }

  factory PipelineVpcOptions.fromMap(Map<String, dynamic> map) {
    return PipelineVpcOptions(
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcEndpointManagement: (() { final guardedValue = map['vpcEndpointManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
