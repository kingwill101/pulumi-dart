// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image.dart';

/// Result data returned by getImages.
class GetImagesResult {
  final String? actionType;
  /// The platform type of the image system: i386 or x86_64.
  final String? architecture;
  final bool? dryRun;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of image IDs.
  final List<String> ids;
  final String? imageFamily;
  final String? imageId;
  final String? imageName;
  final String? imageOwnerId;
  /// A `disk_device_mappings` block as defined below. A list of images.
  final List<GetImagesImage> images;
  final String? instanceType;
  final bool? isSupportCloudInit;
  final bool? isSupportIoOptimized;
  final bool? mostRecent;
  final String? nameRegex;
  final String? osType;
  final String? outputFile;
  final String? owners;
  final String? resourceGroupId;
  /// The snapshot ID.
  final String? snapshotId;
  /// The status of the image. Possible values: `UnAvailable`, `Available`, `Creating` and `CreateFailed`.
  final String? status;
  final Map<String, String>? tags;
  final String? usage;

  /// Creates a new [GetImagesResult].
  /// [actionType] Optional.
  /// [architecture] The platform type of the image system: i386 or x86_64.
  /// [dryRun] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of image IDs.
  /// [imageFamily] Optional.
  /// [imageId] Optional.
  /// [imageName] Optional.
  /// [imageOwnerId] Optional.
  /// [images] A `disk_device_mappings` block as defined below. A list of images.
  /// [instanceType] Optional.
  /// [isSupportCloudInit] Optional.
  /// [isSupportIoOptimized] Optional.
  /// [mostRecent] Optional.
  /// [nameRegex] Optional.
  /// [osType] Optional.
  /// [outputFile] Optional.
  /// [owners] Optional.
  /// [resourceGroupId] Optional.
  /// [snapshotId] The snapshot ID.
  /// [status] The status of the image. Possible values: `UnAvailable`, `Available`, `Creating` and `CreateFailed`.
  /// [tags] Optional.
  /// [usage] Optional.
  GetImagesResult({
    this.actionType,
    this.architecture,
    this.dryRun,
    required this.id,
    required this.ids,
    this.imageFamily,
    this.imageId,
    this.imageName,
    this.imageOwnerId,
    required this.images,
    this.instanceType,
    this.isSupportCloudInit,
    this.isSupportIoOptimized,
    this.mostRecent,
    this.nameRegex,
    this.osType,
    this.outputFile,
    this.owners,
    this.resourceGroupId,
    this.snapshotId,
    this.status,
    this.tags,
    this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': ?actionType,
      'architecture': ?architecture,
      'dryRun': ?dryRun,
      'id': id,
      'ids': ids,
      'imageFamily': ?imageFamily,
      'imageId': ?imageId,
      'imageName': ?imageName,
      'imageOwnerId': ?imageOwnerId,
      'images': pulumi.Input.encodeList<GetImagesImage, Map<String, dynamic>>(images, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'isSupportCloudInit': ?isSupportCloudInit,
      'isSupportIoOptimized': ?isSupportIoOptimized,
      'mostRecent': ?mostRecent,
      'nameRegex': ?nameRegex,
      'osType': ?osType,
      'outputFile': ?outputFile,
      'owners': ?owners,
      'resourceGroupId': ?resourceGroupId,
      'snapshotId': ?snapshotId,
      'status': ?status,
      'tags': ?tags,
      'usage': ?usage,
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      actionType: map['actionType'] == null ? null : map['actionType']! as String,
      architecture: map['architecture'] == null ? null : map['architecture']! as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      imageFamily: map['imageFamily'] == null ? null : map['imageFamily']! as String,
      imageId: map['imageId'] == null ? null : map['imageId']! as String,
      imageName: map['imageName'] == null ? null : map['imageName']! as String,
      imageOwnerId: map['imageOwnerId'] == null ? null : map['imageOwnerId']! as String,
      images: pulumi.Input.decodeList<GetImagesImage>(map['images'], (value) => GetImagesImage.fromMap((value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] == null ? null : map['instanceType']! as String,
      isSupportCloudInit: map['isSupportCloudInit'] == null ? null : map['isSupportCloudInit']! as bool,
      isSupportIoOptimized: map['isSupportIoOptimized'] == null ? null : map['isSupportIoOptimized']! as bool,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent']! as bool,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      osType: map['osType'] == null ? null : map['osType']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      owners: map['owners'] == null ? null : map['owners']! as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      usage: map['usage'] == null ? null : map['usage']! as String,
    );
  }
}

