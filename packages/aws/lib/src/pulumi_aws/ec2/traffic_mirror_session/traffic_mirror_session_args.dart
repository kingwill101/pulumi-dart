// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TrafficMirrorSession.
class TrafficMirrorSessionArgs {
  /// A description of the traffic mirror session.
  final Input<String>? description;

  /// ID of the source network interface. Not all network interfaces are eligible as mirror sources. On EC2 instances only nitro based instances support mirroring.
  final Input<String> networkInterfaceId;

  /// The number of bytes in each packet to mirror. These are bytes after the VXLAN header. Do not specify this parameter when you want to mirror the entire packet. To mirror a subset of the packet, set this to the length (in bytes) that you want to mirror.
  final Input<int>? packetLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
  final Input<int> sessionNumber;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// ID of the traffic mirror filter to be used
  final Input<String> trafficMirrorFilterId;

  /// ID of the traffic mirror target to be used
  final Input<String> trafficMirrorTargetId;

  /// The VXLAN ID for the Traffic Mirror session. For more information about the VXLAN protocol, see RFC 7348. If you do not specify a VirtualNetworkId, an account-wide unique id is chosen at random.
  final Input<int>? virtualNetworkId;

  TrafficMirrorSessionArgs({
    this.description,
    required this.networkInterfaceId,
    this.packetLength,
    this.region,
    required this.sessionNumber,
    this.tags,
    required this.trafficMirrorFilterId,
    required this.trafficMirrorTargetId,
    this.virtualNetworkId,
  });

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
      description: Input.asOptionalInput<String>(map['description']),
      networkInterfaceId: Input.asInput<String>(map['networkInterfaceId']),
      packetLength: Input.asOptionalInput<int>(map['packetLength']),
      region: Input.asOptionalInput<String>(map['region']),
      sessionNumber: Input.asInput<int>(map['sessionNumber']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      trafficMirrorFilterId:
          Input.asInput<String>(map['trafficMirrorFilterId']),
      trafficMirrorTargetId:
          Input.asInput<String>(map['trafficMirrorTargetId']),
      virtualNetworkId: Input.asOptionalInput<int>(map['virtualNetworkId']),
    );
  }
}
