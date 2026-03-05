// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_key_value_pairs.dart';

/// Volume group properties
class VolumeGroupMetaData {
  /// Application specific identifier
  final pulumi.Input<String>? applicationIdentifier;
  /// Application Type
  final pulumi.Input<String>? applicationType;
  /// Application specific placement rules for the volume group
  final pulumi.Input<List<PlacementKeyValuePairs>>? globalPlacementRules;
  /// Group Description
  final pulumi.Input<String>? groupDescription;

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
      'globalPlacementRules': ?pulumi.Input.mapOptionalInputValue<List<PlacementKeyValuePairs>, List<Map<String, dynamic>>>(globalPlacementRules, (value) => pulumi.Input.encodeList<PlacementKeyValuePairs, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupDescription': ?groupDescription,
    };
  }

  factory VolumeGroupMetaData.fromMap(Map<String, dynamic> map) {
    return VolumeGroupMetaData(
      applicationIdentifier: (() { final guardedValue = map['applicationIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationType: (() { final guardedValue = map['applicationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalPlacementRules: (() { final guardedValue = map['globalPlacementRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlacementKeyValuePairs>(guardedValue, (value) => PlacementKeyValuePairs.fromMap((value as Map).cast<String, dynamic>()))); })(),
      groupDescription: (() { final guardedValue = map['groupDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

