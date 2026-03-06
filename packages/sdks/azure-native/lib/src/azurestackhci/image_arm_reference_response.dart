// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a Gallery Image.
class ImageArmReferenceResponse {
  /// The Azure Resource ID for an image resource used by the virtual machine instance.
  final pulumi.Input<String>? id;

  /// Creates a new [ImageArmReferenceResponse].
  /// [id] The Azure Resource ID for an image resource used by the virtual machine instance.
  const ImageArmReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ImageArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ImageArmReferenceResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

