// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'move_resource_dependency_override.dart';

/// Defines the move resource properties.
class MoveResourceProperties {
  /// Gets or sets the move resource dependencies overrides.
  final pulumi.Input<List<MoveResourceDependencyOverride>?>? dependsOnOverrides;
  /// Gets or sets the existing target ARM Id of the resource.
  final pulumi.Input<String?>? existingTargetId;
  /// Gets or sets the resource settings.
  final pulumi.Input<dynamic>? resourceSettings;
  /// Gets or sets the Source ARM Id of the resource.
  final pulumi.Input<String> sourceId;

  /// Creates a new [MoveResourceProperties].
  /// [dependsOnOverrides] Gets or sets the move resource dependencies overrides.
  /// [existingTargetId] Gets or sets the existing target ARM Id of the resource.
  /// [resourceSettings] Gets or sets the resource settings.
  /// [sourceId] Gets or sets the Source ARM Id of the resource.
  const MoveResourceProperties({
    this.dependsOnOverrides,
    this.existingTargetId,
    this.resourceSettings,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOnOverrides': ?pulumi.Input.mapOptionalInputValue<List<MoveResourceDependencyOverride>, List<Map<String, dynamic>>>(dependsOnOverrides, (value) => pulumi.Input.encodeList<MoveResourceDependencyOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'existingTargetId': ?existingTargetId,
      'resourceSettings': ?resourceSettings,
      'sourceId': sourceId,
    };
  }

  factory MoveResourceProperties.fromMap(Map<String, dynamic> map) {
    return MoveResourceProperties(
      dependsOnOverrides: (() { final guardedValue = map['dependsOnOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MoveResourceDependencyOverride>(guardedValue, (value) => MoveResourceDependencyOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      existingTargetId: (() { final guardedValue = map['existingTargetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceSettings: (() { final guardedValue = map['resourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
    );
  }
}
