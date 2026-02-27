import 'package:pulumi/pulumi.dart' as pulumi;
import '../packet_mirroring_collector_ilb/packet_mirroring_collector_ilb.dart';
import '../packet_mirroring_filter/packet_mirroring_filter.dart';
import '../packet_mirroring_mirrored_resources/packet_mirroring_mirrored_resources.dart';
import '../packet_mirroring_network/packet_mirroring_network.dart';
import 'packet_mirroring_args.dart';

/// Packet Mirroring mirrors traffic to and from particular VM instances.
/// You can use the collected traffic to help you detect security threats
/// and monitor application performance.
///
///
/// To get more information about PacketMirroring, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/packetMirrorings)
/// * How-to Guides
/// * [Using Packet Mirroring](https://cloud.google.com/vpc/docs/using-packet-mirroring#creating)
///
/// ## Example Usage
///
/// ### Compute Packet Mirroring Full
///
///
///
///
/// ## Import
///
/// PacketMirroring can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/packetMirrorings/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PacketMirroring can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/packetMirroring:PacketMirroring default projects/{{project}}/regions/{{region}}/packetMirrorings/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/packetMirroring:PacketMirroring default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/packetMirroring:PacketMirroring default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/packetMirroring:PacketMirroring default {{name}}
/// ```
class PacketMirroring extends pulumi.CustomResource {
  /// The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
  /// that will be used as collector for mirrored traffic. The
  /// specified forwarding rule must have is_mirroring_collector
  /// set to true.
  /// Structure is documented below.
  late final pulumi.Output<PacketMirroringCollectorIlb> collectorIlb;

  /// A human-readable description of the rule.
  late final pulumi.Output<String?> description;

  /// A filter for mirrored traffic.  If unset, all traffic is mirrored.
  /// Structure is documented below.
  late final pulumi.Output<PacketMirroringFilter?> filter;

  /// A means of specifying which resources to mirror.
  /// Structure is documented below.
  late final pulumi.Output<PacketMirroringMirroredResources> mirroredResources;

  /// The name of the packet mirroring rule
  late final pulumi.Output<String> name;

  /// Specifies the mirrored VPC network. Only packets in this network
  /// will be mirrored. All mirrored VMs should have a NIC in the given
  /// network. All mirrored subnetworks should belong to the given network.
  /// Structure is documented below.
  late final pulumi.Output<PacketMirroringNetwork> network;

  /// Since only one rule can be active at a time, priority is
  /// used to break ties in the case of two rules that apply to
  /// the same instances.
  late final pulumi.Output<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The Region in which the created address should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;

  PacketMirroring(
    String name, {
    PacketMirroringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/packetMirroring:PacketMirroring',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.collectorIlb =
        registerOutput<PacketMirroringCollectorIlb>('collectorIlb');
    this.description = registerOutput<String?>('description');
    this.filter = registerOutput<PacketMirroringFilter?>('filter');
    this.mirroredResources =
        registerOutput<PacketMirroringMirroredResources>('mirroredResources');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<PacketMirroringNetwork>('network');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
