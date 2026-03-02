// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildpack_properties_response.dart';

/// Buildpack group properties of the Builder
class BuildpacksGroupPropertiesResponse {
  /// Buildpacks in the buildpack group
  final pulumi.Input<List<BuildpackPropertiesResponse>>? buildpacks;
  /// Buildpack group name
  final pulumi.Input<String>? name;

  /// Creates a new [BuildpacksGroupPropertiesResponse].
  /// [buildpacks] Buildpacks in the buildpack group
  /// [name] Buildpack group name
  BuildpacksGroupPropertiesResponse({
    this.buildpacks,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildpacks': ?pulumi.Input.mapOptionalInputValue<List<BuildpackPropertiesResponse>, List<Map<String, dynamic>>>(buildpacks, (value) => pulumi.Input.encodeList<BuildpackPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory BuildpacksGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BuildpacksGroupPropertiesResponse(
      buildpacks: map['buildpacks'] == null ? null : (pulumi.Input.decodeList<BuildpackPropertiesResponse>(map['buildpacks'], (value) => BuildpackPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

