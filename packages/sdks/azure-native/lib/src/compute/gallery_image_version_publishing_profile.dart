// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_target_extended_location.dart';
import 'target_region.dart';

/// The publishing profile of a gallery image Version.
class GalleryImageVersionPublishingProfile {
  /// The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  final String? endOfLifeDate;
  /// If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  final bool? excludeFromLatest;
  /// The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  final int? replicaCount;
  /// Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  final String? replicationMode;
  /// Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  final String? storageAccountType;
  /// The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  final List<GalleryTargetExtendedLocation>? targetExtendedLocations;
  /// The target regions where the Image Version is going to be replicated to. This property is updatable.
  final List<TargetRegion>? targetRegions;

  /// Creates a new [GalleryImageVersionPublishingProfile].
  /// [endOfLifeDate] The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  /// [excludeFromLatest] If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  /// [replicaCount] The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  /// [replicationMode] Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  /// [storageAccountType] Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  /// [targetExtendedLocations] The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  /// [targetRegions] The target regions where the Image Version is going to be replicated to. This property is updatable.
  GalleryImageVersionPublishingProfile({
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
      'targetExtendedLocations': ?targetExtendedLocations == null ? null : pulumi.Input.encodeList<GalleryTargetExtendedLocation, Map<String, dynamic>>(targetExtendedLocations!, (value) => value.toMap()),
      'targetRegions': ?targetRegions == null ? null : pulumi.Input.encodeList<TargetRegion, Map<String, dynamic>>(targetRegions!, (value) => value.toMap()),
    };
  }

  factory GalleryImageVersionPublishingProfile.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionPublishingProfile(
      endOfLifeDate: map['endOfLifeDate'] == null ? null : map['endOfLifeDate'] as String,
      excludeFromLatest: map['excludeFromLatest'] == null ? null : map['excludeFromLatest'] as bool,
      replicaCount: map['replicaCount'] == null ? null : map['replicaCount'] as int,
      replicationMode: map['replicationMode'] == null ? null : map['replicationMode'] as String,
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
      targetExtendedLocations: map['targetExtendedLocations'] == null ? null : pulumi.Input.decodeList<GalleryTargetExtendedLocation>(map['targetExtendedLocations'], (value) => GalleryTargetExtendedLocation.fromMap((value as Map).cast<String, dynamic>())),
      targetRegions: map['targetRegions'] == null ? null : pulumi.Input.decodeList<TargetRegion>(map['targetRegions'], (value) => TargetRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

