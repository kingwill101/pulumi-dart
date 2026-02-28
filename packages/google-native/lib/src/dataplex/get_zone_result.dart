// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_asset_status_response.dart';
import 'google_cloud_dataplex_v1_zone_discovery_spec_response.dart';
import 'google_cloud_dataplex_v1_zone_resource_spec_response.dart';

/// Result data returned by getZone.
class GetZoneResult {
  /// Aggregated status of the underlying assets of the zone.
  final GoogleCloudDataplexV1AssetStatusResponse assetStatus;
  /// The time when the zone was created.
  final String createTime;
  /// Optional. Description of the zone.
  final String description;
  /// Optional. Specification of the discovery feature applied to data in this zone.
  final GoogleCloudDataplexV1ZoneDiscoverySpecResponse discoverySpec;
  /// Optional. User friendly display name.
  final String displayName;
  /// Optional. User defined labels for the zone.
  final Map<String, String> labels;
  /// The relative resource name of the zone, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
  final String name;
  /// Specification of the resources that are referenced by the assets within this zone.
  final GoogleCloudDataplexV1ZoneResourceSpecResponse resourceSpec;
  /// Current state of the zone.
  final String state;
  /// Immutable. The type of the zone.
  final String type;
  /// System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.
  final String uid;
  /// The time when the zone was last updated.
  final String updateTime;

  /// Creates a new [GetZoneResult].
  /// [assetStatus] Aggregated status of the underlying assets of the zone.
  /// [createTime] The time when the zone was created.
  /// [description] Optional. Description of the zone.
  /// [discoverySpec] Optional. Specification of the discovery feature applied to data in this zone.
  /// [displayName] Optional. User friendly display name.
  /// [labels] Optional. User defined labels for the zone.
  /// [name] The relative resource name of the zone, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
  /// [resourceSpec] Specification of the resources that are referenced by the assets within this zone.
  /// [state] Current state of the zone.
  /// [type] Immutable. The type of the zone.
  /// [uid] System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.
  /// [updateTime] The time when the zone was last updated.
  GetZoneResult({
    required this.assetStatus,
    required this.createTime,
    required this.description,
    required this.discoverySpec,
    required this.displayName,
    required this.labels,
    required this.name,
    required this.resourceSpec,
    required this.state,
    required this.type,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetStatus': assetStatus.toMap(),
      'createTime': createTime,
      'description': description,
      'discoverySpec': discoverySpec.toMap(),
      'displayName': displayName,
      'labels': labels,
      'name': name,
      'resourceSpec': resourceSpec.toMap(),
      'state': state,
      'type': type,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetZoneResult.fromMap(Map<String, dynamic> map) {
    return GetZoneResult(
      assetStatus: GoogleCloudDataplexV1AssetStatusResponse.fromMap((map['assetStatus'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      discoverySpec: GoogleCloudDataplexV1ZoneDiscoverySpecResponse.fromMap((map['discoverySpec'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      resourceSpec: GoogleCloudDataplexV1ZoneResourceSpecResponse.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      type: map['type'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

