// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_asset_resource_spec_read_access_mode.dart';
import 'google_cloud_dataplex_v1_asset_resource_spec_type.dart';

/// Identifies the cloud resource that is referenced by this asset.
class GoogleCloudDataplexV1AssetResourceSpec {
  /// Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: projects/{project_number}/buckets/{bucket_id} projects/{project_number}/datasets/{dataset_id}
  final String? name;

  /// Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets.
  final GoogleCloudDataplexV1AssetResourceSpecReadAccessMode? readAccessMode;

  /// Immutable. Type of resource.
  final GoogleCloudDataplexV1AssetResourceSpecType type;

  /// Creates a new [GoogleCloudDataplexV1AssetResourceSpec].
  /// [name] Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: projects/{project_number}/buckets/{bucket_id} projects/{project_number}/datasets/{dataset_id}
  /// [readAccessMode] Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets.
  /// [type] Immutable. Type of resource.
  GoogleCloudDataplexV1AssetResourceSpec({
    this.name,
    this.readAccessMode,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final readAccessModeValue = readAccessMode;
    if (readAccessModeValue != null) {
      map['readAccessMode'] = readAccessModeValue.value;
    }
    map['type'] = type.value;
    return map;
  }

  factory GoogleCloudDataplexV1AssetResourceSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetResourceSpec(
      name: map['name'] == null ? null : map['name'] as String,
      readAccessMode: map['readAccessMode'] == null
          ? null
          : GoogleCloudDataplexV1AssetResourceSpecReadAccessMode.fromValue(
              map['readAccessMode'] as String),
      type: GoogleCloudDataplexV1AssetResourceSpecType.fromValue(
          map['type'] as String),
    );
  }
}
