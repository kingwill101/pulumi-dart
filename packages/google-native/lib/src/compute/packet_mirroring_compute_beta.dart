import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_compute_beta_args.dart';
import 'packet_mirroring_filter_response_compute_beta.dart';
import 'packet_mirroring_forwarding_rule_info_response_compute_beta.dart';
import 'packet_mirroring_mirrored_resource_info_response_compute_beta.dart';
import 'packet_mirroring_network_info_response_compute_beta.dart';

/// Creates a PacketMirroring resource in the specified project and region using the data included in the request.
class PacketMirroringComputeBeta extends pulumi.CustomResource {
  /// The Forwarding Rule resource of type loadBalancingScheme=INTERNAL that will be used as collector for mirrored traffic. The specified forwarding rule must have isMirroringCollector set to true.
  late final pulumi.Output<PacketMirroringForwardingRuleInfoResponseComputeBeta> collectorIlb;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;
  /// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
  late final pulumi.Output<String> enable;
  /// Filter for mirrored traffic. If unspecified, all traffic is mirrored.
  late final pulumi.Output<PacketMirroringFilterResponseComputeBeta> filter;
  /// Type of the resource. Always compute#packetMirroring for packet mirrorings.
  late final pulumi.Output<String> kind;
  /// PacketMirroring mirroredResourceInfos. MirroredResourceInfo specifies a set of mirrored VM instances, subnetworks and/or tags for which traffic from/to all VM instances will be mirrored.
  late final pulumi.Output<PacketMirroringMirroredResourceInfoResponseComputeBeta> mirroredResources;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Specifies the mirrored VPC network. Only packets in this network will be mirrored. All mirrored VMs should have a NIC in the given network. All mirrored subnetworks should belong to the given network.
  late final pulumi.Output<PacketMirroringNetworkInfoResponseComputeBeta> network;
  /// The priority of applying this configuration. Priority is used to break ties in cases where there is more than one matching rule. In the case of two rules that apply for a given Instance, the one with the lowest-numbered priority value wins. Default value is 1000. Valid range is 0 through 65535.
  late final pulumi.Output<int> priority;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [PacketMirroringComputeBeta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PacketMirroringComputeBeta]. {@macro pulumi_compute_beta_packet_mirroring_compute_beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PacketMirroringComputeBeta(
    String name, {
    PacketMirroringComputeBetaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:PacketMirroring',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.collectorIlb = registerOutput<PacketMirroringForwardingRuleInfoResponseComputeBeta>('collectorIlb');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.enable = registerOutput<String>('enable');
    this.filter = registerOutput<PacketMirroringFilterResponseComputeBeta>('filter');
    this.kind = registerOutput<String>('kind');
    this.mirroredResources = registerOutput<PacketMirroringMirroredResourceInfoResponseComputeBeta>('mirroredResources');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<PacketMirroringNetworkInfoResponseComputeBeta>('network');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
