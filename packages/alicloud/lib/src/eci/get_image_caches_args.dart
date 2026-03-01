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
  GetImageCachesArgs({
    List<String>? ids,
    String? image,
    String? imageCacheName,
    String? nameRegex,
    String? outputFile,
    String? snapshotId,
    String? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      image = pulumi.Input.asOptionalInput<String>(image),
      imageCacheName = pulumi.Input.asOptionalInput<String>(imageCacheName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      image: map['image'] == null ? null : map['image'] as String,
      imageCacheName: map['imageCacheName'] == null ? null : map['imageCacheName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

