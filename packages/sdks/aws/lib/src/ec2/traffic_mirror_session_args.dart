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
    return <String, dynamic>{
      'description': ?description,
      'networkInterfaceId': networkInterfaceId,
      'packetLength': ?packetLength,
      'region': ?region,
      'sessionNumber': sessionNumber,
      'tags': ?tags,
      'trafficMirrorFilterId': trafficMirrorFilterId,
      'trafficMirrorTargetId': trafficMirrorTargetId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory TrafficMirrorSessionArgs.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorSessionArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkInterfaceId: pulumi.Input.fromValue(
        map['networkInterfaceId'] as String,
      ),
      packetLength: (() {
        final guardedValue = map['packetLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionNumber: pulumi.Input.fromValue(map['sessionNumber'] as int),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      trafficMirrorFilterId: pulumi.Input.fromValue(
        map['trafficMirrorFilterId'] as String,
      ),
      trafficMirrorTargetId: pulumi.Input.fromValue(
        map['trafficMirrorTargetId'] as String,
      ),
      virtualNetworkId: (() {
        final guardedValue = map['virtualNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
