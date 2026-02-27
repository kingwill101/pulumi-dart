// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_zone_discovery_spec.dart';
import 'google_cloud_dataplex_v1_zone_resource_spec.dart';
import 'zone_type.dart';

/// The set of arguments for Zone.
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
      map['discoverySpec'] = pulumi.Input.mapOptionalInputValue<
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
    map['resourceSpec'] = pulumi.Input.mapInputValue<
        GoogleCloudDataplexV1ZoneResourceSpec,
        Map<String, dynamic>>(resourceSpec, (value) => value.toMap());
    map['type'] = pulumi.Input.mapInputValue<ZoneType, String>(
        type, (value) => value.value);
    map['zoneId'] = zoneId;
    return map;
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      discoverySpec:
          pulumi.Input.asOptionalInput<GoogleCloudDataplexV1ZoneDiscoverySpec>(
              map['discoverySpec']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      lakeId: pulumi.Input.asInput<String>(map['lakeId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceSpec: pulumi.Input.asInput<GoogleCloudDataplexV1ZoneResourceSpec>(
          map['resourceSpec']),
      type: pulumi.Input.asInput<ZoneType>(map['type']),
      zoneId: pulumi.Input.asInput<String>(map['zoneId']),
    );
  }
}
