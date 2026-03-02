// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_caches_cache.dart';

/// Result data returned by getImageCaches.
class GetImageCachesResult {
  /// A list of caches. Each element contains the following attributes:
  final List<GetImageCachesCache> caches;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list ids of ECI Image Cache.
  final List<String> ids;
  final String? image;
  /// The name of the ECI Image Cache.
  final String? imageCacheName;
  final String? nameRegex;
  /// A list of ECI Image Cache names.
  final List<String> names;
  final String? outputFile;
  /// The id of snapshot.
  final String? snapshotId;
  /// The status of ECI Image Cache.
  final String? status;

  /// Creates a new [GetImageCachesResult].
  /// [caches] A list of caches. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list ids of ECI Image Cache.
  /// [image] Optional.
  /// [imageCacheName] The name of the ECI Image Cache.
  /// [nameRegex] Optional.
  /// [names] A list of ECI Image Cache names.
  /// [outputFile] Optional.
  /// [snapshotId] The id of snapshot.
  /// [status] The status of ECI Image Cache.
  GetImageCachesResult({
    required this.caches,
    required this.id,
    required this.ids,
    this.image,
    this.imageCacheName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.snapshotId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caches': pulumi.Input.encodeList<GetImageCachesCache, Map<String, dynamic>>(caches, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'image': ?image,
      'imageCacheName': ?imageCacheName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'snapshotId': ?snapshotId,
      'status': ?status,
    };
  }

  factory GetImageCachesResult.fromMap(Map<String, dynamic> map) {
    return GetImageCachesResult(
      caches: pulumi.Input.decodeList<GetImageCachesCache>(map['caches'], (value) => GetImageCachesCache.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      image: map['image'] == null ? null : map['image']! as String,
      imageCacheName: map['imageCacheName'] == null ? null : map['imageCacheName']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

