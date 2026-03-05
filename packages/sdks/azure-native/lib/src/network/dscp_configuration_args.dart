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
      destinationIpRanges: (() { final guardedValue = map['destinationIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QosIpRange>(guardedValue, (value) => QosIpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      destinationPortRanges: (() { final guardedValue = map['destinationPortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QosPortRange>(guardedValue, (value) => QosPortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dscpConfigurationName: (() { final guardedValue = map['dscpConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      markings: (() { final guardedValue = map['markings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qosDefinitionCollection: (() { final guardedValue = map['qosDefinitionCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QosDefinition>(guardedValue, (value) => QosDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceIpRanges: (() { final guardedValue = map['sourceIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QosIpRange>(guardedValue, (value) => QosIpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourcePortRanges: (() { final guardedValue = map['sourcePortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QosPortRange>(guardedValue, (value) => QosPortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

