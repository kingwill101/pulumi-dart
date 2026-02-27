// ignore_for_file: unused_element, unnecessary_cast

import '../table_import_table_input_format_options/table_import_table_input_format_options.dart';
import '../table_import_table_s3_bucket_source/table_import_table_s3_bucket_source.dart';

class TableImportTable {
  /// Type of compression to be used on the input coming from the imported table.
  /// Valid values are `GZIP`, `ZSTD` and `NONE`.
  final String? inputCompressionType;

  /// The format of the source data.
  /// Valid values are `CSV`, `DYNAMODB_JSON`, and `ION`.
  final String inputFormat;

  /// Describe the format options for the data that was imported into the target table.
  /// There is one value, `csv`.
  /// See below.
  final TableImportTableInputFormatOptions? inputFormatOptions;

  /// Values for the S3 bucket the source file is imported from.
  /// See below.
  final TableImportTableS3BucketSource s3BucketSource;

  TableImportTable({
    this.inputCompressionType,
    required this.inputFormat,
    this.inputFormatOptions,
    required this.s3BucketSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputCompressionTypeValue = inputCompressionType;
    if (inputCompressionTypeValue != null) {
      map['inputCompressionType'] = inputCompressionTypeValue;
    }
    map['inputFormat'] = inputFormat;
    final inputFormatOptionsValue = inputFormatOptions;
    if (inputFormatOptionsValue != null) {
      map['inputFormatOptions'] = inputFormatOptionsValue.toMap();
    }
    map['s3BucketSource'] = s3BucketSource.toMap();
    return map;
  }

  factory TableImportTable.fromMap(Map<String, dynamic> map) {
    return TableImportTable(
      inputCompressionType: map['inputCompressionType'] == null
          ? null
          : map['inputCompressionType'] as String,
      inputFormat: map['inputFormat'] as String,
      inputFormatOptions: map['inputFormatOptions'] == null
          ? null
          : TableImportTableInputFormatOptions.fromMap(
              (map['inputFormatOptions'] as Map).cast<String, dynamic>()),
      s3BucketSource: TableImportTableS3BucketSource.fromMap(
          (map['s3BucketSource'] as Map).cast<String, dynamic>()),
    );
  }
}
