// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_target_extended_location_response.dart';
import 'script_source_response.dart';
import 'target_region_response.dart';

/// The publishing profile of a gallery image version.
class GalleryScriptVersionPublishingProfileResponse {
  /// The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  final pulumi.Input<String>? endOfLifeDate;
  /// If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  final pulumi.Input<bool>? excludeFromLatest;
  /// The timestamp for when the gallery image version is published.
  final pulumi.Input<String> publishedDate;
  /// The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  final pulumi.Input<int>? replicaCount;
  /// Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  final pulumi.Input<String>? replicationMode;
  /// The source script from which the Script Version is going to be created.
  final pulumi.Input<ScriptSourceResponse> source;
  /// Specifies the strategy to be used when selecting the storage account type. Cannot be specified along with storageAccountType, but can be overridden per region by specifying targetRegions[].storageAccountType. This property is not updatable.
  final pulumi.Input<String>? storageAccountStrategy;
  /// Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  final pulumi.Input<String>? storageAccountType;
  /// The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  final pulumi.Input<List<GalleryTargetExtendedLocationResponse>>? targetExtendedLocations;
  /// The target regions where the Image Version is going to be replicated to. This property is updatable.
  final pulumi.Input<List<TargetRegionResponse>>? targetRegions;

  /// Creates a new [GalleryScriptVersionPublishingProfileResponse].
  /// [endOfLifeDate] The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  /// [excludeFromLatest] If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  /// [publishedDate] The timestamp for when the gallery image version is published.
  /// [replicaCount] The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  /// [replicationMode] Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  /// [source] The source script from which the Script Version is going to be created.
  /// [storageAccountStrategy] Specifies the strategy to be used when selecting the storage account type. Cannot be specified along with storageAccountType, but can be overridden per region by specifying targetRegions[].storageAccountType. This property is not updatable.
  /// [storageAccountType] Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  /// [targetExtendedLocations] The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  /// [targetRegions] The target regions where the Image Version is going to be replicated to. This property is updatable.
  GalleryScriptVersionPublishingProfileResponse({
    this.endOfLifeDate,
    this.excludeFromLatest,
    required this.publishedDate,
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
      'publishedDate': publishedDate,
      'replicaCount': ?replicaCount,
      'replicationMode': ?replicationMode,
      'source': pulumi.Input.mapInputValue<ScriptSourceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'storageAccountStrategy': ?storageAccountStrategy,
      'storageAccountType': ?storageAccountType,
      'targetExtendedLocations': ?pulumi.Input.mapOptionalInputValue<List<GalleryTargetExtendedLocationResponse>, List<Map<String, dynamic>>>(targetExtendedLocations, (value) => pulumi.Input.encodeList<GalleryTargetExtendedLocationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetRegions': ?pulumi.Input.mapOptionalInputValue<List<TargetRegionResponse>, List<Map<String, dynamic>>>(targetRegions, (value) => pulumi.Input.encodeList<TargetRegionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GalleryScriptVersionPublishingProfileResponse.fromMap(Map<String, dynamic> map) {
    return GalleryScriptVersionPublishingProfileResponse(
      endOfLifeDate: map['endOfLifeDate'] == null ? null : (map['endOfLifeDate']! as String).input(),
      excludeFromLatest: map['excludeFromLatest'] == null ? null : (map['excludeFromLatest']! as bool).input(),
      publishedDate: (map['publishedDate'] as String).input(),
      replicaCount: map['replicaCount'] == null ? null : (map['replicaCount']! as int).input(),
      replicationMode: map['replicationMode'] == null ? null : (map['replicationMode']! as String).input(),
      source: (ScriptSourceResponse.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      storageAccountStrategy: map['storageAccountStrategy'] == null ? null : (map['storageAccountStrategy']! as String).input(),
      storageAccountType: map['storageAccountType'] == null ? null : (map['storageAccountType']! as String).input(),
      targetExtendedLocations: map['targetExtendedLocations'] == null ? null : (pulumi.Input.decodeList<GalleryTargetExtendedLocationResponse>(map['targetExtendedLocations']!, (value) => GalleryTargetExtendedLocationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetRegions: map['targetRegions'] == null ? null : (pulumi.Input.decodeList<TargetRegionResponse>(map['targetRegions']!, (value) => TargetRegionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

