// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a Gallery Image.
class ImageArmReference {
  /// The Azure Resource ID for an image resource used by the virtual machine instance.
  final pulumi.Input<String>? id;

  /// Creates a new [ImageArmReference].
  /// [id] The Azure Resource ID for an image resource used by the virtual machine instance.
  ImageArmReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ImageArmReference.fromMap(Map<String, dynamic> map) {
    return ImageArmReference(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

