// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_target_extended_location.dart';
import 'target_region.dart';

/// The publishing profile of a gallery image Version.
class GalleryImageVersionPublishingProfile {
  /// The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  final pulumi.Input<String?>? endOfLifeDate;
  /// If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  final pulumi.Input<bool?>? excludeFromLatest;
  /// The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  final pulumi.Input<int?>? replicaCount;
  /// Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  final pulumi.Input<dynamic>? replicationMode;
  /// Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  final pulumi.Input<dynamic>? storageAccountType;
  /// The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  final pulumi.Input<List<GalleryTargetExtendedLocation>?>? targetExtendedLocations;
  /// The target regions where the Image Version is going to be replicated to. This property is updatable.
  final pulumi.Input<List<TargetRegion>?>? targetRegions;

  /// Creates a new [GalleryImageVersionPublishingProfile].
  /// [endOfLifeDate] The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  /// [excludeFromLatest] If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  /// [replicaCount] The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  /// [replicationMode] Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  /// [storageAccountType] Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  /// [targetExtendedLocations] The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  /// [targetRegions] The target regions where the Image Version is going to be replicated to. This property is updatable.
  const GalleryImageVersionPublishingProfile({
    this.endOfLifeDate,
    this.excludeFromLatest,
    this.replicaCount,
    this.replicationMode,
    this.storageAccountType,
    this.targetExtendedLocations,
    this.targetRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endOfLifeDate': ?endOfLifeDate,
      'excludeFromLatest': ?excludeFromLatest,
      'replicaCount': ?replicaCount,
      'replicationMode': ?replicationMode,
      'storageAccountType': ?storageAccountType,
      'targetExtendedLocations': ?pulumi.Input.mapOptionalInputValue<List<GalleryTargetExtendedLocation>, List<Map<String, dynamic>>>(targetExtendedLocations, (value) => pulumi.Input.encodeList<GalleryTargetExtendedLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetRegions': ?pulumi.Input.mapOptionalInputValue<List<TargetRegion>, List<Map<String, dynamic>>>(targetRegions, (value) => pulumi.Input.encodeList<TargetRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GalleryImageVersionPublishingProfile.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionPublishingProfile(
      endOfLifeDate: (() { final guardedValue = map['endOfLifeDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeFromLatest: (() { final guardedValue = map['excludeFromLatest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      replicationMode: (() { final guardedValue = map['replicationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetExtendedLocations: (() { final guardedValue = map['targetExtendedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GalleryTargetExtendedLocation>(guardedValue, (value) => GalleryTargetExtendedLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetRegions: (() { final guardedValue = map['targetRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TargetRegion>(guardedValue, (value) => TargetRegion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
