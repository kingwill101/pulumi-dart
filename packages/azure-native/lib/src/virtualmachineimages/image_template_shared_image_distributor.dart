// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribute_versioner_latest.dart';
import 'target_region.dart';

/// Distribute via Azure Compute Gallery.
class ImageTemplateSharedImageDistributor {
  /// Tags that will be applied to the artifact once it has been created/updated by the distributor.
  final Map<String, String>? artifactTags;
  /// Flag that indicates whether created image version should be excluded from latest. Omit to use the default (false).
  final bool? excludeFromLatest;
  /// Resource Id of the Azure Compute Gallery image
  final String galleryImageId;
  /// [Deprecated] A list of regions that the image will be replicated to. This list can be specified only if targetRegions is not specified. This field is deprecated - use targetRegions instead.
  final List<String>? replicationRegions;
  /// The name to be used for the associated RunOutput.
  final String runOutputName;
  /// [Deprecated] Storage account type to be used to store the shared image. Omit to use the default (Standard_LRS). This field can be specified only if replicationRegions is specified. This field is deprecated - use targetRegions instead.
  final String? storageAccountType;
  /// The target regions where the distributed Image Version is going to be replicated to. This object supersedes replicationRegions and can be specified only if replicationRegions is not specified.
  final List<TargetRegion>? targetRegions;
  /// Type of distribution.
  /// Expected value is 'SharedImage'.
  final String type;
  /// Describes how to generate new x.y.z version number for distribution.
  final DistributeVersionerLatest? versioning;

  /// Creates a new [ImageTemplateSharedImageDistributor].
  /// [artifactTags] Tags that will be applied to the artifact once it has been created/updated by the distributor.
  /// [excludeFromLatest] Flag that indicates whether created image version should be excluded from latest. Omit to use the default (false).
  /// [galleryImageId] Resource Id of the Azure Compute Gallery image
  /// [replicationRegions] [Deprecated] A list of regions that the image will be replicated to. This list can be specified only if targetRegions is not specified. This field is deprecated - use targetRegions instead.
  /// [runOutputName] The name to be used for the associated RunOutput.
  /// [storageAccountType] [Deprecated] Storage account type to be used to store the shared image. Omit to use the default (Standard_LRS). This field can be specified only if replicationRegions is specified. This field is deprecated - use targetRegions instead.
  /// [targetRegions] The target regions where the distributed Image Version is going to be replicated to. This object supersedes replicationRegions and can be specified only if replicationRegions is not specified.
  /// [type] Type of distribution.
  /// [versioning] Describes how to generate new x.y.z version number for distribution.
  ImageTemplateSharedImageDistributor({
    this.artifactTags,
    this.excludeFromLatest,
    required this.galleryImageId,
    this.replicationRegions,
    required this.runOutputName,
    this.storageAccountType,
    this.targetRegions,
    required this.type,
    this.versioning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactTags': ?artifactTags,
      'excludeFromLatest': ?excludeFromLatest,
      'galleryImageId': galleryImageId,
      'replicationRegions': ?replicationRegions,
      'runOutputName': runOutputName,
      'storageAccountType': ?storageAccountType,
      'targetRegions': ?targetRegions == null ? null : pulumi.Input.encodeList<TargetRegion, Map<String, dynamic>>(targetRegions!, (value) => value.toMap()),
      'type': type,
      'versioning': ?versioning == null ? null : versioning!.toMap(),
    };
  }

  factory ImageTemplateSharedImageDistributor.fromMap(Map<String, dynamic> map) {
    return ImageTemplateSharedImageDistributor(
      artifactTags: map['artifactTags'] == null ? null : (map['artifactTags'] as Map).cast<String, String>(),
      excludeFromLatest: map['excludeFromLatest'] == null ? null : map['excludeFromLatest'] as bool,
      galleryImageId: map['galleryImageId'] as String,
      replicationRegions: map['replicationRegions'] == null ? null : (map['replicationRegions'] as List).cast<String>(),
      runOutputName: map['runOutputName'] as String,
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
      targetRegions: map['targetRegions'] == null ? null : pulumi.Input.decodeList<TargetRegion>(map['targetRegions'], (value) => TargetRegion.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      versioning: map['versioning'] == null ? null : DistributeVersionerLatest.fromMap((map['versioning'] as Map).cast<String, dynamic>()),
    );
  }
}

