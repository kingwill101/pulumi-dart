// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_set_resource_settings.dart';
import 'move_resource_dependency_override.dart';

/// Defines the move resource properties.
class MoveResourceProperties {
  /// Gets or sets the move resource dependencies overrides.
  final List<MoveResourceDependencyOverride>? dependsOnOverrides;
  /// Gets or sets the existing target ARM Id of the resource.
  final String? existingTargetId;
  /// Gets or sets the resource settings.
  final AvailabilitySetResourceSettings? resourceSettings;
  /// Gets or sets the Source ARM Id of the resource.
  final String sourceId;

  /// Creates a new [MoveResourceProperties].
  /// [dependsOnOverrides] Gets or sets the move resource dependencies overrides.
  /// [existingTargetId] Gets or sets the existing target ARM Id of the resource.
  /// [resourceSettings] Gets or sets the resource settings.
  /// [sourceId] Gets or sets the Source ARM Id of the resource.
  MoveResourceProperties({
    this.dependsOnOverrides,
    this.existingTargetId,
    this.resourceSettings,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOnOverrides': ?dependsOnOverrides == null ? null : pulumi.Input.encodeList<MoveResourceDependencyOverride, Map<String, dynamic>>(dependsOnOverrides!, (value) => value.toMap()),
      'existingTargetId': ?existingTargetId,
      'resourceSettings': ?resourceSettings == null ? null : resourceSettings!.toMap(),
      'sourceId': sourceId,
    };
  }

  factory MoveResourceProperties.fromMap(Map<String, dynamic> map) {
    return MoveResourceProperties(
      dependsOnOverrides: map['dependsOnOverrides'] == null ? null : pulumi.Input.decodeList<MoveResourceDependencyOverride>(map['dependsOnOverrides'], (value) => MoveResourceDependencyOverride.fromMap((value as Map).cast<String, dynamic>())),
      existingTargetId: map['existingTargetId'] == null ? null : map['existingTargetId'] as String,
      resourceSettings: map['resourceSettings'] == null ? null : AvailabilitySetResourceSettings.fromMap((map['resourceSettings'] as Map).cast<String, dynamic>()),
      sourceId: map['sourceId'] as String,
    );
  }
}

