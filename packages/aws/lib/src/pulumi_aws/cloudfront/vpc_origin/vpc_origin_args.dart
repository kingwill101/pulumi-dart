// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_origin_timeouts/vpc_origin_timeouts.dart';
import '../vpc_origin_vpc_origin_endpoint_config/vpc_origin_vpc_origin_endpoint_config.dart';

/// The set of arguments for VpcOrigin.
class VpcOriginArgs {
  /// Key-value tags for the place index. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<VpcOriginTimeouts>? timeouts;

  /// The VPC origin endpoint configuration.
  ///
  /// The following arguments are optional:
  final Input<VpcOriginVpcOriginEndpointConfig> vpcOriginEndpointConfig;

  VpcOriginArgs({
    this.tags,
    this.timeouts,
    required this.vpcOriginEndpointConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<VpcOriginTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    map['vpcOriginEndpointConfig'] = Input.mapInputValue<
            VpcOriginVpcOriginEndpointConfig, Map<String, dynamic>>(
        vpcOriginEndpointConfig, (value) => value.toMap());
    return map;
  }

  factory VpcOriginArgs.fromMap(Map<String, dynamic> map) {
    return VpcOriginArgs(
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<VpcOriginTimeouts>(map['timeouts']),
      vpcOriginEndpointConfig: Input.asInput<VpcOriginVpcOriginEndpointConfig>(
          map['vpcOriginEndpointConfig']),
    );
  }
}
