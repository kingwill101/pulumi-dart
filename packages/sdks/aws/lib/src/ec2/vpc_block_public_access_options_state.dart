// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_block_public_access_options_timeouts.dart';

/// Input properties used for looking up and filtering VpcBlockPublicAccessOptions resources.
class VpcBlockPublicAccessOptionsState {
  /// The AWS account id to which these options apply.
  final pulumi.Input<String>? awsAccountId;
  /// The AWS region to which these options apply.
  final pulumi.Input<String>? awsRegion;
  /// Block mode. Needs to be one of `block-bidirectional`, `block-ingress`, `off`. If this resource is deleted, then this value will be set to `off` in the AWS account and region.
  final pulumi.Input<String>? internetGatewayBlockMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<VpcBlockPublicAccessOptionsTimeouts>? timeouts;

  /// Creates a new [VpcBlockPublicAccessOptionsState].
  /// [awsAccountId] The AWS account id to which these options apply.
  /// [awsRegion] The AWS region to which these options apply.
  /// [internetGatewayBlockMode] Block mode. Needs to be one of `block-bidirectional`, `block-ingress`, `off`. If this resource is deleted, then this value will be set to `off` in the AWS account and region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  VpcBlockPublicAccessOptionsState({
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? awsRegion,
    pulumi.Output<String>? internetGatewayBlockMode,
    pulumi.Output<String>? region,
    pulumi.Output<VpcBlockPublicAccessOptionsTimeouts>? timeouts,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      awsRegion = pulumi.Input.asOptionalInput<String>(awsRegion),
      internetGatewayBlockMode = pulumi.Input.asOptionalInput<String>(internetGatewayBlockMode),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<VpcBlockPublicAccessOptionsTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'awsRegion': ?awsRegion,
      'internetGatewayBlockMode': ?internetGatewayBlockMode,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VpcBlockPublicAccessOptionsTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory VpcBlockPublicAccessOptionsState.fromMap(Map<String, dynamic> map) {
    return VpcBlockPublicAccessOptionsState(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      awsRegion: map['awsRegion'] == null ? null : pulumi.Output.create<String>(map['awsRegion'] as String),
      internetGatewayBlockMode: map['internetGatewayBlockMode'] == null ? null : pulumi.Output.create<String>(map['internetGatewayBlockMode'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<VpcBlockPublicAccessOptionsTimeouts>(VpcBlockPublicAccessOptionsTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

