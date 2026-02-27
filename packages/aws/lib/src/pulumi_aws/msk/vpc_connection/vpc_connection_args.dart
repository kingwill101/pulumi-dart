// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcConnection.
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
      authentication: pulumi.Input.asInput<String>(map['authentication']),
      clientSubnets: pulumi.Input.asInput<List<String>>(map['clientSubnets']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroups: pulumi.Input.asInput<List<String>>(map['securityGroups']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetClusterArn: pulumi.Input.asInput<String>(map['targetClusterArn']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}
