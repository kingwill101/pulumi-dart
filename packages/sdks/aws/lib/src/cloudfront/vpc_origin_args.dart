// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_origin_timeouts.dart';
import 'vpc_origin_vpc_origin_endpoint_config.dart';

/// {@template pulumi_cloudfront_vpc_origin_vpc_origin_args_doc}
/// The set of arguments for VpcOrigin.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_vpc_origin_vpc_origin_args_doc}
class VpcOriginArgs {
  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<VpcOriginTimeouts>? timeouts;
  /// The VPC origin endpoint configuration.
  ///
  /// The following arguments are optional:
  final pulumi.Input<VpcOriginVpcOriginEndpointConfig> vpcOriginEndpointConfig;

  /// Creates a new [VpcOriginArgs].
  /// [tags] Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [vpcOriginEndpointConfig] The VPC origin endpoint configuration.
  VpcOriginArgs({
    this.tags,
    this.timeouts,
    required this.vpcOriginEndpointConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VpcOriginTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcOriginEndpointConfig': pulumi.Input.mapInputValue<VpcOriginVpcOriginEndpointConfig, Map<String, dynamic>>(vpcOriginEndpointConfig, (value) => value.toMap()),
    };
  }

  factory VpcOriginArgs.fromMap(Map<String, dynamic> map) {
    return VpcOriginArgs(
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((VpcOriginTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcOriginEndpointConfig: (VpcOriginVpcOriginEndpointConfig.fromMap((map['vpcOriginEndpointConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

