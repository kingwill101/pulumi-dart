// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildpacks_group_properties.dart';
import 'stack_properties.dart';

/// KPack Builder properties payload
class BuilderProperties {
  /// Builder buildpack groups.
  final pulumi.Input<List<BuildpacksGroupProperties>>? buildpackGroups;
  /// Builder cluster stack property.
  final pulumi.Input<StackProperties>? stack;

  /// Creates a new [BuilderProperties].
  /// [buildpackGroups] Builder buildpack groups.
  /// [stack] Builder cluster stack property.
  BuilderProperties({
    this.buildpackGroups,
    this.stack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildpackGroups': ?pulumi.Input.mapOptionalInputValue<List<BuildpacksGroupProperties>, List<Map<String, dynamic>>>(buildpackGroups, (value) => pulumi.Input.encodeList<BuildpacksGroupProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stack': ?pulumi.Input.mapOptionalInputValue<StackProperties, Map<String, dynamic>>(stack, (value) => value.toMap()),
    };
  }

  factory BuilderProperties.fromMap(Map<String, dynamic> map) {
    return BuilderProperties(
      buildpackGroups: map['buildpackGroups'] == null ? null : (pulumi.Input.decodeList<BuildpacksGroupProperties>(map['buildpackGroups']!, (value) => BuildpacksGroupProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stack: map['stack'] == null ? null : (StackProperties.fromMap((map['stack']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

