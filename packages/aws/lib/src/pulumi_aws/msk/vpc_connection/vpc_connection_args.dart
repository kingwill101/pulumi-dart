// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcConnection.
class VpcConnectionArgs {
  /// The authentication type for the client VPC connection. Specify one of these auth type strings: SASL_IAM, SASL_SCRAM, or TLS.
  final Input<String> authentication;

  /// The list of subnets in the client VPC to connect to.
  final Input<List<String>> clientSubnets;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The security groups to attach to the ENIs for the broker nodes.
  final Input<List<String>> securityGroups;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The Amazon Resource Name (ARN) of the cluster.
  final Input<String> targetClusterArn;

  /// The VPC ID of the remote client.
  final Input<String> vpcId;

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
    final map = <String, dynamic>{};
    map['authentication'] = authentication;
    map['clientSubnets'] = clientSubnets;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroups'] = securityGroups;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetClusterArn'] = targetClusterArn;
    map['vpcId'] = vpcId;
    return map;
  }

  factory VpcConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpcConnectionArgs(
      authentication: Input.asInput<String>(map['authentication']),
      clientSubnets: Input.asInput<List<String>>(map['clientSubnets']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroups: Input.asInput<List<String>>(map['securityGroups']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetClusterArn: Input.asInput<String>(map['targetClusterArn']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
