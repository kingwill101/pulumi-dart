// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerCustomImagesImage {
  /// The first ID of the resource.
  final pulumi.Input<String> customImageId;

  /// The name of the resource.
  final pulumi.Input<String> customImageName;

  /// Image description information.
  final pulumi.Input<String> description;

  /// The ID of the Custom Image.
  final pulumi.Input<String> id;

  /// The type of operating system used by the Mirror. Valid values: `Linux`, `Windows`.
  final pulumi.Input<String> platform;

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
      customImageId: pulumi.Input.fromValue(map['customImageId'] as String),
      customImageName: pulumi.Input.fromValue(map['customImageName'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      platform: pulumi.Input.fromValue(map['platform'] as String),
    );
  }
}
