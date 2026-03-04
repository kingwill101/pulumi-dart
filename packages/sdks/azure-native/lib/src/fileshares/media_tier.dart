/// The storage media tier of the file share.
enum MediaTier {
  sSD("SSD");

  const MediaTier(this.wireValue);
  final String wireValue;

  static MediaTier fromValue(String value) {
    for (final item in MediaTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MediaTier value: $value');
  }
}
