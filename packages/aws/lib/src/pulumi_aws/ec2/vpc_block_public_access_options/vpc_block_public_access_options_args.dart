// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_block_public_access_options_timeouts/vpc_block_public_access_options_timeouts.dart';

/// The set of arguments for VpcBlockPublicAccessOptions.
class VpcBlockPublicAccessOptionsArgs {
  /// Block mode. Needs to be one of `block-bidirectional`, `block-ingress`, `off`. If this resource is deleted, then this value will be set to `off` in the AWS account and region.
  final pulumi.Input<String> internetGatewayBlockMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<VpcBlockPublicAccessOptionsTimeouts>? timeouts;

  VpcBlockPublicAccessOptionsArgs({
    required this.internetGatewayBlockMode,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['internetGatewayBlockMode'] = internetGatewayBlockMode;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          VpcBlockPublicAccessOptionsTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory VpcBlockPublicAccessOptionsArgs.fromMap(Map<String, dynamic> map) {
    return VpcBlockPublicAccessOptionsArgs(
      internetGatewayBlockMode:
          pulumi.Input.asInput<String>(map['internetGatewayBlockMode']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts:
          pulumi.Input.asOptionalInput<VpcBlockPublicAccessOptionsTimeouts>(
              map['timeouts']),
    );
  }
}
