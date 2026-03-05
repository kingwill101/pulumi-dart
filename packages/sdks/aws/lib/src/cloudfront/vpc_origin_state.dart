// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_origin_timeouts.dart';
import 'vpc_origin_vpc_origin_endpoint_config.dart';

/// Input properties used for looking up and filtering VpcOrigin resources.
class VpcOriginState {
  /// The VPC origin ARN.
  final pulumi.Input<String>? arn;
  /// The current version of the origin.
  final pulumi.Input<String>? etag;
  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<VpcOriginTimeouts>? timeouts;
  /// The VPC origin endpoint configuration.
  ///
  /// The following arguments are optional:
  final pulumi.Input<VpcOriginVpcOriginEndpointConfig>? vpcOriginEndpointConfig;

  /// Creates a new [VpcOriginState].
  /// [arn] The VPC origin ARN.
  /// [etag] The current version of the origin.
  /// [tags] Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [vpcOriginEndpointConfig] The VPC origin endpoint configuration.
  VpcOriginState({
    this.arn,
    this.etag,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vpcOriginEndpointConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'etag': ?etag,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VpcOriginTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcOriginEndpointConfig': ?pulumi.Input.mapOptionalInputValue<VpcOriginVpcOriginEndpointConfig, Map<String, dynamic>>(vpcOriginEndpointConfig, (value) => value.toMap()),
    };
  }

  factory VpcOriginState.fromMap(Map<String, dynamic> map) {
    return VpcOriginState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcOriginTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcOriginEndpointConfig: (() { final guardedValue = map['vpcOriginEndpointConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcOriginVpcOriginEndpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

