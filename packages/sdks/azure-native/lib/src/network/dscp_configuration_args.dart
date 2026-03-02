// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_definition.dart';
import 'qos_ip_range.dart';
import 'qos_port_range.dart';

/// {@template pulumi_network_dscp_configuration_args_doc}
/// The set of arguments for DscpConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_dscp_configuration_args_doc}
class DscpConfigurationArgs {
  /// Destination IP ranges.
  final pulumi.Input<List<QosIpRange>>? destinationIpRanges;
  /// Destination port ranges.
  final pulumi.Input<List<QosPortRange>>? destinationPortRanges;
  /// The name of the resource.
  final pulumi.Input<String>? dscpConfigurationName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// List of markings to be used in the configuration.
  final pulumi.Input<List<int>>? markings;
  /// RNM supported protocol types.
  final pulumi.Input<String>? protocol;
  /// QoS object definitions
  final pulumi.Input<List<QosDefinition>>? qosDefinitionCollection;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Source IP ranges.
  final pulumi.Input<List<QosIpRange>>? sourceIpRanges;
  /// Sources port ranges.
  final pulumi.Input<List<QosPortRange>>? sourcePortRanges;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DscpConfigurationArgs].
  /// [destinationIpRanges] Destination IP ranges.
  /// [destinationPortRanges] Destination port ranges.
  /// [dscpConfigurationName] The name of the resource.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [markings] List of markings to be used in the configuration.
  /// [protocol] RNM supported protocol types.
  /// [qosDefinitionCollection] QoS object definitions
  /// [resourceGroupName] The name of the resource group.
  /// [sourceIpRanges] Source IP ranges.
  /// [sourcePortRanges] Sources port ranges.
  /// [tags] Resource tags.
  DscpConfigurationArgs({
    this.destinationIpRanges,
    this.destinationPortRanges,
    this.dscpConfigurationName,
    this.id,
    this.location,
    this.markings,
    this.protocol,
    this.qosDefinitionCollection,
    required this.resourceGroupName,
    this.sourceIpRanges,
    this.sourcePortRanges,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationIpRanges': ?pulumi.Input.mapOptionalInputValue<List<QosIpRange>, List<Map<String, dynamic>>>(destinationIpRanges, (value) => pulumi.Input.encodeList<QosIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationPortRanges': ?pulumi.Input.mapOptionalInputValue<List<QosPortRange>, List<Map<String, dynamic>>>(destinationPortRanges, (value) => pulumi.Input.encodeList<QosPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dscpConfigurationName': ?dscpConfigurationName,
      'id': ?id,
      'location': ?location,
      'markings': ?markings,
      'protocol': ?protocol,
      'qosDefinitionCollection': ?pulumi.Input.mapOptionalInputValue<List<QosDefinition>, List<Map<String, dynamic>>>(qosDefinitionCollection, (value) => pulumi.Input.encodeList<QosDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'sourceIpRanges': ?pulumi.Input.mapOptionalInputValue<List<QosIpRange>, List<Map<String, dynamic>>>(sourceIpRanges, (value) => pulumi.Input.encodeList<QosIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourcePortRanges': ?pulumi.Input.mapOptionalInputValue<List<QosPortRange>, List<Map<String, dynamic>>>(sourcePortRanges, (value) => pulumi.Input.encodeList<QosPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory DscpConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DscpConfigurationArgs(
      destinationIpRanges: map['destinationIpRanges'] == null ? null : (pulumi.Input.decodeList<QosIpRange>(map['destinationIpRanges']!, (value) => QosIpRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : (pulumi.Input.decodeList<QosPortRange>(map['destinationPortRanges']!, (value) => QosPortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dscpConfigurationName: map['dscpConfigurationName'] == null ? null : (map['dscpConfigurationName']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      markings: map['markings'] == null ? null : ((map['markings']! as List).cast<int>()).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      qosDefinitionCollection: map['qosDefinitionCollection'] == null ? null : (pulumi.Input.decodeList<QosDefinition>(map['qosDefinitionCollection']!, (value) => QosDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceIpRanges: map['sourceIpRanges'] == null ? null : (pulumi.Input.decodeList<QosIpRange>(map['sourceIpRanges']!, (value) => QosIpRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : (pulumi.Input.decodeList<QosPortRange>(map['sourcePortRanges']!, (value) => QosPortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

