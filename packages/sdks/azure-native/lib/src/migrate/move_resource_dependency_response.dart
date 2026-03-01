// ignore_for_file: unused_element, unnecessary_cast

import 'automatic_resolution_properties_response.dart';
import 'manual_resolution_properties_response.dart';

/// Defines the dependency of the move resource.
class MoveResourceDependencyResponse {
  /// Defines the properties for automatic resolution.
  final AutomaticResolutionPropertiesResponse? automaticResolution;
  /// Defines the dependency type.
  final String? dependencyType;
  /// Gets the source ARM ID of the dependent resource.
  final String? id;
  /// Gets or sets a value indicating whether the dependency is optional.
  final String? isOptional;
  /// Defines the properties for manual resolution.
  final ManualResolutionPropertiesResponse? manualResolution;
  /// Gets the dependency resolution status.
  final String? resolutionStatus;
  /// Defines the resolution type.
  final String? resolutionType;

  /// Creates a new [MoveResourceDependencyResponse].
  /// [automaticResolution] Defines the properties for automatic resolution.
  /// [dependencyType] Defines the dependency type.
  /// [id] Gets the source ARM ID of the dependent resource.
  /// [isOptional] Gets or sets a value indicating whether the dependency is optional.
  /// [manualResolution] Defines the properties for manual resolution.
  /// [resolutionStatus] Gets the dependency resolution status.
  /// [resolutionType] Defines the resolution type.
  MoveResourceDependencyResponse({
    this.automaticResolution,
    this.dependencyType,
    this.id,
    this.isOptional,
    this.manualResolution,
    this.resolutionStatus,
    this.resolutionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticResolution': ?automaticResolution == null ? null : automaticResolution!.toMap(),
      'dependencyType': ?dependencyType,
      'id': ?id,
      'isOptional': ?isOptional,
      'manualResolution': ?manualResolution == null ? null : manualResolution!.toMap(),
      'resolutionStatus': ?resolutionStatus,
      'resolutionType': ?resolutionType,
    };
  }

  factory MoveResourceDependencyResponse.fromMap(Map<String, dynamic> map) {
    return MoveResourceDependencyResponse(
      automaticResolution: map['automaticResolution'] == null ? null : AutomaticResolutionPropertiesResponse.fromMap((map['automaticResolution'] as Map).cast<String, dynamic>()),
      dependencyType: map['dependencyType'] == null ? null : map['dependencyType'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      isOptional: map['isOptional'] == null ? null : map['isOptional'] as String,
      manualResolution: map['manualResolution'] == null ? null : ManualResolutionPropertiesResponse.fromMap((map['manualResolution'] as Map).cast<String, dynamic>()),
      resolutionStatus: map['resolutionStatus'] == null ? null : map['resolutionStatus'] as String,
      resolutionType: map['resolutionType'] == null ? null : map['resolutionType'] as String,
    );
  }
}

