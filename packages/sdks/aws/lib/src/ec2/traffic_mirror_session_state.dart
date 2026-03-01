// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrafficMirrorSession resources.
class TrafficMirrorSessionState {
  /// The ARN of the traffic mirror session.
  final pulumi.Input<String>? arn;
  /// A description of the traffic mirror session.
  final pulumi.Input<String>? description;
  /// ID of the source network interface. Not all network interfaces are eligible as mirror sources. On EC2 instances only nitro based instances support mirroring.
  final pulumi.Input<String>? networkInterfaceId;
  /// The AWS account ID of the session owner.
  final pulumi.Input<String>? ownerId;
  /// The number of bytes in each packet to mirror. These are bytes after the VXLAN header. Do not specify this parameter when you want to mirror the entire packet. To mirror a subset of the packet, set this to the length (in bytes) that you want to mirror.
  final pulumi.Input<int>? packetLength;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
  final pulumi.Input<int>? sessionNumber;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ID of the traffic mirror filter to be used
  final pulumi.Input<String>? trafficMirrorFilterId;
  /// ID of the traffic mirror target to be used
  final pulumi.Input<String>? trafficMirrorTargetId;
  /// The VXLAN ID for the Traffic Mirror session. For more information about the VXLAN protocol, see RFC 7348. If you do not specify a VirtualNetworkId, an account-wide unique id is chosen at random.
  final pulumi.Input<int>? virtualNetworkId;

  /// Creates a new [TrafficMirrorSessionState].
  /// [arn] The ARN of the traffic mirror session.
  /// [description] A description of the traffic mirror session.
  /// [networkInterfaceId] ID of the source network interface. Not all network interfaces are eligible as mirror sources. On EC2 instances only nitro based instances support mirroring.
  /// [ownerId] The AWS account ID of the session owner.
  /// [packetLength] The number of bytes in each packet to mirror. These are bytes after the VXLAN header. Do not specify this parameter when you want to mirror the entire packet. To mirror a subset of the packet, set this to the length (in bytes) that you want to mirror.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sessionNumber] The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [trafficMirrorFilterId] ID of the traffic mirror filter to be used
  /// [trafficMirrorTargetId] ID of the traffic mirror target to be used
  /// [virtualNetworkId] The VXLAN ID for the Traffic Mirror session. For more information about the VXLAN protocol, see RFC 7348. If you do not specify a VirtualNetworkId, an account-wide unique id is chosen at random.
  TrafficMirrorSessionState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? ownerId,
    pulumi.Output<int>? packetLength,
    pulumi.Output<String>? region,
    pulumi.Output<int>? sessionNumber,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? trafficMirrorFilterId,
    pulumi.Output<String>? trafficMirrorTargetId,
    pulumi.Output<int>? virtualNetworkId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      packetLength = pulumi.Input.asOptionalInput<int>(packetLength),
      region = pulumi.Input.asOptionalInput<String>(region),
      sessionNumber = pulumi.Input.asOptionalInput<int>(sessionNumber),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      trafficMirrorFilterId = pulumi.Input.asOptionalInput<String>(trafficMirrorFilterId),
      trafficMirrorTargetId = pulumi.Input.asOptionalInput<String>(trafficMirrorTargetId),
      virtualNetworkId = pulumi.Input.asOptionalInput<int>(virtualNetworkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'networkInterfaceId': ?networkInterfaceId,
      'ownerId': ?ownerId,
      'packetLength': ?packetLength,
      'region': ?region,
      'sessionNumber': ?sessionNumber,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'trafficMirrorFilterId': ?trafficMirrorFilterId,
      'trafficMirrorTargetId': ?trafficMirrorTargetId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory TrafficMirrorSessionState.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorSessionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      packetLength: map['packetLength'] == null ? null : pulumi.Output.create<int>(map['packetLength'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sessionNumber: map['sessionNumber'] == null ? null : pulumi.Output.create<int>(map['sessionNumber'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      trafficMirrorFilterId: map['trafficMirrorFilterId'] == null ? null : pulumi.Output.create<String>(map['trafficMirrorFilterId'] as String),
      trafficMirrorTargetId: map['trafficMirrorTargetId'] == null ? null : pulumi.Output.create<String>(map['trafficMirrorTargetId'] as String),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : pulumi.Output.create<int>(map['virtualNetworkId'] as int),
    );
  }
}

