// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../packet_mirroring_collector_ilb/packet_mirroring_collector_ilb.dart';
import '../packet_mirroring_filter/packet_mirroring_filter.dart';
import '../packet_mirroring_mirrored_resources/packet_mirroring_mirrored_resources.dart';
import '../packet_mirroring_network/packet_mirroring_network.dart';

/// The set of arguments for PacketMirroring.
class PacketMirroringArgs {
  /// The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
  /// that will be used as collector for mirrored traffic. The
  /// specified forwarding rule must have<span pulumi-lang-nodejs=" isMirroringCollector
  /// " pulumi-lang-dotnet=" IsMirroringCollector
  /// " pulumi-lang-go=" isMirroringCollector
  /// " pulumi-lang-python=" is_mirroring_collector
  /// " pulumi-lang-yaml=" isMirroringCollector
  /// " pulumi-lang-java=" isMirroringCollector
  /// "> is_mirroring_collector
  /// </span>set to true.
  /// Structure is documented below.
  final Input<PacketMirroringCollectorIlb> collectorIlb;

  /// A human-readable description of the rule.
  final Input<String>? description;

  /// A filter for mirrored traffic.  If unset, all traffic is mirrored.
  /// Structure is documented below.
  final Input<PacketMirroringFilter>? filter;

  /// A means of specifying which resources to mirror.
  /// Structure is documented below.
  final Input<PacketMirroringMirroredResources> mirroredResources;

  /// The name of the packet mirroring rule
  final Input<String>? name;

  /// Specifies the mirrored VPC network. Only packets in this network
  /// will be mirrored. All mirrored VMs should have a NIC in the given
  /// network. All mirrored subnetworks should belong to the given network.
  /// Structure is documented below.
  final Input<PacketMirroringNetwork> network;

  /// Since only one rule can be active at a time, priority is
  /// used to break ties in the case of two rules that apply to
  /// the same instances.
  final Input<int>? priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The Region in which the created address should reside.
  /// If it is not provided, the provider region is used.
  final Input<String>? region;

  PacketMirroringArgs({
    required this.collectorIlb,
    this.description,
    this.filter,
    required this.mirroredResources,
    this.name,
    required this.network,
    this.priority,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectorIlb'] =
        Input.mapInputValue<PacketMirroringCollectorIlb, Map<String, dynamic>>(
            collectorIlb, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = Input.mapOptionalInputValue<PacketMirroringFilter,
          Map<String, dynamic>>(filterValue, (value) => value.toMap());
    }
    map['mirroredResources'] = Input.mapInputValue<
        PacketMirroringMirroredResources,
        Map<String, dynamic>>(mirroredResources, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] =
        Input.mapInputValue<PacketMirroringNetwork, Map<String, dynamic>>(
            network, (value) => value.toMap());
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PacketMirroringArgs.fromMap(Map<String, dynamic> map) {
    return PacketMirroringArgs(
      collectorIlb:
          Input.asInput<PacketMirroringCollectorIlb>(map['collectorIlb']),
      description: Input.asOptionalInput<String>(map['description']),
      filter: Input.asOptionalInput<PacketMirroringFilter>(map['filter']),
      mirroredResources: Input.asInput<PacketMirroringMirroredResources>(
          map['mirroredResources']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asInput<PacketMirroringNetwork>(map['network']),
      priority: Input.asOptionalInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
