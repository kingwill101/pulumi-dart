// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_caches_cache_event.dart';

class GetImageCachesCache {
  /// The id of container group.
  final pulumi.Input<String> containerGroupId;
  /// Image cache pulls image event information.
  final pulumi.Input<List<GetImageCachesCacheEvent>> events;
  /// The time of expired.
  final pulumi.Input<String> expireDateTime;
  /// The ID of the ECI Image Cache.
  final pulumi.Input<String> id;
  /// The id of the ECI Image Cache.
  final pulumi.Input<String> imageCacheId;
  /// The name of ECI Image Cache.
  final pulumi.Input<String> imageCacheName;
  /// The list of cached images.
  final pulumi.Input<List<String>> images;
  /// The progress of ECI Image Cache.
  final pulumi.Input<String> progress;
  /// The id of snapshot.
  final pulumi.Input<String> snapshotId;
  /// The status of ECI Image Cache.
  final pulumi.Input<String> status;

  /// Creates a new [GetImageCachesCache].
  /// [containerGroupId] The id of container group.
  /// [events] Image cache pulls image event information.
  /// [expireDateTime] The time of expired.
  /// [id] The ID of the ECI Image Cache.
  /// [imageCacheId] The id of the ECI Image Cache.
  /// [imageCacheName] The name of ECI Image Cache.
  /// [images] The list of cached images.
  /// [progress] The progress of ECI Image Cache.
  /// [snapshotId] The id of snapshot.
  /// [status] The status of ECI Image Cache.
  GetImageCachesCache({
    required this.containerGroupId,
    required this.events,
    required this.expireDateTime,
    required this.id,
    required this.imageCacheId,
    required this.imageCacheName,
    required this.images,
    required this.progress,
    required this.snapshotId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupId': containerGroupId,
      'events': pulumi.Input.mapInputValue<List<GetImageCachesCacheEvent>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<GetImageCachesCacheEvent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expireDateTime': expireDateTime,
      'id': id,
      'imageCacheId': imageCacheId,
      'imageCacheName': imageCacheName,
      'images': images,
      'progress': progress,
      'snapshotId': snapshotId,
      'status': status,
    };
  }

  factory GetImageCachesCache.fromMap(Map<String, dynamic> map) {
    return GetImageCachesCache(
      containerGroupId: (map['containerGroupId'] as String).input(),
      events: (pulumi.Input.decodeList<GetImageCachesCacheEvent>(map['events'], (value) => GetImageCachesCacheEvent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      expireDateTime: (map['expireDateTime'] as String).input(),
      id: (map['id'] as String).input(),
      imageCacheId: (map['imageCacheId'] as String).input(),
      imageCacheName: (map['imageCacheName'] as String).input(),
      images: ((map['images'] as List).cast<String>()).input(),
      progress: (map['progress'] as String).input(),
      snapshotId: (map['snapshotId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

