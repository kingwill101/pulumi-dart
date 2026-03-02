// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the extended location.
class GalleryExtendedLocationResponse {
  final pulumi.Input<String>? name;
  /// It is type of the extended location.
  final pulumi.Input<String>? type;

  /// Creates a new [GalleryExtendedLocationResponse].
  /// [name] Optional.
  /// [type] It is type of the extended location.
  GalleryExtendedLocationResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory GalleryExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return GalleryExtendedLocationResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

