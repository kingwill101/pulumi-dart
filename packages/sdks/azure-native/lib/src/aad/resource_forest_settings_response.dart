// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forest_trust_response.dart';

/// Settings for Resource Forest
class ResourceForestSettingsResponse {
  /// Resource Forest
  final String? resourceForest;
  /// List of settings for Resource Forest
  final List<ForestTrustResponse>? settings;

  /// Creates a new [ResourceForestSettingsResponse].
  /// [resourceForest] Resource Forest
  /// [settings] List of settings for Resource Forest
  ResourceForestSettingsResponse({
    this.resourceForest,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceForest': ?resourceForest,
      'settings': ?settings == null ? null : pulumi.Input.encodeList<ForestTrustResponse, Map<String, dynamic>>(settings!, (value) => value.toMap()),
    };
  }

  factory ResourceForestSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceForestSettingsResponse(
      resourceForest: map['resourceForest'] == null ? null : map['resourceForest'] as String,
      settings: map['settings'] == null ? null : pulumi.Input.decodeList<ForestTrustResponse>(map['settings'], (value) => ForestTrustResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

