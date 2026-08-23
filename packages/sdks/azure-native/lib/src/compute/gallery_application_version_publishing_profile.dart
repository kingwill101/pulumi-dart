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
  final pulumi.Input<Map<String, String>>? advancedSettings;
  /// A list of custom actions that can be performed with this Gallery Application Version.
  final pulumi.Input<List<GalleryApplicationCustomAction>>? customActions;
  /// Optional. Whether or not this application reports health.
  final pulumi.Input<bool>? enableHealthCheck;
  /// The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable.
  final pulumi.Input<String>? endOfLifeDate;
  /// If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version.
  final pulumi.Input<bool>? excludeFromLatest;
  final pulumi.Input<UserArtifactManage>? manageActions;
  /// The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable.
  final pulumi.Input<int>? replicaCount;
  /// Optional parameter which specifies the mode to be used for replication. This property is not updatable.
  final pulumi.Input<String>? replicationMode;
  /// Additional settings for the VM app that contains the target package and config file name when it is deployed to target VM or VM scale set.
  final pulumi.Input<UserArtifactSettings>? settings;
  /// The source image from which the Image Version is going to be created.
  final pulumi.Input<UserArtifactSource> source;
  /// Specifies the storage account type to be used to store the image. Cannot be specified along with storageAccountStrategy. This property is not updatable.
  final pulumi.Input<String>? storageAccountType;
  /// The target extended locations where the Image Version is going to be replicated to. This property is updatable.
  final pulumi.Input<List<GalleryTargetExtendedLocation>>? targetExtendedLocations;
  /// The target regions where the Image Version is going to be replicated to. This property is updatable.
  final pulumi.Input<List<TargetRegion>>? targetRegions;

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
  const GalleryApplicationVersionPublishingProfile({
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
      'customActions': ?pulumi.Input.mapOptionalInputValue<List<GalleryApplicationCustomAction>, List<Map<String, dynamic>>>(customActions, (value) => pulumi.Input.encodeList<GalleryApplicationCustomAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableHealthCheck': ?enableHealthCheck,
      'endOfLifeDate': ?endOfLifeDate,
      'excludeFromLatest': ?excludeFromLatest,
      'manageActions': ?pulumi.Input.mapOptionalInputValue<UserArtifactManage, Map<String, dynamic>>(manageActions, (value) => value.toMap()),
      'replicaCount': ?replicaCount,
      'replicationMode': ?replicationMode,
      'settings': ?pulumi.Input.mapOptionalInputValue<UserArtifactSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'source': pulumi.Input.mapInputValue<UserArtifactSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'storageAccountType': ?storageAccountType,
      'targetExtendedLocations': ?pulumi.Input.mapOptionalInputValue<List<GalleryTargetExtendedLocation>, List<Map<String, dynamic>>>(targetExtendedLocations, (value) => pulumi.Input.encodeList<GalleryTargetExtendedLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetRegions': ?pulumi.Input.mapOptionalInputValue<List<TargetRegion>, List<Map<String, dynamic>>>(targetRegions, (value) => pulumi.Input.encodeList<TargetRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GalleryApplicationVersionPublishingProfile.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationVersionPublishingProfile(
      advancedSettings: (() { final guardedValue = map['advancedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      customActions: (() { final guardedValue = map['customActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GalleryApplicationCustomAction>(guardedValue, (value) => GalleryApplicationCustomAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableHealthCheck: (() { final guardedValue = map['enableHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endOfLifeDate: (() { final guardedValue = map['endOfLifeDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeFromLatest: (() { final guardedValue = map['excludeFromLatest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      manageActions: (() { final guardedValue = map['manageActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserArtifactManage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicationMode: (() { final guardedValue = map['replicationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserArtifactSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: pulumi.Input.fromValue(UserArtifactSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetExtendedLocations: (() { final guardedValue = map['targetExtendedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GalleryTargetExtendedLocation>(guardedValue, (value) => GalleryTargetExtendedLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetRegions: (() { final guardedValue = map['targetRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TargetRegion>(guardedValue, (value) => TargetRegion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
