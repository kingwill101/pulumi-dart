import 'package:pulumi/pulumi.dart';
import 'packet_mirroring_args2.dart';
import 'packet_mirroring_filter_response2.dart';
import 'packet_mirroring_forwarding_rule_info_response2.dart';
import 'packet_mirroring_mirrored_resource_info_response2.dart';
import 'packet_mirroring_network_info_response2.dart';

/// Creates a PacketMirroring resource in the specified project and region using the data included in the request.
class PacketMirroring2 extends CustomResource {
  /// The Forwarding Rule resource of type loadBalancingScheme=INTERNAL that will be used as collector for mirrored traffic. The specified forwarding rule must have isMirroringCollector set to true.
  late final Output<PacketMirroringForwardingRuleInfoResponse2> collectorIlb;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
  late final Output<String> enable;

  /// Filter for mirrored traffic. If unspecified, all traffic is mirrored.
  late final Output<PacketMirroringFilterResponse2> filter;

  /// Type of the resource. Always compute#packetMirroring for packet mirrorings.
  late final Output<String> kind;

  /// PacketMirroring mirroredResourceInfos. MirroredResourceInfo specifies a set of mirrored VM instances, subnetworks and/or tags for which traffic from/to all VM instances will be mirrored.
  late final Output<PacketMirroringMirroredResourceInfoResponse2>
      mirroredResources;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// Specifies the mirrored VPC network. Only packets in this network will be mirrored. All mirrored VMs should have a NIC in the given network. All mirrored subnetworks should belong to the given network.
  late final Output<PacketMirroringNetworkInfoResponse2> network;

  /// The priority of applying this configuration. Priority is used to break ties in cases where there is more than one matching rule. In the case of two rules that apply for a given Instance, the one with the lowest-numbered priority value wins. Default value is 1000. Valid range is 0 through 65535.
  late final Output<int> priority;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  PacketMirroring2(
    String name, {
    PacketMirroringArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:PacketMirroring',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.collectorIlb =
        Output.createUnknown<PacketMirroringForwardingRuleInfoResponse2>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.enable = Output.createUnknown<String>();
    this.filter = Output.createUnknown<PacketMirroringFilterResponse2>();
    this.kind = Output.createUnknown<String>();
    this.mirroredResources =
        Output.createUnknown<PacketMirroringMirroredResourceInfoResponse2>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<PacketMirroringNetworkInfoResponse2>();
    this.priority = Output.createUnknown<int>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.selfLink = Output.createUnknown<String>();
  }
}
