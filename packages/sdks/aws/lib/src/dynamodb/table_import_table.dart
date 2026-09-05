// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_import_table_input_format_options.dart';
import 'table_import_table_s3_bucket_source.dart';

class TableImportTable {
  /// Type of compression to be used on the input coming from the imported table.
  /// Valid values are `GZIP`, `ZSTD` and `NONE`.
  final pulumi.Input<String?>? inputCompressionType;
  /// The format of the source data.
  /// Valid values are `CSV`, `DYNAMODB_JSON`, and `ION`.
  final pulumi.Input<String> inputFormat;
  /// Describe the format options for the data that was imported into the target table.
  /// There is one value, `csv`.
  /// See below.
  final pulumi.Input<TableImportTableInputFormatOptions?>? inputFormatOptions;
  /// Values for the S3 bucket the source file is imported from.
  /// See below.
  final pulumi.Input<TableImportTableS3BucketSource> s3BucketSource;

  /// Creates a new [TableImportTable].
  /// [inputCompressionType] Type of compression to be used on the input coming from the imported table.
  /// [inputFormat] The format of the source data.
  /// [inputFormatOptions] Describe the format options for the data that was imported into the target table.
  /// [s3BucketSource] Values for the S3 bucket the source file is imported from.
  const TableImportTable({
    this.inputCompressionType,
    required this.inputFormat,
    this.inputFormatOptions,
    required this.s3BucketSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputCompressionType': ?inputCompressionType,
      'inputFormat': inputFormat,
      'inputFormatOptions': ?pulumi.Input.mapOptionalInputValue<TableImportTableInputFormatOptions, Map<String, dynamic>>(inputFormatOptions, (value) => value.toMap()),
      's3BucketSource': pulumi.Input.mapInputValue<TableImportTableS3BucketSource, Map<String, dynamic>>(s3BucketSource, (value) => value.toMap()),
    };
  }

  factory TableImportTable.fromMap(Map<String, dynamic> map) {
    return TableImportTable(
      inputCompressionType: (() { final guardedValue = map['inputCompressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputFormat: pulumi.Input.fromValue(map['inputFormat'] as String),
      inputFormatOptions: (() { final guardedValue = map['inputFormatOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableImportTableInputFormatOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3BucketSource: pulumi.Input.fromValue(TableImportTableS3BucketSource.fromMap((map['s3BucketSource']! as Map).cast<String, dynamic>())),
    );
  }
}
