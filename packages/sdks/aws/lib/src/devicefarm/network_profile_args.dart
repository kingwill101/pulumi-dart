// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devicefarm_network_profile_network_profile_args_doc}
/// The set of arguments for NetworkProfile.
/// {@endtemplate}
/// {@macro pulumi_devicefarm_network_profile_network_profile_args_doc}
class NetworkProfileArgs {
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
  final pulumi.Input<String> projectArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
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

  /// Creates a new [NetworkProfileArgs].
  /// [description] The description of the network profile.
  /// [downlinkBandwidthBits] The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  /// [downlinkDelayMs] Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  /// [downlinkJitterMs] Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  /// [downlinkLossPercent] Proportion of received packets that fail to arrive from `0` to `100` percent.
  /// [name] The name for the network profile.
  /// [projectArn] The ARN of the project for the network profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The type of network profile to create. Valid values are listed are `PRIVATE` and `CURATED`.
  /// [uplinkBandwidthBits] The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  /// [uplinkDelayMs] Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  /// [uplinkJitterMs] Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  /// [uplinkLossPercent] Proportion of received packets that fail to arrive from `0` to `100` percent.
  NetworkProfileArgs({
    this.description,
    this.downlinkBandwidthBits,
    this.downlinkDelayMs,
    this.downlinkJitterMs,
    this.downlinkLossPercent,
    this.name,
    required this.projectArn,
    this.region,
    this.tags,
    this.type,
    this.uplinkBandwidthBits,
    this.uplinkDelayMs,
    this.uplinkJitterMs,
    this.uplinkLossPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'downlinkBandwidthBits': ?downlinkBandwidthBits,
      'downlinkDelayMs': ?downlinkDelayMs,
      'downlinkJitterMs': ?downlinkJitterMs,
      'downlinkLossPercent': ?downlinkLossPercent,
      'name': ?name,
      'projectArn': projectArn,
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
      'uplinkBandwidthBits': ?uplinkBandwidthBits,
      'uplinkDelayMs': ?uplinkDelayMs,
      'uplinkJitterMs': ?uplinkJitterMs,
      'uplinkLossPercent': ?uplinkLossPercent,
    };
  }

  factory NetworkProfileArgs.fromMap(Map<String, dynamic> map) {
    return NetworkProfileArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      downlinkBandwidthBits: map['downlinkBandwidthBits'] == null ? null : ((map['downlinkBandwidthBits'] as int).input()).input(),
      downlinkDelayMs: map['downlinkDelayMs'] == null ? null : ((map['downlinkDelayMs'] as int).input()).input(),
      downlinkJitterMs: map['downlinkJitterMs'] == null ? null : ((map['downlinkJitterMs'] as int).input()).input(),
      downlinkLossPercent: map['downlinkLossPercent'] == null ? null : ((map['downlinkLossPercent'] as int).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      projectArn: (map['projectArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      uplinkBandwidthBits: map['uplinkBandwidthBits'] == null ? null : ((map['uplinkBandwidthBits'] as int).input()).input(),
      uplinkDelayMs: map['uplinkDelayMs'] == null ? null : ((map['uplinkDelayMs'] as int).input()).input(),
      uplinkJitterMs: map['uplinkJitterMs'] == null ? null : ((map['uplinkJitterMs'] as int).input()).input(),
      uplinkLossPercent: map['uplinkLossPercent'] == null ? null : ((map['uplinkLossPercent'] as int).input()).input(),
    );
  }
}

