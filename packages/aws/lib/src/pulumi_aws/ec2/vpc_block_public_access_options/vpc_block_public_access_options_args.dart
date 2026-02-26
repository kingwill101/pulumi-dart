// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_block_public_access_options_timeouts/vpc_block_public_access_options_timeouts.dart';

/// The set of arguments for VpcBlockPublicAccessOptions.
class VpcBlockPublicAccessOptionsArgs {
  /// Block mode. Needs to be one of `block-bidirectional`, `block-ingress`, <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span>. If this resource is deleted, then this value will be set to <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span> in the AWS account and region.
  final Input<String> internetGatewayBlockMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<VpcBlockPublicAccessOptionsTimeouts>? timeouts;

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
      map['timeouts'] = Input.mapOptionalInputValue<
          VpcBlockPublicAccessOptionsTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory VpcBlockPublicAccessOptionsArgs.fromMap(Map<String, dynamic> map) {
    return VpcBlockPublicAccessOptionsArgs(
      internetGatewayBlockMode:
          Input.asInput<String>(map['internetGatewayBlockMode']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts: Input.asOptionalInput<VpcBlockPublicAccessOptionsTimeouts>(
          map['timeouts']),
    );
  }
}
