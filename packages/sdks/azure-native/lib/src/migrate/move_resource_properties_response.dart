// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_set_resource_settings_response.dart';
import 'move_resource_dependency_override_response.dart';
import 'move_resource_dependency_response.dart';
import 'move_resource_properties_response_errors.dart';
import 'move_resource_properties_response_move_status.dart';

/// Defines the move resource properties.
class MoveResourcePropertiesResponse {
  /// Gets or sets the move resource dependencies.
  final pulumi.Input<List<MoveResourceDependencyResponse>> dependsOn;
  /// Gets or sets the move resource dependencies overrides.
  final pulumi.Input<List<MoveResourceDependencyOverrideResponse>>? dependsOnOverrides;
  /// Defines the move resource errors.
  final pulumi.Input<MoveResourcePropertiesResponseErrors> errors;
  /// Gets or sets the existing target ARM Id of the resource.
  final pulumi.Input<String>? existingTargetId;
  /// Gets a value indicating whether the resolve action is required over the move collection.
  final pulumi.Input<bool> isResolveRequired;
  /// Defines the move resource status.
  final pulumi.Input<MoveResourcePropertiesResponseMoveStatus> moveStatus;
  /// Defines the provisioning states.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the resource settings.
  final pulumi.Input<AvailabilitySetResourceSettingsResponse>? resourceSettings;
  /// Gets or sets the Source ARM Id of the resource.
  final pulumi.Input<String> sourceId;
  /// Gets or sets the source resource settings.
  final pulumi.Input<AvailabilitySetResourceSettingsResponse> sourceResourceSettings;
  /// Gets or sets the Target ARM Id of the resource.
  final pulumi.Input<String> targetId;

  /// Creates a new [MoveResourcePropertiesResponse].
  /// [dependsOn] Gets or sets the move resource dependencies.
  /// [dependsOnOverrides] Gets or sets the move resource dependencies overrides.
  /// [errors] Defines the move resource errors.
  /// [existingTargetId] Gets or sets the existing target ARM Id of the resource.
  /// [isResolveRequired] Gets a value indicating whether the resolve action is required over the move collection.
  /// [moveStatus] Defines the move resource status.
  /// [provisioningState] Defines the provisioning states.
  /// [resourceSettings] Gets or sets the resource settings.
  /// [sourceId] Gets or sets the Source ARM Id of the resource.
  /// [sourceResourceSettings] Gets or sets the source resource settings.
  /// [targetId] Gets or sets the Target ARM Id of the resource.
  const MoveResourcePropertiesResponse({
    required this.dependsOn,
    this.dependsOnOverrides,
    required this.errors,
    this.existingTargetId,
    required this.isResolveRequired,
    required this.moveStatus,
    required this.provisioningState,
    this.resourceSettings,
    required this.sourceId,
    required this.sourceResourceSettings,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': pulumi.Input.mapInputValue<List<MoveResourceDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<MoveResourceDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dependsOnOverrides': ?pulumi.Input.mapOptionalInputValue<List<MoveResourceDependencyOverrideResponse>, List<Map<String, dynamic>>>(dependsOnOverrides, (value) => pulumi.Input.encodeList<MoveResourceDependencyOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errors': pulumi.Input.mapInputValue<MoveResourcePropertiesResponseErrors, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'existingTargetId': ?existingTargetId,
      'isResolveRequired': isResolveRequired,
      'moveStatus': pulumi.Input.mapInputValue<MoveResourcePropertiesResponseMoveStatus, Map<String, dynamic>>(moveStatus, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'resourceSettings': ?pulumi.Input.mapOptionalInputValue<AvailabilitySetResourceSettingsResponse, Map<String, dynamic>>(resourceSettings, (value) => value.toMap()),
      'sourceId': sourceId,
      'sourceResourceSettings': pulumi.Input.mapInputValue<AvailabilitySetResourceSettingsResponse, Map<String, dynamic>>(sourceResourceSettings, (value) => value.toMap()),
      'targetId': targetId,
    };
  }

  factory MoveResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MoveResourcePropertiesResponse(
      dependsOn: pulumi.Input.fromValue(pulumi.Input.decodeList<MoveResourceDependencyResponse>(map['dependsOn']!, (value) => MoveResourceDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      dependsOnOverrides: (() { final guardedValue = map['dependsOnOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MoveResourceDependencyOverrideResponse>(guardedValue, (value) => MoveResourceDependencyOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      errors: pulumi.Input.fromValue(MoveResourcePropertiesResponseErrors.fromMap((map['errors']! as Map).cast<String, dynamic>())),
      existingTargetId: (() { final guardedValue = map['existingTargetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isResolveRequired: pulumi.Input.fromValue(map['isResolveRequired'] as bool),
      moveStatus: pulumi.Input.fromValue(MoveResourcePropertiesResponseMoveStatus.fromMap((map['moveStatus']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceSettings: (() { final guardedValue = map['resourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvailabilitySetResourceSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
      sourceResourceSettings: pulumi.Input.fromValue(AvailabilitySetResourceSettingsResponse.fromMap((map['sourceResourceSettings']! as Map).cast<String, dynamic>())),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}

