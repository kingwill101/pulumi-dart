// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcConnection resources.
class VpcConnectionState {
  /// Amazon Resource Name (ARN) of the VPC connection.
  final pulumi.Input<String>? arn;
  /// The authentication type for the client VPC connection. Specify one of these auth type strings: SASL_IAM, SASL_SCRAM, or TLS.
  final pulumi.Input<String>? authentication;
  /// The list of subnets in the client VPC to connect to.
  final pulumi.Input<List<String>>? clientSubnets;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The security groups to attach to the ENIs for the broker nodes.
  final pulumi.Input<List<String>>? securityGroups;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon Resource Name (ARN) of the cluster.
  final pulumi.Input<String>? targetClusterArn;
  /// The VPC ID of the remote client.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcConnectionState].
  /// [arn] Amazon Resource Name (ARN) of the VPC connection.
  /// [authentication] The authentication type for the client VPC connection. Specify one of these auth type strings: SASL_IAM, SASL_SCRAM, or TLS.
  /// [clientSubnets] The list of subnets in the client VPC to connect to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] The security groups to attach to the ENIs for the broker nodes.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetClusterArn] The Amazon Resource Name (ARN) of the cluster.
  /// [vpcId] The VPC ID of the remote client.
  const VpcConnectionState({
    this.arn,
    this.authentication,
    this.clientSubnets,
    this.region,
    this.securityGroups,
    this.tags,
    this.tagsAll,
    this.targetClusterArn,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authentication': ?authentication,
      'clientSubnets': ?clientSubnets,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetClusterArn': ?targetClusterArn,
      'vpcId': ?vpcId,
    };
  }

  factory VpcConnectionState.fromMap(Map<String, dynamic> map) {
    return VpcConnectionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSubnets: (() { final guardedValue = map['clientSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetClusterArn: (() { final guardedValue = map['targetClusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

