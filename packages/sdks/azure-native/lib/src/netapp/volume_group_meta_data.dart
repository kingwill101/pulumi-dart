// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_key_value_pairs.dart';

/// Volume group properties
class VolumeGroupMetaData {
  /// Application specific identifier
  final String? applicationIdentifier;
  /// Application Type
  final String? applicationType;
  /// Application specific placement rules for the volume group
  final List<PlacementKeyValuePairs>? globalPlacementRules;
  /// Group Description
  final String? groupDescription;

  /// Creates a new [VolumeGroupMetaData].
  /// [applicationIdentifier] Application specific identifier
  /// [applicationType] Application Type
  /// [globalPlacementRules] Application specific placement rules for the volume group
  /// [groupDescription] Group Description
  VolumeGroupMetaData({
    this.applicationIdentifier,
    this.applicationType,
    this.globalPlacementRules,
    this.groupDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationIdentifier': ?applicationIdentifier,
      'applicationType': ?applicationType,
      'globalPlacementRules': ?globalPlacementRules == null ? null : pulumi.Input.encodeList<PlacementKeyValuePairs, Map<String, dynamic>>(globalPlacementRules!, (value) => value.toMap()),
      'groupDescription': ?groupDescription,
    };
  }

  factory VolumeGroupMetaData.fromMap(Map<String, dynamic> map) {
    return VolumeGroupMetaData(
      applicationIdentifier: map['applicationIdentifier'] == null ? null : map['applicationIdentifier'] as String,
      applicationType: map['applicationType'] == null ? null : map['applicationType'] as String,
      globalPlacementRules: map['globalPlacementRules'] == null ? null : pulumi.Input.decodeList<PlacementKeyValuePairs>(map['globalPlacementRules'], (value) => PlacementKeyValuePairs.fromMap((value as Map).cast<String, dynamic>())),
      groupDescription: map['groupDescription'] == null ? null : map['groupDescription'] as String,
    );
  }
}

