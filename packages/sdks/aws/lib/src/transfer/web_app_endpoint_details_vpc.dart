// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAppEndpointDetailsVpc {
  /// List of security group IDs that control access to the web app endpoint. If not specified, the VPC's default security group is used.
  final pulumi.Input<List<String>>? securityGroupIds;

  /// List of subnet IDs within the VPC where the web app endpoint will be deployed. These subnets must be in the same VPC specified in the `vpc_id` parameter.
  final pulumi.Input<List<String>> subnetIds;

  /// ID of the VPC endpoint created for the web app.
  final pulumi.Input<String>? vpcEndpointId;

  /// ID of the VPC where the web app endpoint will be hosted. The VPC must be dual-stack, meaning it supports both IPv4 and IPv6 addressing.
  final pulumi.Input<String> vpcId;

  /// Creates a new [WebAppEndpointDetailsVpc].
  /// [securityGroupIds] List of security group IDs that control access to the web app endpoint. If not specified, the VPC's default security group is used.
  /// [subnetIds] List of subnet IDs within the VPC where the web app endpoint will be deployed. These subnets must be in the same VPC specified in the `vpc_id` parameter.
  /// [vpcEndpointId] ID of the VPC endpoint created for the web app.
  /// [vpcId] ID of the VPC where the web app endpoint will be hosted. The VPC must be dual-stack, meaning it supports both IPv4 and IPv6 addressing.
  WebAppEndpointDetailsVpc({
    this.securityGroupIds,
    required this.subnetIds,
    this.vpcEndpointId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': subnetIds,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcId': vpcId,
    };
  }

  factory WebAppEndpointDetailsVpc.fromMap(Map<String, dynamic> map) {
    return WebAppEndpointDetailsVpc(
      securityGroupIds: (() {
        final guardedValue = map['securityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      subnetIds: pulumi.Input.fromValue(
        (map['subnetIds'] as List).cast<String>(),
      ),
      vpcEndpointId: (() {
        final guardedValue = map['vpcEndpointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
