// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'move_collection_properties_response_errors.dart';

/// Defines the move collection properties.
class MoveCollectionPropertiesResponse {
  /// Defines the move collection errors.
  final pulumi.Input<MoveCollectionPropertiesResponseErrors> errors;
  /// Gets or sets the move region which indicates the region where the VM Regional to Zonal move will be conducted.
  final pulumi.Input<String>? moveRegion;
  /// Defines the MoveType.
  final pulumi.Input<String>? moveType;
  /// Defines the provisioning states.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the source region.
  final pulumi.Input<String>? sourceRegion;
  /// Gets or sets the target region.
  final pulumi.Input<String>? targetRegion;
  /// Gets or sets the version of move collection.
  final pulumi.Input<String>? version;

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
      'errors': pulumi.Input.mapInputValue<MoveCollectionPropertiesResponseErrors, Map<String, dynamic>>(errors, (value) => value.toMap()),
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
      errors: (MoveCollectionPropertiesResponseErrors.fromMap((map['errors'] as Map).cast<String, dynamic>())).input(),
      moveRegion: map['moveRegion'] == null ? null : (map['moveRegion']! as String).input(),
      moveType: map['moveType'] == null ? null : (map['moveType']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      sourceRegion: map['sourceRegion'] == null ? null : (map['sourceRegion']! as String).input(),
      targetRegion: map['targetRegion'] == null ? null : (map['targetRegion']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

