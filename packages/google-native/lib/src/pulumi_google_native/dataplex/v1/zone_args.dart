// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dataplex_v1_zone_discovery_spec.dart';
import 'google_cloud_dataplex_v1_zone_resource_spec.dart';
import 'zone_type.dart';

/// The set of arguments for Zone.
class ZoneArgs {
  /// Optional. Description of the zone.
  final Input<String>? description;

  /// Optional. Specification of the discovery feature applied to data in this zone.
  final Input<GoogleCloudDataplexV1ZoneDiscoverySpec>? discoverySpec;

  /// Optional. User friendly display name.
  final Input<String>? displayName;

  /// Optional. User defined labels for the zone.
  final Input<Map<String, String>>? labels;
  final Input<String> lakeId;
  final Input<String>? location;
  final Input<String>? project;

  /// Specification of the resources that are referenced by the assets within this zone.
  final Input<GoogleCloudDataplexV1ZoneResourceSpec> resourceSpec;

  /// Immutable. The type of the zone.
  final Input<ZoneType> type;

  /// Required. Zone identifier. This ID will be used to generate names such as database and dataset names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique across all lakes from all locations in a project. * Must not be one of the reserved IDs (i.e. "default", "global-temp")
  final Input<String> zoneId;

  ZoneArgs({
    this.description,
    this.discoverySpec,
    this.displayName,
    this.labels,
    required this.lakeId,
    this.location,
    this.project,
    required this.resourceSpec,
    required this.type,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final discoverySpecValue = discoverySpec;
    if (discoverySpecValue != null) {
      map['discoverySpec'] = Input.mapOptionalInputValue<
          GoogleCloudDataplexV1ZoneDiscoverySpec,
          Map<String, dynamic>>(discoverySpecValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['lakeId'] = lakeId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resourceSpec'] = Input.mapInputValue<
        GoogleCloudDataplexV1ZoneResourceSpec,
        Map<String, dynamic>>(resourceSpec, (value) => value.toMap());
    map['type'] =
        Input.mapInputValue<ZoneType, String>(type, (value) => value.value);
    map['zoneId'] = zoneId;
    return map;
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      description: Input.asOptionalInput<String>(map['description']),
      discoverySpec:
          Input.asOptionalInput<GoogleCloudDataplexV1ZoneDiscoverySpec>(
              map['discoverySpec']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      resourceSpec: Input.asInput<GoogleCloudDataplexV1ZoneResourceSpec>(
          map['resourceSpec']),
      type: Input.asInput<ZoneType>(map['type']),
      zoneId: Input.asInput<String>(map['zoneId']),
    );
  }
}
