/// The import job format.
enum InlinePayloadInfoFormat {
  importJobFormatUnspecified("IMPORT_JOB_FORMAT_UNSPECIFIED"),
  importJobFormatCmdb("IMPORT_JOB_FORMAT_CMDB"),
  importJobFormatRvtoolsXlsx("IMPORT_JOB_FORMAT_RVTOOLS_XLSX"),
  importJobFormatRvtoolsCsv("IMPORT_JOB_FORMAT_RVTOOLS_CSV"),
  importJobFormatExportedAwsCsv("IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV"),
  importJobFormatExportedAzureCsv("IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV"),
  importJobFormatManualCsv("IMPORT_JOB_FORMAT_MANUAL_CSV");

  const InlinePayloadInfoFormat(this.value);
  final String value;

  static InlinePayloadInfoFormat fromValue(String value) {
    for (final item in InlinePayloadInfoFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InlinePayloadInfoFormat value: $value');
  }
}
