// ignore_for_file: unused_element, unnecessary_cast

import 'shared_image_gallery_sharing_community_gallery.dart';

class SharedImageGallerySharing {
  /// A `community_gallery` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `community_gallery` must be set when `permission` is set to `Community`.
  final SharedImageGallerySharingCommunityGallery? communityGallery;
  /// The permission of the Shared Image Gallery when sharing. Possible values are `Community`, `Groups` and `Private`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This requires that the Preview Feature `Microsoft.Compute/CommunityGalleries` is enabled, see [the documentation](https://learn.microsoft.com/azure/virtual-machines/share-gallery-community?tabs=cli) for more information.
  final String permission;

  /// Creates a new [SharedImageGallerySharing].
  /// [communityGallery] A `community_gallery` block as defined below. Changing this forces a new resource to be created.
  /// [permission] The permission of the Shared Image Gallery when sharing. Possible values are `Community`, `Groups` and `Private`. Changing this forces a new resource to be created.
  SharedImageGallerySharing({
    this.communityGallery,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityGallery': ?communityGallery == null ? null : communityGallery!.toMap(),
      'permission': permission,
    };
  }

  factory SharedImageGallerySharing.fromMap(Map<String, dynamic> map) {
    return SharedImageGallerySharing(
      communityGallery: map['communityGallery'] == null ? null : SharedImageGallerySharingCommunityGallery.fromMap((map['communityGallery'] as Map).cast<String, dynamic>()),
      permission: map['permission'] as String,
    );
  }
}

