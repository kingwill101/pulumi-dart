import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_session_args.dart';

/// Provides an Traffic mirror session.
/// Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring
///
/// ## Example Usage
///
/// To create a basic traffic mirror session
///
///
///
/// ## Import
///
/// Using `pulumi import`, import traffic mirror sessions using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/trafficMirrorSession:TrafficMirrorSession session tms-0d8aa3ca35897b82e
/// ```
class TrafficMirrorSession extends pulumi.CustomResource {
  /// The ARN of the traffic mirror session.
  late final pulumi.Output<String> arn;

  /// A description of the traffic mirror session.
  late final pulumi.Output<String?> description;

  /// ID of the source network interface. Not all network interfaces are eligible as mirror sources. On EC2 instances only nitro based instances support mirroring.
  late final pulumi.Output<String> networkInterfaceId;

  /// The AWS account ID of the session owner.
  late final pulumi.Output<String> ownerId;

  /// The number of bytes in each packet to mirror. These are bytes after the VXLAN header. Do not specify this parameter when you want to mirror the entire packet. To mirror a subset of the packet, set this to the length (in bytes) that you want to mirror.
  late final pulumi.Output<int> packetLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
  late final pulumi.Output<int> sessionNumber;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ID of the traffic mirror filter to be used
  late final pulumi.Output<String> trafficMirrorFilterId;

  /// ID of the traffic mirror target to be used
  late final pulumi.Output<String> trafficMirrorTargetId;

  /// The VXLAN ID for the Traffic Mirror session. For more information about the VXLAN protocol, see RFC 7348. If you do not specify a VirtualNetworkId, an account-wide unique id is chosen at random.
  late final pulumi.Output<int> virtualNetworkId;

  TrafficMirrorSession(
    String name, {
    TrafficMirrorSessionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/trafficMirrorSession:TrafficMirrorSession',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.ownerId = registerOutput<String>('ownerId');
    this.packetLength = registerOutput<int>('packetLength');
    this.region = registerOutput<String>('region');
    this.sessionNumber = registerOutput<int>('sessionNumber');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trafficMirrorFilterId =
        registerOutput<String>('trafficMirrorFilterId');
    this.trafficMirrorTargetId =
        registerOutput<String>('trafficMirrorTargetId');
    this.virtualNetworkId = registerOutput<int>('virtualNetworkId');
  }
}
