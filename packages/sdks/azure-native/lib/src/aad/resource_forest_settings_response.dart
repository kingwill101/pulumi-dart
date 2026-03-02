// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forest_trust_response.dart';

/// Settings for Resource Forest
class ResourceForestSettingsResponse {
  /// Resource Forest
  final pulumi.Input<String>? resourceForest;
  /// List of settings for Resource Forest
  final pulumi.Input<List<ForestTrustResponse>>? settings;

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
      'settings': ?pulumi.Input.mapOptionalInputValue<List<ForestTrustResponse>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<ForestTrustResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceForestSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceForestSettingsResponse(
      resourceForest: map['resourceForest'] == null ? null : (map['resourceForest']! as String).input(),
      settings: map['settings'] == null ? null : (pulumi.Input.decodeList<ForestTrustResponse>(map['settings']!, (value) => ForestTrustResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

