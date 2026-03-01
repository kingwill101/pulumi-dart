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
  final List<MoveResourceDependencyResponse> dependsOn;
  /// Gets or sets the move resource dependencies overrides.
  final List<MoveResourceDependencyOverrideResponse>? dependsOnOverrides;
  /// Defines the move resource errors.
  final MoveResourcePropertiesResponseErrors errors;
  /// Gets or sets the existing target ARM Id of the resource.
  final String? existingTargetId;
  /// Gets a value indicating whether the resolve action is required over the move collection.
  final bool isResolveRequired;
  /// Defines the move resource status.
  final MoveResourcePropertiesResponseMoveStatus moveStatus;
  /// Defines the provisioning states.
  final String provisioningState;
  /// Gets or sets the resource settings.
  final AvailabilitySetResourceSettingsResponse? resourceSettings;
  /// Gets or sets the Source ARM Id of the resource.
  final String sourceId;
  /// Gets or sets the source resource settings.
  final AvailabilitySetResourceSettingsResponse sourceResourceSettings;
  /// Gets or sets the Target ARM Id of the resource.
  final String targetId;

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
  MoveResourcePropertiesResponse({
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
      'dependsOn': pulumi.Input.encodeList<MoveResourceDependencyResponse, Map<String, dynamic>>(dependsOn, (value) => value.toMap()),
      'dependsOnOverrides': ?dependsOnOverrides == null ? null : pulumi.Input.encodeList<MoveResourceDependencyOverrideResponse, Map<String, dynamic>>(dependsOnOverrides!, (value) => value.toMap()),
      'errors': errors.toMap(),
      'existingTargetId': ?existingTargetId,
      'isResolveRequired': isResolveRequired,
      'moveStatus': moveStatus.toMap(),
      'provisioningState': provisioningState,
      'resourceSettings': ?resourceSettings == null ? null : resourceSettings!.toMap(),
      'sourceId': sourceId,
      'sourceResourceSettings': sourceResourceSettings.toMap(),
      'targetId': targetId,
    };
  }

  factory MoveResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MoveResourcePropertiesResponse(
      dependsOn: pulumi.Input.decodeList<MoveResourceDependencyResponse>(map['dependsOn'], (value) => MoveResourceDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      dependsOnOverrides: map['dependsOnOverrides'] == null ? null : pulumi.Input.decodeList<MoveResourceDependencyOverrideResponse>(map['dependsOnOverrides'], (value) => MoveResourceDependencyOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
      errors: MoveResourcePropertiesResponseErrors.fromMap((map['errors'] as Map).cast<String, dynamic>()),
      existingTargetId: map['existingTargetId'] == null ? null : map['existingTargetId'] as String,
      isResolveRequired: map['isResolveRequired'] as bool,
      moveStatus: MoveResourcePropertiesResponseMoveStatus.fromMap((map['moveStatus'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      resourceSettings: map['resourceSettings'] == null ? null : AvailabilitySetResourceSettingsResponse.fromMap((map['resourceSettings'] as Map).cast<String, dynamic>()),
      sourceId: map['sourceId'] as String,
      sourceResourceSettings: AvailabilitySetResourceSettingsResponse.fromMap((map['sourceResourceSettings'] as Map).cast<String, dynamic>()),
      targetId: map['targetId'] as String,
    );
  }
}

