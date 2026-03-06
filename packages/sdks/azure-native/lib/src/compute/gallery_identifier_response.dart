// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the gallery unique name.
class GalleryIdentifierResponse {
  /// The unique name of the Shared Image Gallery. This name is generated automatically by Azure.
  final pulumi.Input<String> uniqueName;

  /// Creates a new [GalleryIdentifierResponse].
  /// [uniqueName] The unique name of the Shared Image Gallery. This name is generated automatically by Azure.
  const GalleryIdentifierResponse({
    required this.uniqueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uniqueName': uniqueName,
    };
  }

  factory GalleryIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return GalleryIdentifierResponse(
      uniqueName: pulumi.Input.fromValue(map['uniqueName'] as String),
    );
  }
}

