/// It is type of the extended location.
enum GalleryExtendedLocationType {
  edgeZone("EdgeZone"),
  unknown("Unknown");

  const GalleryExtendedLocationType(this.wireValue);
  final String wireValue;

  static GalleryExtendedLocationType fromValue(String value) {
    for (final item in GalleryExtendedLocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GalleryExtendedLocationType value: $value');
  }
}
