// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image creation error details
class ImageCreationErrorDetailsResponse {
  /// An identifier for the error.
  final pulumi.Input<String?>? code;
  /// A message describing the error.
  final pulumi.Input<String?>? message;

  /// Creates a new [ImageCreationErrorDetailsResponse].
  /// [code] An identifier for the error.
  /// [message] A message describing the error.
  const ImageCreationErrorDetailsResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory ImageCreationErrorDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ImageCreationErrorDetailsResponse(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
