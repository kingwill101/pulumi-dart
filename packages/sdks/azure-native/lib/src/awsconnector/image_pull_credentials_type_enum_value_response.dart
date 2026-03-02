// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ImagePullCredentialsTypeEnumValue
class ImagePullCredentialsTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ImagePullCredentialsTypeEnumValueResponse].
  /// [value] Property value
  ImagePullCredentialsTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ImagePullCredentialsTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ImagePullCredentialsTypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

