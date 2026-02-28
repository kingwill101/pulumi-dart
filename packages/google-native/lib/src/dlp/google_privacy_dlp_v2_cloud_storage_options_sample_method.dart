enum GooglePrivacyDlpV2CloudStorageOptionsSampleMethod {
  sampleMethodUnspecified("SAMPLE_METHOD_UNSPECIFIED"),
  top("TOP"),
  randomStart("RANDOM_START");

  const GooglePrivacyDlpV2CloudStorageOptionsSampleMethod(this.value);
  final String value;

  static GooglePrivacyDlpV2CloudStorageOptionsSampleMethod fromValue(
      String value) {
    for (final item
        in GooglePrivacyDlpV2CloudStorageOptionsSampleMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GooglePrivacyDlpV2CloudStorageOptionsSampleMethod value: $value');
  }
}
