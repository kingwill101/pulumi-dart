// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_shared_image_versions_image_target_region.dart';

class GetSharedImageVersionsImage {
  /// Is this Image Version excluded from the `latest` filter?
  final bool excludeFromLatest;
  /// The ID of this Shared Image Version.
  final String id;
  /// The supported Azure location where the Shared Image Gallery exists.
  final String location;
  /// The ID of the Managed Image which was the source of this Shared Image Version.
  final String managedImageId;
  /// The Azure Region in which this Image Version exists.
  final String name;
  /// A mapping of tags assigned to the Shared Image.
  final Map<String, String> tags;
  /// One or more `target_region` blocks as documented below.
  final List<GetSharedImageVersionsImageTargetRegion> targetRegions;

  /// Creates a new [GetSharedImageVersionsImage].
  /// [excludeFromLatest] Is this Image Version excluded from the `latest` filter?
  /// [id] The ID of this Shared Image Version.
  /// [location] The supported Azure location where the Shared Image Gallery exists.
  /// [managedImageId] The ID of the Managed Image which was the source of this Shared Image Version.
  /// [name] The Azure Region in which this Image Version exists.
  /// [tags] A mapping of tags assigned to the Shared Image.
  /// [targetRegions] One or more `target_region` blocks as documented below.
  GetSharedImageVersionsImage({
    required this.excludeFromLatest,
    required this.id,
    required this.location,
    required this.managedImageId,
    required this.name,
    required this.tags,
    required this.targetRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeFromLatest': excludeFromLatest,
      'id': id,
      'location': location,
      'managedImageId': managedImageId,
      'name': name,
      'tags': tags,
      'targetRegions': pulumi.Input.encodeList<GetSharedImageVersionsImageTargetRegion, Map<String, dynamic>>(targetRegions, (value) => value.toMap()),
    };
  }

  factory GetSharedImageVersionsImage.fromMap(Map<String, dynamic> map) {
    return GetSharedImageVersionsImage(
      excludeFromLatest: map['excludeFromLatest'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      managedImageId: map['managedImageId'] as String,
      name: map['name'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      targetRegions: pulumi.Input.decodeList<GetSharedImageVersionsImageTargetRegion>(map['targetRegions'], (value) => GetSharedImageVersionsImageTargetRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

