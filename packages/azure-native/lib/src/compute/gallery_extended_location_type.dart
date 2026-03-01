/// It is type of the extended location.
enum GalleryExtendedLocationType {
  edgeZone("EdgeZone"),
  unknown("Unknown");

  const GalleryExtendedLocationType(this.value);
  final String value;

  static GalleryExtendedLocationType fromValue(String value) {
    for (final item in GalleryExtendedLocationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GalleryExtendedLocationType value: $value');
  }
}

