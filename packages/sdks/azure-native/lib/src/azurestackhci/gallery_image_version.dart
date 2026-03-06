// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies information about the gallery image version that you want to create or update.
class GalleryImageVersion {
  /// This is the version of the gallery image.
  final pulumi.Input<String>? name;

  /// Creates a new [GalleryImageVersion].
  /// [name] This is the version of the gallery image.
  const GalleryImageVersion({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory GalleryImageVersion.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersion(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

