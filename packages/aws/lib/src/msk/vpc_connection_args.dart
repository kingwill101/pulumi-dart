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
    required String authentication,
    required List<String> clientSubnets,
    String? region,
    required List<String> securityGroups,
    Map<String, String>? tags,
    required String targetClusterArn,
    required String vpcId,
  }) :
      authentication = pulumi.Input.asInput<String>(authentication),
      clientSubnets = pulumi.Input.asInput<List<String>>(clientSubnets),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroups = pulumi.Input.asInput<List<String>>(securityGroups),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetClusterArn = pulumi.Input.asInput<String>(targetClusterArn),
      vpcId = pulumi.Input.asInput<String>(vpcId);

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
      authentication: map['authentication'] as String,
      clientSubnets: (map['clientSubnets'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetClusterArn: map['targetClusterArn'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

