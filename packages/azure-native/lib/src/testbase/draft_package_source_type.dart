/// The source type.
enum DraftPackageSourceType {
  valueNative("Native"),
  valueIntuneWin("IntuneWin"),
  valueTestBasePackage("TestBasePackage"),
  valueGalleryApp("GalleryApp"),
  valueIntuneEnrollment("IntuneEnrollment");

  const DraftPackageSourceType(this.value);
  final String value;

  static DraftPackageSourceType fromValue(String value) {
    for (final item in DraftPackageSourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DraftPackageSourceType value: $value');
  }
}

