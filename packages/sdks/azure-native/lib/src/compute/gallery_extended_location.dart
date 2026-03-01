// ignore_for_file: unused_element, unnecessary_cast


/// The name of the extended location.
class GalleryExtendedLocation {
  final String? name;
  /// It is type of the extended location.
  final String? type;

  /// Creates a new [GalleryExtendedLocation].
  /// [name] Optional.
  /// [type] It is type of the extended location.
  GalleryExtendedLocation({
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
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

