// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_private_dns_zone_config_record_set.dart';

class EndpointPrivateDnsZoneConfig {
  /// The ID of the Private DNS Zone Config.
  final String? id;
  /// Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  final String? name;
  /// The ID of the Private DNS Zone that the config belongs to.
  final String? privateDnsZoneId;
  /// A `record_sets` block as defined below.
  final List<EndpointPrivateDnsZoneConfigRecordSet>? recordSets;

  /// Creates a new [EndpointPrivateDnsZoneConfig].
  /// [id] The ID of the Private DNS Zone Config.
  /// [name] Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  /// [privateDnsZoneId] The ID of the Private DNS Zone that the config belongs to.
  /// [recordSets] A `record_sets` block as defined below.
  EndpointPrivateDnsZoneConfig({
    this.id,
    this.name,
    this.privateDnsZoneId,
    this.recordSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'privateDnsZoneId': ?privateDnsZoneId,
      'recordSets': ?recordSets == null ? null : pulumi.Input.encodeList<EndpointPrivateDnsZoneConfigRecordSet, Map<String, dynamic>>(recordSets!, (value) => value.toMap()),
    };
  }

  factory EndpointPrivateDnsZoneConfig.fromMap(Map<String, dynamic> map) {
    return EndpointPrivateDnsZoneConfig(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateDnsZoneId: map['privateDnsZoneId'] == null ? null : map['privateDnsZoneId'] as String,
      recordSets: map['recordSets'] == null ? null : pulumi.Input.decodeList<EndpointPrivateDnsZoneConfigRecordSet>(map['recordSets'], (value) => EndpointPrivateDnsZoneConfigRecordSet.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

