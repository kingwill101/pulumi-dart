// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_target_extended_location.dart';
import 'script_source.dart';
import 'target_region.dart';

/// The publishing profile of a gallery image version.
class GalleryScriptVersionPublishingProfile {
  /// The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  final pulumi.Input<String>? endOfLifeDate;
  /// If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  final pulumi.Input<bool>? excludeFromLatest;
  /// The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  final pulumi.Input<int>? replicaCount;
  /// Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  final pulumi.Input<String>? replicationMode;
  /// The source script from which the Script Version is going to be created.
  final pulumi.Input<ScriptSource> source;
  /// Specifies the strategy to be used when selecting the storage account type. Cannot be specified along with storageAccountType, but can be overridden per region by specifying targetRegions[].storageAccountType. This property is not updatable.
  final pulumi.Input<String>? storageAccountStrategy;
  /// Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  final pulumi.Input<String>? storageAccountType;
  /// The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  final pulumi.Input<List<GalleryTargetExtendedLocation>>? targetExtendedLocations;
  /// The target regions where the Image Version is going to be replicated to. This property is updatable.
  final pulumi.Input<List<TargetRegion>>? targetRegions;

  /// Creates a new [GalleryScriptVersionPublishingProfile].
  /// [endOfLifeDate] The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  /// [excludeFromLatest] If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  /// [replicaCount] The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  /// [replicationMode] Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  /// [source] The source script from which the Script Version is going to be created.
  /// [storageAccountStrategy] Specifies the strategy to be used when selecting the storage account type. Cannot be specified along with storageAccountType, but can be overridden per region by specifying targetRegions[].storageAccountType. This property is not updatable.
  /// [storageAccountType] Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  /// [targetExtendedLocations] The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  /// [targetRegions] The target regions where the Image Version is going to be replicated to. This property is updatable.
  GalleryScriptVersionPublishingProfile({
    this.endOfLifeDate,
    this.excludeFromLatest,
    this.replicaCount,
    this.replicationMode,
    required this.source,
    this.storageAccountStrategy,
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
      'source': pulumi.Input.mapInputValue<ScriptSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'storageAccountStrategy': ?storageAccountStrategy,
      'storageAccountType': ?storageAccountType,
      'targetExtendedLocations': ?pulumi.Input.mapOptionalInputValue<List<GalleryTargetExtendedLocation>, List<Map<String, dynamic>>>(targetExtendedLocations, (value) => pulumi.Input.encodeList<GalleryTargetExtendedLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetRegions': ?pulumi.Input.mapOptionalInputValue<List<TargetRegion>, List<Map<String, dynamic>>>(targetRegions, (value) => pulumi.Input.encodeList<TargetRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GalleryScriptVersionPublishingProfile.fromMap(Map<String, dynamic> map) {
    return GalleryScriptVersionPublishingProfile(
      endOfLifeDate: map['endOfLifeDate'] == null ? null : (map['endOfLifeDate'] as String).input(),
      excludeFromLatest: map['excludeFromLatest'] == null ? null : (map['excludeFromLatest'] as bool).input(),
      replicaCount: map['replicaCount'] == null ? null : (map['replicaCount'] as int).input(),
      replicationMode: map['replicationMode'] == null ? null : (map['replicationMode'] as String).input(),
      source: (ScriptSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      storageAccountStrategy: map['storageAccountStrategy'] == null ? null : (map['storageAccountStrategy'] as String).input(),
      storageAccountType: map['storageAccountType'] == null ? null : (map['storageAccountType'] as String).input(),
      targetExtendedLocations: map['targetExtendedLocations'] == null ? null : (pulumi.Input.decodeList<GalleryTargetExtendedLocation>(map['targetExtendedLocations'], (value) => GalleryTargetExtendedLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetRegions: map['targetRegions'] == null ? null : (pulumi.Input.decodeList<TargetRegion>(map['targetRegions'], (value) => TargetRegion.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

