// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkProfile resources.
class NetworkProfileState {
  /// The Amazon Resource Name of this network profile.
  final pulumi.Input<String>? arn;
  /// The description of the network profile.
  final pulumi.Input<String>? description;
  /// The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  final pulumi.Input<int>? downlinkBandwidthBits;
  /// Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  final pulumi.Input<int>? downlinkDelayMs;
  /// Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  final pulumi.Input<int>? downlinkJitterMs;
  /// Proportion of received packets that fail to arrive from `0` to `100` percent.
  final pulumi.Input<int>? downlinkLossPercent;
  /// The name for the network profile.
  final pulumi.Input<String>? name;
  /// The ARN of the project for the network profile.
  final pulumi.Input<String>? projectArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The type of network profile to create. Valid values are listed are `PRIVATE` and `CURATED`.
  final pulumi.Input<String>? type;
  /// The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  final pulumi.Input<int>? uplinkBandwidthBits;
  /// Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  final pulumi.Input<int>? uplinkDelayMs;
  /// Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  final pulumi.Input<int>? uplinkJitterMs;
  /// Proportion of received packets that fail to arrive from `0` to `100` percent.
  final pulumi.Input<int>? uplinkLossPercent;

  /// Creates a new [NetworkProfileState].
  /// [arn] The Amazon Resource Name of this network profile.
  /// [description] The description of the network profile.
  /// [downlinkBandwidthBits] The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  /// [downlinkDelayMs] Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  /// [downlinkJitterMs] Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  /// [downlinkLossPercent] Proportion of received packets that fail to arrive from `0` to `100` percent.
  /// [name] The name for the network profile.
  /// [projectArn] The ARN of the project for the network profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [type] The type of network profile to create. Valid values are listed are `PRIVATE` and `CURATED`.
  /// [uplinkBandwidthBits] The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  /// [uplinkDelayMs] Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  /// [uplinkJitterMs] Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  /// [uplinkLossPercent] Proportion of received packets that fail to arrive from `0` to `100` percent.
  const NetworkProfileState({
    this.arn,
    this.description,
    this.downlinkBandwidthBits,
    this.downlinkDelayMs,
    this.downlinkJitterMs,
    this.downlinkLossPercent,
    this.name,
    this.projectArn,
    this.region,
    this.tags,
    this.tagsAll,
    this.type,
    this.uplinkBandwidthBits,
    this.uplinkDelayMs,
    this.uplinkJitterMs,
    this.uplinkLossPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'downlinkBandwidthBits': ?downlinkBandwidthBits,
      'downlinkDelayMs': ?downlinkDelayMs,
      'downlinkJitterMs': ?downlinkJitterMs,
      'downlinkLossPercent': ?downlinkLossPercent,
      'name': ?name,
      'projectArn': ?projectArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'uplinkBandwidthBits': ?uplinkBandwidthBits,
      'uplinkDelayMs': ?uplinkDelayMs,
      'uplinkJitterMs': ?uplinkJitterMs,
      'uplinkLossPercent': ?uplinkLossPercent,
    };
  }

  factory NetworkProfileState.fromMap(Map<String, dynamic> map) {
    return NetworkProfileState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      downlinkBandwidthBits: (() { final guardedValue = map['downlinkBandwidthBits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      downlinkDelayMs: (() { final guardedValue = map['downlinkDelayMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      downlinkJitterMs: (() { final guardedValue = map['downlinkJitterMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      downlinkLossPercent: (() { final guardedValue = map['downlinkLossPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectArn: (() { final guardedValue = map['projectArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uplinkBandwidthBits: (() { final guardedValue = map['uplinkBandwidthBits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uplinkDelayMs: (() { final guardedValue = map['uplinkDelayMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uplinkJitterMs: (() { final guardedValue = map['uplinkJitterMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uplinkLossPercent: (() { final guardedValue = map['uplinkLossPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
