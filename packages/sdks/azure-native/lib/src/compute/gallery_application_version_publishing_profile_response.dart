// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_custom_action_response.dart';
import 'gallery_target_extended_location_response.dart';
import 'target_region_response.dart';
import 'user_artifact_manage_response.dart';
import 'user_artifact_settings_response.dart';
import 'user_artifact_source_response.dart';

/// The publishing profile of a gallery image version.
class GalleryApplicationVersionPublishingProfileResponse {
  /// Optional. Additional settings to pass to the vm-application-manager extension. For advanced use only.
  final pulumi.Input<Map<String, String>>? advancedSettings;
  /// A list of custom actions that can be performed with this Gallery Application Version.
  final pulumi.Input<List<GalleryApplicationCustomActionResponse>>? customActions;
  /// Optional. Whether or not this application reports health.
  final pulumi.Input<bool>? enableHealthCheck;
  /// The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  final pulumi.Input<String>? endOfLifeDate;
  /// If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  final pulumi.Input<bool>? excludeFromLatest;
  final pulumi.Input<UserArtifactManageResponse>? manageActions;
  /// The timestamp for when the gallery image version is published.
  final pulumi.Input<String> publishedDate;
  /// The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  final pulumi.Input<int>? replicaCount;
  /// Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  final pulumi.Input<String>? replicationMode;
  /// Additional settings for the VM app that contains the target package and config file name when it is deployed to target VM or VM scale set.
  final pulumi.Input<UserArtifactSettingsResponse>? settings;
  /// The source image from which the Image Version is going to be created.
  final pulumi.Input<UserArtifactSourceResponse> source;
  /// Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  final pulumi.Input<String>? storageAccountType;
  /// The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  final pulumi.Input<List<GalleryTargetExtendedLocationResponse>>? targetExtendedLocations;
  /// The target regions where the Image Version is going to be replicated to. This property is updatable.
  final pulumi.Input<List<TargetRegionResponse>>? targetRegions;

  /// Creates a new [GalleryApplicationVersionPublishingProfileResponse].
  /// [advancedSettings] Optional. Additional settings to pass to the vm-application-manager extension. For advanced use only.
  /// [customActions] A list of custom actions that can be performed with this Gallery Application Version.
  /// [enableHealthCheck] Optional. Whether or not this application reports health.
  /// [endOfLifeDate] The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  /// [excludeFromLatest] If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  /// [manageActions] Optional.
  /// [publishedDate] The timestamp for when the gallery image version is published.
  /// [replicaCount] The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  /// [replicationMode] Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  /// [settings] Additional settings for the VM app that contains the target package and config file name when it is deployed to target VM or VM scale set.
  /// [source] The source image from which the Image Version is going to be created.
  /// [storageAccountType] Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  /// [targetExtendedLocations] The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  /// [targetRegions] The target regions where the Image Version is going to be replicated to. This property is updatable.
  const GalleryApplicationVersionPublishingProfileResponse({
    this.advancedSettings,
    this.customActions,
    this.enableHealthCheck,
    this.endOfLifeDate,
    this.excludeFromLatest,
    this.manageActions,
    required this.publishedDate,
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
      'customActions': ?pulumi.Input.mapOptionalInputValue<List<GalleryApplicationCustomActionResponse>, List<Map<String, dynamic>>>(customActions, (value) => pulumi.Input.encodeList<GalleryApplicationCustomActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableHealthCheck': ?enableHealthCheck,
      'endOfLifeDate': ?endOfLifeDate,
      'excludeFromLatest': ?excludeFromLatest,
      'manageActions': ?pulumi.Input.mapOptionalInputValue<UserArtifactManageResponse, Map<String, dynamic>>(manageActions, (value) => value.toMap()),
      'publishedDate': publishedDate,
      'replicaCount': ?replicaCount,
      'replicationMode': ?replicationMode,
      'settings': ?pulumi.Input.mapOptionalInputValue<UserArtifactSettingsResponse, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'source': pulumi.Input.mapInputValue<UserArtifactSourceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'storageAccountType': ?storageAccountType,
      'targetExtendedLocations': ?pulumi.Input.mapOptionalInputValue<List<GalleryTargetExtendedLocationResponse>, List<Map<String, dynamic>>>(targetExtendedLocations, (value) => pulumi.Input.encodeList<GalleryTargetExtendedLocationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetRegions': ?pulumi.Input.mapOptionalInputValue<List<TargetRegionResponse>, List<Map<String, dynamic>>>(targetRegions, (value) => pulumi.Input.encodeList<TargetRegionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GalleryApplicationVersionPublishingProfileResponse.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationVersionPublishingProfileResponse(
      advancedSettings: (() { final guardedValue = map['advancedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      customActions: (() { final guardedValue = map['customActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GalleryApplicationCustomActionResponse>(guardedValue, (value) => GalleryApplicationCustomActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableHealthCheck: (() { final guardedValue = map['enableHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endOfLifeDate: (() { final guardedValue = map['endOfLifeDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeFromLatest: (() { final guardedValue = map['excludeFromLatest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      manageActions: (() { final guardedValue = map['manageActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserArtifactManageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publishedDate: pulumi.Input.fromValue(map['publishedDate'] as String),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicationMode: (() { final guardedValue = map['replicationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserArtifactSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: pulumi.Input.fromValue(UserArtifactSourceResponse.fromMap((map['source']! as Map).cast<String, dynamic>())),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetExtendedLocations: (() { final guardedValue = map['targetExtendedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GalleryTargetExtendedLocationResponse>(guardedValue, (value) => GalleryTargetExtendedLocationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetRegions: (() { final guardedValue = map['targetRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TargetRegionResponse>(guardedValue, (value) => TargetRegionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

