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
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of network profile to create. Valid values are listed are `PRIVATE` and `CURATED`.
  /// [uplinkBandwidthBits] The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  /// [uplinkDelayMs] Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  /// [uplinkJitterMs] Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  /// [uplinkLossPercent] Proportion of received packets that fail to arrive from `0` to `100` percent.
  NetworkProfileState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<int>? downlinkBandwidthBits,
    pulumi.Output<int>? downlinkDelayMs,
    pulumi.Output<int>? downlinkJitterMs,
    pulumi.Output<int>? downlinkLossPercent,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<int>? uplinkBandwidthBits,
    pulumi.Output<int>? uplinkDelayMs,
    pulumi.Output<int>? uplinkJitterMs,
    pulumi.Output<int>? uplinkLossPercent,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      downlinkBandwidthBits = pulumi.Input.asOptionalInput<int>(downlinkBandwidthBits),
      downlinkDelayMs = pulumi.Input.asOptionalInput<int>(downlinkDelayMs),
      downlinkJitterMs = pulumi.Input.asOptionalInput<int>(downlinkJitterMs),
      downlinkLossPercent = pulumi.Input.asOptionalInput<int>(downlinkLossPercent),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectArn = pulumi.Input.asOptionalInput<String>(projectArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      uplinkBandwidthBits = pulumi.Input.asOptionalInput<int>(uplinkBandwidthBits),
      uplinkDelayMs = pulumi.Input.asOptionalInput<int>(uplinkDelayMs),
      uplinkJitterMs = pulumi.Input.asOptionalInput<int>(uplinkJitterMs),
      uplinkLossPercent = pulumi.Input.asOptionalInput<int>(uplinkLossPercent);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      downlinkBandwidthBits: map['downlinkBandwidthBits'] == null ? null : pulumi.Output.create<int>(map['downlinkBandwidthBits'] as int),
      downlinkDelayMs: map['downlinkDelayMs'] == null ? null : pulumi.Output.create<int>(map['downlinkDelayMs'] as int),
      downlinkJitterMs: map['downlinkJitterMs'] == null ? null : pulumi.Output.create<int>(map['downlinkJitterMs'] as int),
      downlinkLossPercent: map['downlinkLossPercent'] == null ? null : pulumi.Output.create<int>(map['downlinkLossPercent'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectArn: map['projectArn'] == null ? null : pulumi.Output.create<String>(map['projectArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      uplinkBandwidthBits: map['uplinkBandwidthBits'] == null ? null : pulumi.Output.create<int>(map['uplinkBandwidthBits'] as int),
      uplinkDelayMs: map['uplinkDelayMs'] == null ? null : pulumi.Output.create<int>(map['uplinkDelayMs'] as int),
      uplinkJitterMs: map['uplinkJitterMs'] == null ? null : pulumi.Output.create<int>(map['uplinkJitterMs'] as int),
      uplinkLossPercent: map['uplinkLossPercent'] == null ? null : pulumi.Output.create<int>(map['uplinkLossPercent'] as int),
    );
  }
}

