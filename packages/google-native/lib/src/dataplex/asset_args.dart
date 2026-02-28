// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_asset_discovery_spec.dart';
import 'google_cloud_dataplex_v1_asset_resource_spec.dart';

/// {@template pulumi_dataplex_v1_asset_args_doc}
/// The set of arguments for Asset.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_asset_args_doc}
class AssetArgs {
  /// Required. Asset identifier. This ID will be used to generate names such as table names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the zone.
  final pulumi.Input<String> assetId;

  /// Optional. Description of the asset.
  final pulumi.Input<String>? description;

  /// Optional. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  final pulumi.Input<GoogleCloudDataplexV1AssetDiscoverySpec>? discoverySpec;

  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;

  /// Optional. User defined labels for the asset.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Specification of the resource that is referenced by this asset.
  final pulumi.Input<GoogleCloudDataplexV1AssetResourceSpec> resourceSpec;
  final pulumi.Input<String>? zone;

  /// Creates a new [AssetArgs].
  /// [assetId] Required. Asset identifier. This ID will be used to generate names such as table names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the zone.
  /// [description] Optional. Description of the asset.
  /// [discoverySpec] Optional. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  /// [displayName] Optional. User friendly display name.
  /// [labels] Optional. User defined labels for the asset.
  /// [lakeId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [resourceSpec] Specification of the resource that is referenced by this asset.
  /// [zone] Optional.
  AssetArgs({
    required String assetId,
    String? description,
    GoogleCloudDataplexV1AssetDiscoverySpec? discoverySpec,
    String? displayName,
    Map<String, String>? labels,
    required String lakeId,
    String? location,
    String? project,
    required GoogleCloudDataplexV1AssetResourceSpec resourceSpec,
    String? zone,
  })  : assetId = pulumi.Input.asInput<String>(assetId),
        description = pulumi.Input.asOptionalInput<String>(description),
        discoverySpec = pulumi.Input.asOptionalInput<
            GoogleCloudDataplexV1AssetDiscoverySpec>(discoverySpec),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        lakeId = pulumi.Input.asInput<String>(lakeId),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        resourceSpec =
            pulumi.Input.asInput<GoogleCloudDataplexV1AssetResourceSpec>(
                resourceSpec),
        zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assetId'] = assetId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final discoverySpecValue = discoverySpec;
    if (discoverySpecValue != null) {
      map['discoverySpec'] = pulumi.Input.mapOptionalInputValue<
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
    map['resourceSpec'] = pulumi.Input.mapInputValue<
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
      assetId: map['assetId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      discoverySpec: map['discoverySpec'] == null
          ? null
          : GoogleCloudDataplexV1AssetDiscoverySpec.fromMap(
              (map['discoverySpec'] as Map).cast<String, dynamic>()),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      lakeId: map['lakeId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      resourceSpec: GoogleCloudDataplexV1AssetResourceSpec.fromMap(
          (map['resourceSpec'] as Map).cast<String, dynamic>()),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
