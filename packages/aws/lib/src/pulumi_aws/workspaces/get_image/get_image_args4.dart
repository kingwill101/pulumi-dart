// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getImage.
class GetImageArgs4 {
  /// ID of the image.
  final Input<String> imageId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetImageArgs4({
    required this.imageId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageId'] = imageId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetImageArgs4.fromMap(Map<String, dynamic> map) {
    return GetImageArgs4(
      imageId: Input.asInput<String>(map['imageId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
