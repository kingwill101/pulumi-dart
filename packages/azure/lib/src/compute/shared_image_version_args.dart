// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_image_version_target_region.dart';

/// {@template pulumi_compute_shared_image_version_shared_image_version_args_doc}
/// The set of arguments for SharedImageVersion.
/// {@endtemplate}
/// {@macro pulumi_compute_shared_image_version_shared_image_version_args_doc}
class SharedImageVersionArgs {
  /// URI of the Azure Storage Blob used to create the Image Version. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** You must specify exact one of `blob_uri`, `managed_image_id` and `os_disk_snapshot_id`.
  ///
  /// > **NOTE:** `blob_uri` and `storage_account_id` must be specified together
  final pulumi.Input<String>? blobUri;
  /// Specifies whether this Shared Image Version can be deleted from the Azure Regions this is replicated to. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? deletionOfReplicatedLocationsEnabled;
  /// The end of life date in RFC3339 format of the Image Version.
  final pulumi.Input<String>? endOfLifeDate;
  /// Should this Image Version be excluded from the `latest` filter? If set to `true` this Image Version won't be returned for the `latest` version. Defaults to `false`.
  final pulumi.Input<bool>? excludeFromLatest;
  /// The name of the Shared Image Gallery in which the Shared Image exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> galleryName;
  /// The name of the Shared Image within the Shared Image Gallery in which this Version should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> imageName;
  /// The Azure Region in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Managed Image or Virtual Machine ID which should be used for this Shared Image Version. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** The ID can be sourced from the `azure.compute.Image` data source or resource
  ///
  /// > **NOTE:** You must specify exact one of `blob_uri`, `managed_image_id` and `os_disk_snapshot_id`.
  final pulumi.Input<String>? managedImageId;
  /// The version number for this Image Version, such as `1.0.0`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the OS disk snapshot which should be used for this Shared Image Version. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** You must specify exact one of `blob_uri`, `managed_image_id` and `os_disk_snapshot_id`.
  final pulumi.Input<String>? osDiskSnapshotId;
  /// Mode to be used for replication. Possible values are `Full` and `Shallow`. Defaults to `Full`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? replicationMode;
  /// The name of the Resource Group in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Storage Account where the Blob exists. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** `blob_uri` and `storage_account_id` must be specified together
  final pulumi.Input<String>? storageAccountId;
  /// A collection of tags which should be applied to this resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// One or more `target_region` blocks as documented below.
  final pulumi.Input<List<SharedImageVersionTargetRegion>> targetRegions;

  /// Creates a new [SharedImageVersionArgs].
  /// [blobUri] URI of the Azure Storage Blob used to create the Image Version. Changing this forces a new resource to be created.
  /// [deletionOfReplicatedLocationsEnabled] Specifies whether this Shared Image Version can be deleted from the Azure Regions this is replicated to. Defaults to `false`. Changing this forces a new resource to be created.
  /// [endOfLifeDate] The end of life date in RFC3339 format of the Image Version.
  /// [excludeFromLatest] Should this Image Version be excluded from the `latest` filter? If set to `true` this Image Version won't be returned for the `latest` version. Defaults to `false`.
  /// [galleryName] The name of the Shared Image Gallery in which the Shared Image exists. Changing this forces a new resource to be created.
  /// [imageName] The name of the Shared Image within the Shared Image Gallery in which this Version should be created. Changing this forces a new resource to be created.
  /// [location] The Azure Region in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  /// [managedImageId] The ID of the Managed Image or Virtual Machine ID which should be used for this Shared Image Version. Changing this forces a new resource to be created.
  /// [name] The version number for this Image Version, such as `1.0.0`. Changing this forces a new resource to be created.
  /// [osDiskSnapshotId] The ID of the OS disk snapshot which should be used for this Shared Image Version. Changing this forces a new resource to be created.
  /// [replicationMode] Mode to be used for replication. Possible values are `Full` and `Shallow`. Defaults to `Full`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  /// [storageAccountId] The ID of the Storage Account where the Blob exists. Changing this forces a new resource to be created.
  /// [tags] A collection of tags which should be applied to this resource.
  /// [targetRegions] One or more `target_region` blocks as documented below.
  SharedImageVersionArgs({
    String? blobUri,
    bool? deletionOfReplicatedLocationsEnabled,
    String? endOfLifeDate,
    bool? excludeFromLatest,
    required String galleryName,
    required String imageName,
    String? location,
    String? managedImageId,
    String? name,
    String? osDiskSnapshotId,
    String? replicationMode,
    required String resourceGroupName,
    String? storageAccountId,
    Map<String, String>? tags,
    required List<SharedImageVersionTargetRegion> targetRegions,
  }) :
      blobUri = pulumi.Input.asOptionalInput<String>(blobUri),
      deletionOfReplicatedLocationsEnabled = pulumi.Input.asOptionalInput<bool>(deletionOfReplicatedLocationsEnabled),
      endOfLifeDate = pulumi.Input.asOptionalInput<String>(endOfLifeDate),
      excludeFromLatest = pulumi.Input.asOptionalInput<bool>(excludeFromLatest),
      galleryName = pulumi.Input.asInput<String>(galleryName),
      imageName = pulumi.Input.asInput<String>(imageName),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedImageId = pulumi.Input.asOptionalInput<String>(managedImageId),
      name = pulumi.Input.asOptionalInput<String>(name),
      osDiskSnapshotId = pulumi.Input.asOptionalInput<String>(osDiskSnapshotId),
      replicationMode = pulumi.Input.asOptionalInput<String>(replicationMode),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetRegions = pulumi.Input.asInput<List<SharedImageVersionTargetRegion>>(targetRegions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobUri': ?blobUri,
      'deletionOfReplicatedLocationsEnabled': ?deletionOfReplicatedLocationsEnabled,
      'endOfLifeDate': ?endOfLifeDate,
      'excludeFromLatest': ?excludeFromLatest,
      'galleryName': galleryName,
      'imageName': imageName,
      'location': ?location,
      'managedImageId': ?managedImageId,
      'name': ?name,
      'osDiskSnapshotId': ?osDiskSnapshotId,
      'replicationMode': ?replicationMode,
      'resourceGroupName': resourceGroupName,
      'storageAccountId': ?storageAccountId,
      'tags': ?tags,
      'targetRegions': pulumi.Input.mapInputValue<List<SharedImageVersionTargetRegion>, List<Map<String, dynamic>>>(targetRegions, (value) => pulumi.Input.encodeList<SharedImageVersionTargetRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SharedImageVersionArgs.fromMap(Map<String, dynamic> map) {
    return SharedImageVersionArgs(
      blobUri: map['blobUri'] == null ? null : map['blobUri'] as String,
      deletionOfReplicatedLocationsEnabled: map['deletionOfReplicatedLocationsEnabled'] == null ? null : map['deletionOfReplicatedLocationsEnabled'] as bool,
      endOfLifeDate: map['endOfLifeDate'] == null ? null : map['endOfLifeDate'] as String,
      excludeFromLatest: map['excludeFromLatest'] == null ? null : map['excludeFromLatest'] as bool,
      galleryName: map['galleryName'] as String,
      imageName: map['imageName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managedImageId: map['managedImageId'] == null ? null : map['managedImageId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      osDiskSnapshotId: map['osDiskSnapshotId'] == null ? null : map['osDiskSnapshotId'] as String,
      replicationMode: map['replicationMode'] == null ? null : map['replicationMode'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetRegions: pulumi.Input.decodeList<SharedImageVersionTargetRegion>(map['targetRegions'], (value) => SharedImageVersionTargetRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

