enum GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem {
  fileTypeUnspecified("FILE_TYPE_UNSPECIFIED"),
  binaryFile("BINARY_FILE"),
  textFile("TEXT_FILE"),
  image("IMAGE"),
  word("WORD"),
  pdf("PDF"),
  avro("AVRO"),
  csv("CSV"),
  tsv("TSV"),
  powerpoint("POWERPOINT"),
  excel("EXCEL");

  const GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem(this.value);
  final String value;

  static GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem fromValue(String value) {
    for (final item in GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem value: $value');
  }
}

