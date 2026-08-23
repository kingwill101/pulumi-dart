// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageOutputResourceContainer {
  /// Set of URIs for created containers.
  final pulumi.Input<List<String>>? imageUris;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ImageOutputResourceContainer].
  /// [imageUris] Set of URIs for created containers.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ImageOutputResourceContainer({
    this.imageUris,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUris': ?imageUris,
      'region': ?region,
    };
  }

  factory ImageOutputResourceContainer.fromMap(Map<String, dynamic> map) {
    return ImageOutputResourceContainer(
      imageUris: (() { final guardedValue = map['imageUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
