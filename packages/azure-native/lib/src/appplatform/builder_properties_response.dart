// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildpacks_group_properties_response.dart';
import 'stack_properties_response.dart';

/// KPack Builder properties payload
class BuilderPropertiesResponse {
  /// Builder buildpack groups.
  final List<BuildpacksGroupPropertiesResponse>? buildpackGroups;
  /// Builder provision status.
  final String provisioningState;
  /// Builder cluster stack property.
  final StackPropertiesResponse? stack;

  /// Creates a new [BuilderPropertiesResponse].
  /// [buildpackGroups] Builder buildpack groups.
  /// [provisioningState] Builder provision status.
  /// [stack] Builder cluster stack property.
  BuilderPropertiesResponse({
    this.buildpackGroups,
    required this.provisioningState,
    this.stack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildpackGroups': ?buildpackGroups == null ? null : pulumi.Input.encodeList<BuildpacksGroupPropertiesResponse, Map<String, dynamic>>(buildpackGroups!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'stack': ?stack == null ? null : stack!.toMap(),
    };
  }

  factory BuilderPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BuilderPropertiesResponse(
      buildpackGroups: map['buildpackGroups'] == null ? null : pulumi.Input.decodeList<BuildpacksGroupPropertiesResponse>(map['buildpackGroups'], (value) => BuildpacksGroupPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      stack: map['stack'] == null ? null : StackPropertiesResponse.fromMap((map['stack'] as Map).cast<String, dynamic>()),
    );
  }
}

