// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the extended location.
class GalleryExtendedLocation {
  final pulumi.Input<String>? name;
  /// It is type of the extended location.
  final pulumi.Input<String>? type;

  /// Creates a new [GalleryExtendedLocation].
  /// [name] Optional.
  /// [type] It is type of the extended location.
  const GalleryExtendedLocation({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory GalleryExtendedLocation.fromMap(Map<String, dynamic> map) {
    return GalleryExtendedLocation(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

