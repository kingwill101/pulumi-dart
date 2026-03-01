// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forest_trust.dart';

/// Settings for Resource Forest
class ResourceForestSettings {
  /// Resource Forest
  final String? resourceForest;
  /// List of settings for Resource Forest
  final List<ForestTrust>? settings;

  /// Creates a new [ResourceForestSettings].
  /// [resourceForest] Resource Forest
  /// [settings] List of settings for Resource Forest
  ResourceForestSettings({
    this.resourceForest,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceForest': ?resourceForest,
      'settings': ?settings == null ? null : pulumi.Input.encodeList<ForestTrust, Map<String, dynamic>>(settings!, (value) => value.toMap()),
    };
  }

  factory ResourceForestSettings.fromMap(Map<String, dynamic> map) {
    return ResourceForestSettings(
      resourceForest: map['resourceForest'] == null ? null : map['resourceForest'] as String,
      settings: map['settings'] == null ? null : pulumi.Input.decodeList<ForestTrust>(map['settings'], (value) => ForestTrust.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

