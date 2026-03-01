/// The storage media tier of the file share.
enum MediaTier {
  sSD("SSD");

  const MediaTier(this.value);
  final String value;

  static MediaTier fromValue(String value) {
    for (final item in MediaTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MediaTier value: $value');
  }
}

