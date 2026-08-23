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
  const VpcBlockPublicAccessOptionsState({
    this.awsAccountId,
    this.awsRegion,
    this.internetGatewayBlockMode,
    this.region,
    this.timeouts,
  });

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
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetGatewayBlockMode: (() { final guardedValue = map['internetGatewayBlockMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcBlockPublicAccessOptionsTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
