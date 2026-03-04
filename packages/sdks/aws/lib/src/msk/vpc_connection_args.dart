// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msk_vpc_connection_vpc_connection_args_doc}
/// The set of arguments for VpcConnection.
/// {@endtemplate}
/// {@macro pulumi_msk_vpc_connection_vpc_connection_args_doc}
class VpcConnectionArgs {
  /// The authentication type for the client VPC connection. Specify one of these auth type strings: SASL_IAM, SASL_SCRAM, or TLS.
  final pulumi.Input<String> authentication;

  /// The list of subnets in the client VPC to connect to.
  final pulumi.Input<List<String>> clientSubnets;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The security groups to attach to the ENIs for the broker nodes.
  final pulumi.Input<List<String>> securityGroups;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The Amazon Resource Name (ARN) of the cluster.
  final pulumi.Input<String> targetClusterArn;

  /// The VPC ID of the remote client.
  final pulumi.Input<String> vpcId;

  /// Creates a new [VpcConnectionArgs].
  /// [authentication] The authentication type for the client VPC connection. Specify one of these auth type strings: SASL_IAM, SASL_SCRAM, or TLS.
  /// [clientSubnets] The list of subnets in the client VPC to connect to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] The security groups to attach to the ENIs for the broker nodes.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetClusterArn] The Amazon Resource Name (ARN) of the cluster.
  /// [vpcId] The VPC ID of the remote client.
  VpcConnectionArgs({
    required this.authentication,
    required this.clientSubnets,
    this.region,
    required this.securityGroups,
    this.tags,
    required this.targetClusterArn,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication,
      'clientSubnets': clientSubnets,
      'region': ?region,
      'securityGroups': securityGroups,
      'tags': ?tags,
      'targetClusterArn': targetClusterArn,
      'vpcId': vpcId,
    };
  }

  factory VpcConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpcConnectionArgs(
      authentication: pulumi.Input.fromValue(map['authentication'] as String),
      clientSubnets: pulumi.Input.fromValue(
        (map['clientSubnets'] as List).cast<String>(),
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroups: pulumi.Input.fromValue(
        (map['securityGroups'] as List).cast<String>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetClusterArn: pulumi.Input.fromValue(
        map['targetClusterArn'] as String,
      ),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
