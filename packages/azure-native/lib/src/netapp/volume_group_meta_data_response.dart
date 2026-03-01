// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_key_value_pairs_response.dart';

/// Volume group properties
class VolumeGroupMetaDataResponse {
  /// Application specific identifier
  final String? applicationIdentifier;
  /// Application Type
  final String? applicationType;
  /// Application specific placement rules for the volume group
  final List<PlacementKeyValuePairsResponse>? globalPlacementRules;
  /// Group Description
  final String? groupDescription;
  /// Number of volumes in volume group
  final double volumesCount;

  /// Creates a new [VolumeGroupMetaDataResponse].
  /// [applicationIdentifier] Application specific identifier
  /// [applicationType] Application Type
  /// [globalPlacementRules] Application specific placement rules for the volume group
  /// [groupDescription] Group Description
  /// [volumesCount] Number of volumes in volume group
  VolumeGroupMetaDataResponse({
    this.applicationIdentifier,
    this.applicationType,
    this.globalPlacementRules,
    this.groupDescription,
    required this.volumesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationIdentifier': ?applicationIdentifier,
      'applicationType': ?applicationType,
      'globalPlacementRules': ?globalPlacementRules == null ? null : pulumi.Input.encodeList<PlacementKeyValuePairsResponse, Map<String, dynamic>>(globalPlacementRules!, (value) => value.toMap()),
      'groupDescription': ?groupDescription,
      'volumesCount': volumesCount,
    };
  }

  factory VolumeGroupMetaDataResponse.fromMap(Map<String, dynamic> map) {
    return VolumeGroupMetaDataResponse(
      applicationIdentifier: map['applicationIdentifier'] == null ? null : map['applicationIdentifier'] as String,
      applicationType: map['applicationType'] == null ? null : map['applicationType'] as String,
      globalPlacementRules: map['globalPlacementRules'] == null ? null : pulumi.Input.decodeList<PlacementKeyValuePairsResponse>(map['globalPlacementRules'], (value) => PlacementKeyValuePairsResponse.fromMap((value as Map).cast<String, dynamic>())),
      groupDescription: map['groupDescription'] == null ? null : map['groupDescription'] as String,
      volumesCount: map['volumesCount'] as double,
    );
  }
}

