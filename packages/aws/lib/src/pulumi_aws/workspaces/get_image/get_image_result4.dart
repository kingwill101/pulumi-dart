// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getImage.
class GetImageResult4 {
  /// The description of the image.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String imageId;

  /// The name of the image.
  final String name;
  final String operatingSystemType;
  final String region;

  /// Specifies whether the image is running on dedicated hardware. When Bring Your Own License (BYOL) is enabled, this value is set to DEDICATED. For more information, see [Bring Your Own Windows Desktop Images](https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).
  final String requiredTenancy;

  /// The status of the image.
  final String state;

  GetImageResult4({
    required this.description,
    required this.id,
    required this.imageId,
    required this.name,
    required this.operatingSystemType,
    required this.region,
    required this.requiredTenancy,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['id'] = id;
    map['imageId'] = imageId;
    map['name'] = name;
    map['operatingSystemType'] = operatingSystemType;
    map['region'] = region;
    map['requiredTenancy'] = requiredTenancy;
    map['state'] = state;
    return map;
  }

  factory GetImageResult4.fromMap(Map<String, dynamic> map) {
    return GetImageResult4(
      description: map['description'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      name: map['name'] as String,
      operatingSystemType: map['operatingSystemType'] as String,
      region: map['region'] as String,
      requiredTenancy: map['requiredTenancy'] as String,
      state: map['state'] as String,
    );
  }
}
