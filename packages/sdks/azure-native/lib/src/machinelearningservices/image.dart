// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the Image Specifications
class Image {
  /// Image reference
  final pulumi.Input<String>? reference;
  /// Type of the image. Possible values are: docker - For docker images. azureml - For AzureML images
  final pulumi.Input<String>? type;

  /// Creates a new [Image].
  /// [reference] Image reference
  /// [type] Type of the image. Possible values are: docker - For docker images. azureml - For AzureML images
  Image({
    this.reference,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': ?reference,
      'type': ?type,
    };
  }

  factory Image.fromMap(Map<String, dynamic> map) {
    return Image(
      reference: map['reference'] == null ? null : (map['reference']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

