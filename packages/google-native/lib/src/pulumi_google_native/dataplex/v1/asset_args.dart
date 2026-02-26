// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dataplex_v1_asset_discovery_spec.dart';
import 'google_cloud_dataplex_v1_asset_resource_spec.dart';

/// The set of arguments for Asset.
class AssetArgs {
  /// Required. Asset identifier. This ID will be used to generate names such as table names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the zone.
  final Input<String> assetId;

  /// Optional. Description of the asset.
  final Input<String>? description;

  /// Optional. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  final Input<GoogleCloudDataplexV1AssetDiscoverySpec>? discoverySpec;

  /// Optional. User friendly display name.
  final Input<String>? displayName;

  /// Optional. User defined labels for the asset.
  final Input<Map<String, String>>? labels;
  final Input<String> lakeId;
  final Input<String>? location;
  final Input<String>? project;

  /// Specification of the resource that is referenced by this asset.
  final Input<GoogleCloudDataplexV1AssetResourceSpec> resourceSpec;
  final Input<String>? zone;

  AssetArgs({
    required this.assetId,
    this.description,
    this.discoverySpec,
    this.displayName,
    this.labels,
    required this.lakeId,
    this.location,
    this.project,
    required this.resourceSpec,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assetId'] = assetId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final discoverySpecValue = discoverySpec;
    if (discoverySpecValue != null) {
      map['discoverySpec'] = Input.mapOptionalInputValue<
          GoogleCloudDataplexV1AssetDiscoverySpec,
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
        GoogleCloudDataplexV1AssetResourceSpec,
        Map<String, dynamic>>(resourceSpec, (value) => value.toMap());
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory AssetArgs.fromMap(Map<String, dynamic> map) {
    return AssetArgs(
      assetId: Input.asInput<String>(map['assetId']),
      description: Input.asOptionalInput<String>(map['description']),
      discoverySpec:
          Input.asOptionalInput<GoogleCloudDataplexV1AssetDiscoverySpec>(
              map['discoverySpec']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      resourceSpec: Input.asInput<GoogleCloudDataplexV1AssetResourceSpec>(
          map['resourceSpec']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
