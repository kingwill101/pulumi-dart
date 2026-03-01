// ignore_for_file: unused_element, unnecessary_cast

import 'get_images_image_image_sharing_shared_by.dart';
import 'get_images_image_image_sharing_shared_with.dart';

class GetImagesImageImageSharing {
  /// Details about who the image is shared by.
  final GetImagesImageImageSharingSharedBy sharedBy;
  /// Details about who the image is shared with.
  final GetImagesImageImageSharingSharedWith sharedWith;

  /// Creates a new [GetImagesImageImageSharing].
  /// [sharedBy] Details about who the image is shared by.
  /// [sharedWith] Details about who the image is shared with.
  GetImagesImageImageSharing({
    required this.sharedBy,
    required this.sharedWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharedBy': sharedBy.toMap(),
      'sharedWith': sharedWith.toMap(),
    };
  }

  factory GetImagesImageImageSharing.fromMap(Map<String, dynamic> map) {
    return GetImagesImageImageSharing(
      sharedBy: GetImagesImageImageSharingSharedBy.fromMap((map['sharedBy'] as Map).cast<String, dynamic>()),
      sharedWith: GetImagesImageImageSharingSharedWith.fromMap((map['sharedWith'] as Map).cast<String, dynamic>()),
    );
  }
}

