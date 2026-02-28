// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_traffic_mirror_session_traffic_mirror_session_args_doc}
/// The set of arguments for TrafficMirrorSession.
/// {@endtemplate}
/// {@macro pulumi_ec2_traffic_mirror_session_traffic_mirror_session_args_doc}
class TrafficMirrorSessionArgs {
  /// A description of the traffic mirror session.
  final pulumi.Input<String>? description;

  /// ID of the source network interface. Not all network interfaces are eligible as mirror sources. On EC2 instances only nitro based instances support mirroring.
  final pulumi.Input<String> networkInterfaceId;

  /// The number of bytes in each packet to mirror. These are bytes after the VXLAN header. Do not specify this parameter when you want to mirror the entire packet. To mirror a subset of the packet, set this to the length (in bytes) that you want to mirror.
  final pulumi.Input<int>? packetLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
  final pulumi.Input<int> sessionNumber;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// ID of the traffic mirror filter to be used
  final pulumi.Input<String> trafficMirrorFilterId;

  /// ID of the traffic mirror target to be used
  final pulumi.Input<String> trafficMirrorTargetId;

  /// The VXLAN ID for the Traffic Mirror session. For more information about the VXLAN protocol, see RFC 7348. If you do not specify a VirtualNetworkId, an account-wide unique id is chosen at random.
  final pulumi.Input<int>? virtualNetworkId;

  /// Creates a new [TrafficMirrorSessionArgs].
  /// [description] A description of the traffic mirror session.
  /// [networkInterfaceId] ID of the source network interface. Not all network interfaces are eligible as mirror sources. On EC2 instances only nitro based instances support mirroring.
  /// [packetLength] The number of bytes in each packet to mirror. These are bytes after the VXLAN header. Do not specify this parameter when you want to mirror the entire packet. To mirror a subset of the packet, set this to the length (in bytes) that you want to mirror.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sessionNumber] The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [trafficMirrorFilterId] ID of the traffic mirror filter to be used
  /// [trafficMirrorTargetId] ID of the traffic mirror target to be used
  /// [virtualNetworkId] The VXLAN ID for the Traffic Mirror session. For more information about the VXLAN protocol, see RFC 7348. If you do not specify a VirtualNetworkId, an account-wide unique id is chosen at random.
  TrafficMirrorSessionArgs({
    String? description,
    required String networkInterfaceId,
    int? packetLength,
    String? region,
    required int sessionNumber,
    Map<String, String>? tags,
    required String trafficMirrorFilterId,
    required String trafficMirrorTargetId,
    int? virtualNetworkId,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        networkInterfaceId = pulumi.Input.asInput<String>(networkInterfaceId),
        packetLength = pulumi.Input.asOptionalInput<int>(packetLength),
        region = pulumi.Input.asOptionalInput<String>(region),
        sessionNumber = pulumi.Input.asInput<int>(sessionNumber),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        trafficMirrorFilterId =
            pulumi.Input.asInput<String>(trafficMirrorFilterId),
        trafficMirrorTargetId =
            pulumi.Input.asInput<String>(trafficMirrorTargetId),
        virtualNetworkId = pulumi.Input.asOptionalInput<int>(virtualNetworkId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['networkInterfaceId'] = networkInterfaceId;
    final packetLengthValue = packetLength;
    if (packetLengthValue != null) {
      map['packetLength'] = packetLengthValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sessionNumber'] = sessionNumber;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['trafficMirrorFilterId'] = trafficMirrorFilterId;
    map['trafficMirrorTargetId'] = trafficMirrorTargetId;
    final virtualNetworkIdValue = virtualNetworkId;
    if (virtualNetworkIdValue != null) {
      map['virtualNetworkId'] = virtualNetworkIdValue;
    }
    return map;
  }

  factory TrafficMirrorSessionArgs.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorSessionArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      packetLength:
          map['packetLength'] == null ? null : map['packetLength'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      sessionNumber: map['sessionNumber'] as int,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      trafficMirrorFilterId: map['trafficMirrorFilterId'] as String,
      trafficMirrorTargetId: map['trafficMirrorTargetId'] as String,
      virtualNetworkId: map['virtualNetworkId'] == null
          ? null
          : map['virtualNetworkId'] as int,
    );
  }
}
