/// Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the `force` parameter is ignored.
enum GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisposition {
  writeDispositionUnspecified("WRITE_DISPOSITION_UNSPECIFIED"),
  writeEmpty("WRITE_EMPTY"),
  writeTruncate("WRITE_TRUNCATE"),
  writeAppend("WRITE_APPEND");

  const GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisposition(
      this.value);
  final String value;

  static GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisposition
      fromValue(String value) {
    for (final item
        in GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisposition
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisposition value: $value');
  }
}
