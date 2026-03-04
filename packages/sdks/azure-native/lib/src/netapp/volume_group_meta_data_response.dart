// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_key_value_pairs_response.dart';

/// Volume group properties
class VolumeGroupMetaDataResponse {
  /// Application specific identifier
  final pulumi.Input<String>? applicationIdentifier;

  /// Application Type
  final pulumi.Input<String>? applicationType;

  /// Application specific placement rules for the volume group
  final pulumi.Input<List<PlacementKeyValuePairsResponse>>?
  globalPlacementRules;

  /// Group Description
  final pulumi.Input<String>? groupDescription;

  /// Number of volumes in volume group
  final pulumi.Input<double> volumesCount;

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
      'globalPlacementRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlacementKeyValuePairsResponse>,
            List<Map<String, dynamic>>
          >(
            globalPlacementRules,
            (value) =>
                pulumi.Input.encodeList<
                  PlacementKeyValuePairsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'groupDescription': ?groupDescription,
      'volumesCount': volumesCount,
    };
  }

  factory VolumeGroupMetaDataResponse.fromMap(Map<String, dynamic> map) {
    return VolumeGroupMetaDataResponse(
      applicationIdentifier: (() {
        final guardedValue = map['applicationIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      applicationType: (() {
        final guardedValue = map['applicationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalPlacementRules: (() {
        final guardedValue = map['globalPlacementRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlacementKeyValuePairsResponse>(
            guardedValue,
            (value) => PlacementKeyValuePairsResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      groupDescription: (() {
        final guardedValue = map['groupDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumesCount: pulumi.Input.fromValue(map['volumesCount'] as double),
    );
  }
}
