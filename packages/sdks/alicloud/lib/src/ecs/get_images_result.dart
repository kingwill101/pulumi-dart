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
      'images': pulumi.Input.encodeList<GetImagesImage, Map<String, dynamic>>(
        images,
        (value) => value.toMap(),
      ),
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
      actionType: (() {
        final guardedValue = map['actionType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      architecture: (() {
        final guardedValue = map['architecture'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      imageFamily: (() {
        final guardedValue = map['imageFamily'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      imageId: (() {
        final guardedValue = map['imageId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      imageName: (() {
        final guardedValue = map['imageName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      imageOwnerId: (() {
        final guardedValue = map['imageOwnerId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      images: pulumi.Input.decodeList<GetImagesImage>(
        map['images']!,
        (value) =>
            GetImagesImage.fromMap((value as Map).cast<String, dynamic>()),
      ),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      isSupportCloudInit: (() {
        final guardedValue = map['isSupportCloudInit'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      isSupportIoOptimized: (() {
        final guardedValue = map['isSupportIoOptimized'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      mostRecent: (() {
        final guardedValue = map['mostRecent'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      osType: (() {
        final guardedValue = map['osType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      owners: (() {
        final guardedValue = map['owners'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      snapshotId: (() {
        final guardedValue = map['snapshotId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      usage: (() {
        final guardedValue = map['usage'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
