enum GooglePrivacyDlpV2BigQueryOptionsSampleMethod {
  sampleMethodUnspecified("SAMPLE_METHOD_UNSPECIFIED"),
  top("TOP"),
  randomStart("RANDOM_START");

  const GooglePrivacyDlpV2BigQueryOptionsSampleMethod(this.value);
  final String value;

  static GooglePrivacyDlpV2BigQueryOptionsSampleMethod fromValue(String value) {
    for (final item in GooglePrivacyDlpV2BigQueryOptionsSampleMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GooglePrivacyDlpV2BigQueryOptionsSampleMethod value: $value');
  }
}
