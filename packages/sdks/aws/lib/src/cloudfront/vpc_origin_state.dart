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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<VpcOriginTimeouts>? timeouts,
    pulumi.Output<VpcOriginVpcOriginEndpointConfig>? vpcOriginEndpointConfig,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<VpcOriginTimeouts>(timeouts),
      vpcOriginEndpointConfig = pulumi.Input.asOptionalInput<VpcOriginVpcOriginEndpointConfig>(vpcOriginEndpointConfig);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<VpcOriginTimeouts>(VpcOriginTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vpcOriginEndpointConfig: map['vpcOriginEndpointConfig'] == null ? null : pulumi.Output.create<VpcOriginVpcOriginEndpointConfig>(VpcOriginVpcOriginEndpointConfig.fromMap((map['vpcOriginEndpointConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

