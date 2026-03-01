// ignore_for_file: unused_element, unnecessary_cast


class ImageImageSharingSharedBy {
  /// The sharegroup_id from the im_ImageShare row.
  final int? sharegroupId;
  /// The label from the associated im_ImageShareGroup row.
  final String? sharegroupLabel;
  /// The sharegroup_uuid from the im_ImageShare row.
  final String? sharegroupUuid;
  /// The image id of the base image (will only be shown to producers, will be null for consumers).
  final String? sourceImageId;

  /// Creates a new [ImageImageSharingSharedBy].
  /// [sharegroupId] The sharegroup_id from the im_ImageShare row.
  /// [sharegroupLabel] The label from the associated im_ImageShareGroup row.
  /// [sharegroupUuid] The sharegroup_uuid from the im_ImageShare row.
  /// [sourceImageId] The image id of the base image (will only be shown to producers, will be null for consumers).
  ImageImageSharingSharedBy({
    this.sharegroupId,
    this.sharegroupLabel,
    this.sharegroupUuid,
    this.sourceImageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharegroupId': ?sharegroupId,
      'sharegroupLabel': ?sharegroupLabel,
      'sharegroupUuid': ?sharegroupUuid,
      'sourceImageId': ?sourceImageId,
    };
  }

  factory ImageImageSharingSharedBy.fromMap(Map<String, dynamic> map) {
    return ImageImageSharingSharedBy(
      sharegroupId: map['sharegroupId'] == null ? null : map['sharegroupId'] as int,
      sharegroupLabel: map['sharegroupLabel'] == null ? null : map['sharegroupLabel'] as String,
      sharegroupUuid: map['sharegroupUuid'] == null ? null : map['sharegroupUuid'] as String,
      sourceImageId: map['sourceImageId'] == null ? null : map['sourceImageId'] as String,
    );
  }
}

