// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_zone_discovery_spec.dart';
import 'google_cloud_dataplex_v1_zone_resource_spec.dart';
import 'zone_type.dart';

/// {@template pulumi_dataplex_v1_zone_args_doc}
/// The set of arguments for Zone.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_zone_args_doc}
class ZoneArgs {
  /// Optional. Description of the zone.
  final pulumi.Input<String>? description;

  /// Optional. Specification of the discovery feature applied to data in this zone.
  final pulumi.Input<GoogleCloudDataplexV1ZoneDiscoverySpec>? discoverySpec;

  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;

  /// Optional. User defined labels for the zone.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Specification of the resources that are referenced by the assets within this zone.
  final pulumi.Input<GoogleCloudDataplexV1ZoneResourceSpec> resourceSpec;

  /// Immutable. The type of the zone.
  final pulumi.Input<ZoneType> type;

  /// Required. Zone identifier. This ID will be used to generate names such as database and dataset names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique across all lakes from all locations in a project. * Must not be one of the reserved IDs (i.e. "default", "global-temp")
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneArgs].
  /// [description] Optional. Description of the zone.
  /// [discoverySpec] Optional. Specification of the discovery feature applied to data in this zone.
  /// [displayName] Optional. User friendly display name.
  /// [labels] Optional. User defined labels for the zone.
  /// [lakeId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [resourceSpec] Specification of the resources that are referenced by the assets within this zone.
  /// [type] Immutable. The type of the zone.
  /// [zoneId] Required. Zone identifier. This ID will be used to generate names such as database and dataset names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique across all lakes from all locations in a project. * Must not be one of the reserved IDs (i.e. "default", "global-temp")
  ZoneArgs({
    String? description,
    GoogleCloudDataplexV1ZoneDiscoverySpec? discoverySpec,
    String? displayName,
    Map<String, String>? labels,
    required String lakeId,
    String? location,
    String? project,
    required GoogleCloudDataplexV1ZoneResourceSpec resourceSpec,
    required ZoneType type,
    required String zoneId,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       discoverySpec =
           pulumi.Input.asOptionalInput<GoogleCloudDataplexV1ZoneDiscoverySpec>(
             discoverySpec,
           ),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       lakeId = pulumi.Input.asInput<String>(lakeId),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       resourceSpec = pulumi
           .Input.asInput<GoogleCloudDataplexV1ZoneResourceSpec>(resourceSpec),
       type = pulumi.Input.asInput<ZoneType>(type),
       zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'discoverySpec':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDataplexV1ZoneDiscoverySpec,
            Map<String, dynamic>
          >(discoverySpec, (value) => value.toMap()),
      'displayName': ?displayName,
      'labels': ?labels,
      'lakeId': lakeId,
      'location': ?location,
      'project': ?project,
      'resourceSpec':
          pulumi.Input.mapInputValue<
            GoogleCloudDataplexV1ZoneResourceSpec,
            Map<String, dynamic>
          >(resourceSpec, (value) => value.toMap()),
      'type': pulumi.Input.mapInputValue<ZoneType, String>(
        type,
        (value) => value.value,
      ),
      'zoneId': zoneId,
    };
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      discoverySpec: map['discoverySpec'] == null
          ? null
          : GoogleCloudDataplexV1ZoneDiscoverySpec.fromMap(
              (map['discoverySpec'] as Map).cast<String, dynamic>(),
            ),
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      lakeId: map['lakeId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      resourceSpec: GoogleCloudDataplexV1ZoneResourceSpec.fromMap(
        (map['resourceSpec'] as Map).cast<String, dynamic>(),
      ),
      type: ZoneType.fromValue(map['type'] as String),
      zoneId: map['zoneId'] as String,
    );
  }
}
