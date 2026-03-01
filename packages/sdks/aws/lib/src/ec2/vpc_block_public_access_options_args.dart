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
  VpcBlockPublicAccessOptionsArgs({
    required pulumi.Output<String> internetGatewayBlockMode,
    pulumi.Output<String>? region,
    pulumi.Output<VpcBlockPublicAccessOptionsTimeouts>? timeouts,
  }) :
      internetGatewayBlockMode = pulumi.Input.asInput<String>(internetGatewayBlockMode),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<VpcBlockPublicAccessOptionsTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetGatewayBlockMode': internetGatewayBlockMode,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VpcBlockPublicAccessOptionsTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory VpcBlockPublicAccessOptionsArgs.fromMap(Map<String, dynamic> map) {
    return VpcBlockPublicAccessOptionsArgs(
      internetGatewayBlockMode: pulumi.Output.create<String>(map['internetGatewayBlockMode'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<VpcBlockPublicAccessOptionsTimeouts>(VpcBlockPublicAccessOptionsTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

