// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_resolution_properties_response.dart';
import 'manual_resolution_properties_response.dart';

/// Defines the dependency of the move resource.
class MoveResourceDependencyResponse {
  /// Defines the properties for automatic resolution.
  final pulumi.Input<AutomaticResolutionPropertiesResponse>? automaticResolution;
  /// Defines the dependency type.
  final pulumi.Input<String>? dependencyType;
  /// Gets the source ARM ID of the dependent resource.
  final pulumi.Input<String>? id;
  /// Gets or sets a value indicating whether the dependency is optional.
  final pulumi.Input<String>? isOptional;
  /// Defines the properties for manual resolution.
  final pulumi.Input<ManualResolutionPropertiesResponse>? manualResolution;
  /// Gets the dependency resolution status.
  final pulumi.Input<String>? resolutionStatus;
  /// Defines the resolution type.
  final pulumi.Input<String>? resolutionType;

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
      'automaticResolution': ?pulumi.Input.mapOptionalInputValue<AutomaticResolutionPropertiesResponse, Map<String, dynamic>>(automaticResolution, (value) => value.toMap()),
      'dependencyType': ?dependencyType,
      'id': ?id,
      'isOptional': ?isOptional,
      'manualResolution': ?pulumi.Input.mapOptionalInputValue<ManualResolutionPropertiesResponse, Map<String, dynamic>>(manualResolution, (value) => value.toMap()),
      'resolutionStatus': ?resolutionStatus,
      'resolutionType': ?resolutionType,
    };
  }

  factory MoveResourceDependencyResponse.fromMap(Map<String, dynamic> map) {
    return MoveResourceDependencyResponse(
      automaticResolution: map['automaticResolution'] == null ? null : (AutomaticResolutionPropertiesResponse.fromMap((map['automaticResolution']! as Map).cast<String, dynamic>())).input(),
      dependencyType: map['dependencyType'] == null ? null : (map['dependencyType']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      isOptional: map['isOptional'] == null ? null : (map['isOptional']! as String).input(),
      manualResolution: map['manualResolution'] == null ? null : (ManualResolutionPropertiesResponse.fromMap((map['manualResolution']! as Map).cast<String, dynamic>())).input(),
      resolutionStatus: map['resolutionStatus'] == null ? null : (map['resolutionStatus']! as String).input(),
      resolutionType: map['resolutionType'] == null ? null : (map['resolutionType']! as String).input(),
    );
  }
}

