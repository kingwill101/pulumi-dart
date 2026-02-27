// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NetworkProfile.
class NetworkProfileArgs {
  /// The description of the network profile.
  final Input<String>? description;

  /// The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  final Input<int>? downlinkBandwidthBits;

  /// Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  final Input<int>? downlinkDelayMs;

  /// Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  final Input<int>? downlinkJitterMs;

  /// Proportion of received packets that fail to arrive from `0` to `100` percent.
  final Input<int>? downlinkLossPercent;

  /// The name for the network profile.
  final Input<String>? name;

  /// The ARN of the project for the network profile.
  final Input<String> projectArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The type of network profile to create. Valid values are listed are `PRIVATE` and `CURATED`.
  final Input<String>? type;

  /// The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  final Input<int>? uplinkBandwidthBits;

  /// Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  final Input<int>? uplinkDelayMs;

  /// Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  final Input<int>? uplinkJitterMs;

  /// Proportion of received packets that fail to arrive from `0` to `100` percent.
  final Input<int>? uplinkLossPercent;

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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final downlinkBandwidthBitsValue = downlinkBandwidthBits;
    if (downlinkBandwidthBitsValue != null) {
      map['downlinkBandwidthBits'] = downlinkBandwidthBitsValue;
    }
    final downlinkDelayMsValue = downlinkDelayMs;
    if (downlinkDelayMsValue != null) {
      map['downlinkDelayMs'] = downlinkDelayMsValue;
    }
    final downlinkJitterMsValue = downlinkJitterMs;
    if (downlinkJitterMsValue != null) {
      map['downlinkJitterMs'] = downlinkJitterMsValue;
    }
    final downlinkLossPercentValue = downlinkLossPercent;
    if (downlinkLossPercentValue != null) {
      map['downlinkLossPercent'] = downlinkLossPercentValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['projectArn'] = projectArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final uplinkBandwidthBitsValue = uplinkBandwidthBits;
    if (uplinkBandwidthBitsValue != null) {
      map['uplinkBandwidthBits'] = uplinkBandwidthBitsValue;
    }
    final uplinkDelayMsValue = uplinkDelayMs;
    if (uplinkDelayMsValue != null) {
      map['uplinkDelayMs'] = uplinkDelayMsValue;
    }
    final uplinkJitterMsValue = uplinkJitterMs;
    if (uplinkJitterMsValue != null) {
      map['uplinkJitterMs'] = uplinkJitterMsValue;
    }
    final uplinkLossPercentValue = uplinkLossPercent;
    if (uplinkLossPercentValue != null) {
      map['uplinkLossPercent'] = uplinkLossPercentValue;
    }
    return map;
  }

  factory NetworkProfileArgs.fromMap(Map<String, dynamic> map) {
    return NetworkProfileArgs(
      description: Input.asOptionalInput<String>(map['description']),
      downlinkBandwidthBits:
          Input.asOptionalInput<int>(map['downlinkBandwidthBits']),
      downlinkDelayMs: Input.asOptionalInput<int>(map['downlinkDelayMs']),
      downlinkJitterMs: Input.asOptionalInput<int>(map['downlinkJitterMs']),
      downlinkLossPercent:
          Input.asOptionalInput<int>(map['downlinkLossPercent']),
      name: Input.asOptionalInput<String>(map['name']),
      projectArn: Input.asInput<String>(map['projectArn']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asOptionalInput<String>(map['type']),
      uplinkBandwidthBits:
          Input.asOptionalInput<int>(map['uplinkBandwidthBits']),
      uplinkDelayMs: Input.asOptionalInput<int>(map['uplinkDelayMs']),
      uplinkJitterMs: Input.asOptionalInput<int>(map['uplinkJitterMs']),
      uplinkLossPercent: Input.asOptionalInput<int>(map['uplinkLossPercent']),
    );
  }
}
