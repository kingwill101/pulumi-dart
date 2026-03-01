// ignore_for_file: unused_element, unnecessary_cast


class GetServerCustomImagesImage {
  /// The first ID of the resource.
  final String customImageId;
  /// The name of the resource.
  final String customImageName;
  /// Image description information.
  final String description;
  /// The ID of the Custom Image.
  final String id;
  /// The type of operating system used by the Mirror. Valid values: `Linux`, `Windows`.
  final String platform;

  /// Creates a new [GetServerCustomImagesImage].
  /// [customImageId] The first ID of the resource.
  /// [customImageName] The name of the resource.
  /// [description] Image description information.
  /// [id] The ID of the Custom Image.
  /// [platform] The type of operating system used by the Mirror. Valid values: `Linux`, `Windows`.
  GetServerCustomImagesImage({
    required this.customImageId,
    required this.customImageName,
    required this.description,
    required this.id,
    required this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImageId': customImageId,
      'customImageName': customImageName,
      'description': description,
      'id': id,
      'platform': platform,
    };
  }

  factory GetServerCustomImagesImage.fromMap(Map<String, dynamic> map) {
    return GetServerCustomImagesImage(
      customImageId: map['customImageId'] as String,
      customImageName: map['customImageName'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      platform: map['platform'] as String,
    );
  }
}

