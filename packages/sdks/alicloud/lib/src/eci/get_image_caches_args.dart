// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eci_get_image_caches_get_image_caches_args_doc}
/// Arguments for getImageCaches.
/// {@endtemplate}
/// {@macro pulumi_eci_get_image_caches_get_image_caches_args_doc}
class GetImageCachesArgs {
  /// A list ids of ECI Image Cache.
  final pulumi.Input<List<String>>? ids;
  /// Find the mirror cache containing it according to the image name.
  final pulumi.Input<String>? image;
  /// The name of ECI Image Cache.
  final pulumi.Input<String>? imageCacheName;
  /// A regex string to filter results by the image cache name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The id of snapshot.
  final pulumi.Input<String>? snapshotId;
  /// The status of ECI Image Cache.
  final pulumi.Input<String>? status;

  /// Creates a new [GetImageCachesArgs].
  /// [ids] A list ids of ECI Image Cache.
  /// [image] Find the mirror cache containing it according to the image name.
  /// [imageCacheName] The name of ECI Image Cache.
  /// [nameRegex] A regex string to filter results by the image cache name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [snapshotId] The id of snapshot.
  /// [status] The status of ECI Image Cache.
  const GetImageCachesArgs({
    this.ids,
    this.image,
    this.imageCacheName,
    this.nameRegex,
    this.outputFile,
    this.snapshotId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'image': ?image,
      'imageCacheName': ?imageCacheName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'snapshotId': ?snapshotId,
      'status': ?status,
    };
  }

  factory GetImageCachesArgs.fromMap(Map<String, dynamic> map) {
    return GetImageCachesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageCacheName: (() { final guardedValue = map['imageCacheName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

