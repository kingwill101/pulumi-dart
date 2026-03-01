// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image_image_sharing.dart';
import 'get_images_image_replication.dart';

class GetImagesImage {
  /// The capabilities of this Image.
  final List<String> capabilities;
  /// When this Image was created.
  final String created;
  /// The name of the User who created this Image, or "linode" for official Images.
  final String createdBy;
  /// Whether or not this Image is deprecated. Will only be true for deprecated public Images.
  final bool deprecated;
  /// A detailed description of this Image.
  final String description;
  /// Only Images created automatically (from a deleted Linode; type=automatic) will expire.
  final String expiry;
  /// The unique ID of this Image.  The ID of private images begin with `private/` followed by the numeric identifier of the private image, for example `private/12345`.
  final String id;
  /// Details about image sharing, including who the image is shared with and by. (**Note: v4beta only and may not currently be available to all users.**)
  final GetImagesImageImageSharing imageSharing;
  /// True if the Image is public.
  final bool isPublic;
  /// True if the Image is shared. (**Note: v4beta only and may not currently be available to all users.**)
  final bool isShared;
  /// A short description of the Image.
  final String label;
  /// A list of image replication regions and corresponding status.
  final List<GetImagesImageReplication> replications;
  /// The minimum size this Image needs to deploy. Size is in MB. example: 2500
  final int size;
  /// The status of an image replica.
  final String status;
  /// A list of customized tags.
  final List<String> tags;
  /// The total size of the image in all available regions.
  final int totalSize;
  /// How the Image was created. Manual Images can be created at any time. "Automatic" Images are created automatically from a deleted Linode. (`manual`, `automatic`)
  final String type;
  /// The upstream distribution vendor. `None` for private Images.
  final String vendor;

  /// Creates a new [GetImagesImage].
  /// [capabilities] The capabilities of this Image.
  /// [created] When this Image was created.
  /// [createdBy] The name of the User who created this Image, or "linode" for official Images.
  /// [deprecated] Whether or not this Image is deprecated. Will only be true for deprecated public Images.
  /// [description] A detailed description of this Image.
  /// [expiry] Only Images created automatically (from a deleted Linode; type=automatic) will expire.
  /// [id] The unique ID of this Image.  The ID of private images begin with `private/` followed by the numeric identifier of the private image, for example `private/12345`.
  /// [imageSharing] Details about image sharing, including who the image is shared with and by. (**Note: v4beta only and may not currently be available to all users.**)
  /// [isPublic] True if the Image is public.
  /// [isShared] True if the Image is shared. (**Note: v4beta only and may not currently be available to all users.**)
  /// [label] A short description of the Image.
  /// [replications] A list of image replication regions and corresponding status.
  /// [size] The minimum size this Image needs to deploy. Size is in MB. example: 2500
  /// [status] The status of an image replica.
  /// [tags] A list of customized tags.
  /// [totalSize] The total size of the image in all available regions.
  /// [type] How the Image was created. Manual Images can be created at any time. "Automatic" Images are created automatically from a deleted Linode. (`manual`, `automatic`)
  /// [vendor] The upstream distribution vendor. `None` for private Images.
  GetImagesImage({
    required this.capabilities,
    required this.created,
    required this.createdBy,
    required this.deprecated,
    required this.description,
    required this.expiry,
    required this.id,
    required this.imageSharing,
    required this.isPublic,
    required this.isShared,
    required this.label,
    required this.replications,
    required this.size,
    required this.status,
    required this.tags,
    required this.totalSize,
    required this.type,
    required this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'created': created,
      'createdBy': createdBy,
      'deprecated': deprecated,
      'description': description,
      'expiry': expiry,
      'id': id,
      'imageSharing': imageSharing.toMap(),
      'isPublic': isPublic,
      'isShared': isShared,
      'label': label,
      'replications': pulumi.Input.encodeList<GetImagesImageReplication, Map<String, dynamic>>(replications, (value) => value.toMap()),
      'size': size,
      'status': status,
      'tags': tags,
      'totalSize': totalSize,
      'type': type,
      'vendor': vendor,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      capabilities: (map['capabilities'] as List).cast<String>(),
      created: map['created'] as String,
      createdBy: map['createdBy'] as String,
      deprecated: map['deprecated'] as bool,
      description: map['description'] as String,
      expiry: map['expiry'] as String,
      id: map['id'] as String,
      imageSharing: GetImagesImageImageSharing.fromMap((map['imageSharing'] as Map).cast<String, dynamic>()),
      isPublic: map['isPublic'] as bool,
      isShared: map['isShared'] as bool,
      label: map['label'] as String,
      replications: pulumi.Input.decodeList<GetImagesImageReplication>(map['replications'], (value) => GetImagesImageReplication.fromMap((value as Map).cast<String, dynamic>())),
      size: map['size'] as int,
      status: map['status'] as String,
      tags: (map['tags'] as List).cast<String>(),
      totalSize: map['totalSize'] as int,
      type: map['type'] as String,
      vendor: map['vendor'] as String,
    );
  }
}

