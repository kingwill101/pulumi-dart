// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildpacks_group_properties.dart';
import 'stack_properties.dart';

/// KPack Builder properties payload
class BuilderProperties {
  /// Builder buildpack groups.
  final List<BuildpacksGroupProperties>? buildpackGroups;
  /// Builder cluster stack property.
  final StackProperties? stack;

  /// Creates a new [BuilderProperties].
  /// [buildpackGroups] Builder buildpack groups.
  /// [stack] Builder cluster stack property.
  BuilderProperties({
    this.buildpackGroups,
    this.stack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildpackGroups': ?buildpackGroups == null ? null : pulumi.Input.encodeList<BuildpacksGroupProperties, Map<String, dynamic>>(buildpackGroups!, (value) => value.toMap()),
      'stack': ?stack == null ? null : stack!.toMap(),
    };
  }

  factory BuilderProperties.fromMap(Map<String, dynamic> map) {
    return BuilderProperties(
      buildpackGroups: map['buildpackGroups'] == null ? null : pulumi.Input.decodeList<BuildpacksGroupProperties>(map['buildpackGroups'], (value) => BuildpacksGroupProperties.fromMap((value as Map).cast<String, dynamic>())),
      stack: map['stack'] == null ? null : StackProperties.fromMap((map['stack'] as Map).cast<String, dynamic>()),
    );
  }
}

