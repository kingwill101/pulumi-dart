// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildpack_properties.dart';

/// Buildpack group properties of the Builder
class BuildpacksGroupProperties {
  /// Buildpacks in the buildpack group
  final pulumi.Input<List<BuildpackProperties>>? buildpacks;
  /// Buildpack group name
  final pulumi.Input<String>? name;

  /// Creates a new [BuildpacksGroupProperties].
  /// [buildpacks] Buildpacks in the buildpack group
  /// [name] Buildpack group name
  BuildpacksGroupProperties({
    this.buildpacks,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildpacks': ?pulumi.Input.mapOptionalInputValue<List<BuildpackProperties>, List<Map<String, dynamic>>>(buildpacks, (value) => pulumi.Input.encodeList<BuildpackProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory BuildpacksGroupProperties.fromMap(Map<String, dynamic> map) {
    return BuildpacksGroupProperties(
      buildpacks: map['buildpacks'] == null ? null : (pulumi.Input.decodeList<BuildpackProperties>(map['buildpacks'], (value) => BuildpackProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

