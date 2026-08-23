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
  const BuildpacksGroupProperties({
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
      buildpacks: (() { final guardedValue = map['buildpacks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BuildpackProperties>(guardedValue, (value) => BuildpackProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
