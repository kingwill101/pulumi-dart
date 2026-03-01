// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_custom_action.dart';
import 'gallery_target_extended_location.dart';
import 'target_region.dart';
import 'user_artifact_manage.dart';
import 'user_artifact_settings.dart';
import 'user_artifact_source.dart';

/// The publishing profile of a gallery image version.
class GalleryApplicationVersionPublishingProfile {
  /// Optional. Additional settings to pass to the vm-application-manager extension. For advanced use only.
  final Map<String, String>? advancedSettings;
  /// A list of custom actions that can be performed with this Gallery Application Version.
  final List<GalleryApplicationCustomAction>? customActions;
  /// Optional. Whether or not this application reports health.
  final bool? enableHealthCheck;
  /// The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  final String? endOfLifeDate;
  /// If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  final bool? excludeFromLatest;
  final UserArtifactManage? manageActions;
  /// The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  final int? replicaCount;
  /// Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  final String? replicationMode;
  /// Additional settings for the VM app that contains the target package and config file name when it is deployed to target VM or VM scale set.
  final UserArtifactSettings? settings;
  /// The source image from which the Image Version is going to be created.
  final UserArtifactSource source;
  /// Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  final String? storageAccountType;
  /// The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  final List<GalleryTargetExtendedLocation>? targetExtendedLocations;
  /// The target regions where the Image Version is going to be replicated to. This property is updatable.
  final List<TargetRegion>? targetRegions;

  /// Creates a new [GalleryApplicationVersionPublishingProfile].
  /// [advancedSettings] Optional. Additional settings to pass to the vm-application-manager extension. For advanced use only.
  /// [customActions] A list of custom actions that can be performed with this Gallery Application Version.
  /// [enableHealthCheck] Optional. Whether or not this application reports health.
  /// [endOfLifeDate] The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  /// [excludeFromLatest] If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  /// [manageActions] Optional.
  /// [replicaCount] The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  /// [replicationMode] Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  /// [settings] Additional settings for the VM app that contains the target package and config file name when it is deployed to target VM or VM scale set.
  /// [source] The source image from which the Image Version is going to be created.
  /// [storageAccountType] Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  /// [targetExtendedLocations] The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  /// [targetRegions] The target regions where the Image Version is going to be replicated to. This property is updatable.
  GalleryApplicationVersionPublishingProfile({
    this.advancedSettings,
    this.customActions,
    this.enableHealthCheck,
    this.endOfLifeDate,
    this.excludeFromLatest,
    this.manageActions,
    this.replicaCount,
    this.replicationMode,
    this.settings,
    required this.source,
    this.storageAccountType,
    this.targetExtendedLocations,
    this.targetRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?advancedSettings,
      'customActions': ?customActions == null ? null : pulumi.Input.encodeList<GalleryApplicationCustomAction, Map<String, dynamic>>(customActions!, (value) => value.toMap()),
      'enableHealthCheck': ?enableHealthCheck,
      'endOfLifeDate': ?endOfLifeDate,
      'excludeFromLatest': ?excludeFromLatest,
      'manageActions': ?manageActions == null ? null : manageActions!.toMap(),
      'replicaCount': ?replicaCount,
      'replicationMode': ?replicationMode,
      'settings': ?settings == null ? null : settings!.toMap(),
      'source': source.toMap(),
      'storageAccountType': ?storageAccountType,
      'targetExtendedLocations': ?targetExtendedLocations == null ? null : pulumi.Input.encodeList<GalleryTargetExtendedLocation, Map<String, dynamic>>(targetExtendedLocations!, (value) => value.toMap()),
      'targetRegions': ?targetRegions == null ? null : pulumi.Input.encodeList<TargetRegion, Map<String, dynamic>>(targetRegions!, (value) => value.toMap()),
    };
  }

  factory GalleryApplicationVersionPublishingProfile.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationVersionPublishingProfile(
      advancedSettings: map['advancedSettings'] == null ? null : (map['advancedSettings'] as Map).cast<String, String>(),
      customActions: map['customActions'] == null ? null : pulumi.Input.decodeList<GalleryApplicationCustomAction>(map['customActions'], (value) => GalleryApplicationCustomAction.fromMap((value as Map).cast<String, dynamic>())),
      enableHealthCheck: map['enableHealthCheck'] == null ? null : map['enableHealthCheck'] as bool,
      endOfLifeDate: map['endOfLifeDate'] == null ? null : map['endOfLifeDate'] as String,
      excludeFromLatest: map['excludeFromLatest'] == null ? null : map['excludeFromLatest'] as bool,
      manageActions: map['manageActions'] == null ? null : UserArtifactManage.fromMap((map['manageActions'] as Map).cast<String, dynamic>()),
      replicaCount: map['replicaCount'] == null ? null : map['replicaCount'] as int,
      replicationMode: map['replicationMode'] == null ? null : map['replicationMode'] as String,
      settings: map['settings'] == null ? null : UserArtifactSettings.fromMap((map['settings'] as Map).cast<String, dynamic>()),
      source: UserArtifactSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
      targetExtendedLocations: map['targetExtendedLocations'] == null ? null : pulumi.Input.decodeList<GalleryTargetExtendedLocation>(map['targetExtendedLocations'], (value) => GalleryTargetExtendedLocation.fromMap((value as Map).cast<String, dynamic>())),
      targetRegions: map['targetRegions'] == null ? null : pulumi.Input.decodeList<TargetRegion>(map['targetRegions'], (value) => TargetRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

