// ignore_for_file: unused_element, unnecessary_cast

import 'move_collection_properties_response_errors.dart';

/// Defines the move collection properties.
class MoveCollectionPropertiesResponse {
  /// Defines the move collection errors.
  final MoveCollectionPropertiesResponseErrors errors;
  /// Gets or sets the move region which indicates the region where the VM Regional to Zonal move will be conducted.
  final String? moveRegion;
  /// Defines the MoveType.
  final String? moveType;
  /// Defines the provisioning states.
  final String provisioningState;
  /// Gets or sets the source region.
  final String? sourceRegion;
  /// Gets or sets the target region.
  final String? targetRegion;
  /// Gets or sets the version of move collection.
  final String? version;

  /// Creates a new [MoveCollectionPropertiesResponse].
  /// [errors] Defines the move collection errors.
  /// [moveRegion] Gets or sets the move region which indicates the region where the VM Regional to Zonal move will be conducted.
  /// [moveType] Defines the MoveType.
  /// [provisioningState] Defines the provisioning states.
  /// [sourceRegion] Gets or sets the source region.
  /// [targetRegion] Gets or sets the target region.
  /// [version] Gets or sets the version of move collection.
  MoveCollectionPropertiesResponse({
    required this.errors,
    this.moveRegion,
    this.moveType,
    required this.provisioningState,
    this.sourceRegion,
    this.targetRegion,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': errors.toMap(),
      'moveRegion': ?moveRegion,
      'moveType': ?moveType,
      'provisioningState': provisioningState,
      'sourceRegion': ?sourceRegion,
      'targetRegion': ?targetRegion,
      'version': ?version,
    };
  }

  factory MoveCollectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MoveCollectionPropertiesResponse(
      errors: MoveCollectionPropertiesResponseErrors.fromMap((map['errors'] as Map).cast<String, dynamic>()),
      moveRegion: map['moveRegion'] == null ? null : map['moveRegion'] as String,
      moveType: map['moveType'] == null ? null : map['moveType'] as String,
      provisioningState: map['provisioningState'] as String,
      sourceRegion: map['sourceRegion'] == null ? null : map['sourceRegion'] as String,
      targetRegion: map['targetRegion'] == null ? null : map['targetRegion'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

