// ignore_for_file: unused_element, unnecessary_cast

import 'table_import_table_input_format_options.dart';
import 'table_import_table_s3_bucket_source.dart';

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

  /// Creates a new [TableImportTable].
  /// [inputCompressionType] Type of compression to be used on the input coming from the imported table.
  /// [inputFormat] The format of the source data.
  /// [inputFormatOptions] Describe the format options for the data that was imported into the target table.
  /// [s3BucketSource] Values for the S3 bucket the source file is imported from.
  TableImportTable({
    this.inputCompressionType,
    required this.inputFormat,
    this.inputFormatOptions,
    required this.s3BucketSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputCompressionType': ?inputCompressionType,
      'inputFormat': inputFormat,
      'inputFormatOptions': ?inputFormatOptions == null ? null : inputFormatOptions!.toMap(),
      's3BucketSource': s3BucketSource.toMap(),
    };
  }

  factory TableImportTable.fromMap(Map<String, dynamic> map) {
    return TableImportTable(
      inputCompressionType: map['inputCompressionType'] == null ? null : map['inputCompressionType'] as String,
      inputFormat: map['inputFormat'] as String,
      inputFormatOptions: map['inputFormatOptions'] == null ? null : TableImportTableInputFormatOptions.fromMap((map['inputFormatOptions'] as Map).cast<String, dynamic>()),
      s3BucketSource: TableImportTableS3BucketSource.fromMap((map['s3BucketSource'] as Map).cast<String, dynamic>()),
    );
  }
}

