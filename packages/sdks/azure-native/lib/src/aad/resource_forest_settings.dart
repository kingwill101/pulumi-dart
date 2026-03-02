// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forest_trust.dart';

/// Settings for Resource Forest
class ResourceForestSettings {
  /// Resource Forest
  final pulumi.Input<String>? resourceForest;
  /// List of settings for Resource Forest
  final pulumi.Input<List<ForestTrust>>? settings;

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
      'settings': ?pulumi.Input.mapOptionalInputValue<List<ForestTrust>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<ForestTrust, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceForestSettings.fromMap(Map<String, dynamic> map) {
    return ResourceForestSettings(
      resourceForest: map['resourceForest'] == null ? null : (map['resourceForest']! as String).input(),
      settings: map['settings'] == null ? null : (pulumi.Input.decodeList<ForestTrust>(map['settings']!, (value) => ForestTrust.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

