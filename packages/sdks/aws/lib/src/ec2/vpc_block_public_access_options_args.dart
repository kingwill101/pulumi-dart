// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_block_public_access_options_timeouts.dart';

/// {@template pulumi_ec2_vpc_block_public_access_options_vpc_block_public_access_options_args_doc}
/// The set of arguments for VpcBlockPublicAccessOptions.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_block_public_access_options_vpc_block_public_access_options_args_doc}
class VpcBlockPublicAccessOptionsArgs {
  /// Block mode. Needs to be one of `block-bidirectional`, `block-ingress`, `off`. If this resource is deleted, then this value will be set to `off` in the AWS account and region.
  final pulumi.Input<String> internetGatewayBlockMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<VpcBlockPublicAccessOptionsTimeouts>? timeouts;

  /// Creates a new [VpcBlockPublicAccessOptionsArgs].
  /// [internetGatewayBlockMode] Block mode. Needs to be one of `block-bidirectional`, `block-ingress`, `off`. If this resource is deleted, then this value will be set to `off` in the AWS account and region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const VpcBlockPublicAccessOptionsArgs({
    required this.internetGatewayBlockMode,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetGatewayBlockMode': internetGatewayBlockMode,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VpcBlockPublicAccessOptionsTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory VpcBlockPublicAccessOptionsArgs.fromMap(Map<String, dynamic> map) {
    return VpcBlockPublicAccessOptionsArgs(
      internetGatewayBlockMode: pulumi.Input.fromValue(map['internetGatewayBlockMode'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcBlockPublicAccessOptionsTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
