// ignore_for_file: unused_element, unnecessary_cast

import 'input_format_options.dart';
import 's3_bucket_source.dart';

/// Definition of ImportSourceSpecification
class ImportSourceSpecification {
  /// Type of compression to be used on the input coming from the imported table.
  final String? inputCompressionType;
  /// The format of the source data. Valid values for ``ImportFormat`` are ``CSV``, ``DYNAMODB_JSON`` or ``ION``.
  final String? inputFormat;
  /// Additional properties that specify how the input is formatted, The format options for the data that was imported into the target table. There is one value, CsvOption.
  final InputFormatOptions? inputFormatOptions;
  /// The S3 bucket that provides the source for the import. The S3 bucket that is being imported from.
  final S3BucketSource? s3BucketSource;

  /// Creates a new [ImportSourceSpecification].
  /// [inputCompressionType] Type of compression to be used on the input coming from the imported table.
  /// [inputFormat] The format of the source data. Valid values for ``ImportFormat`` are ``CSV``, ``DYNAMODB_JSON`` or ``ION``.
  /// [inputFormatOptions] Additional properties that specify how the input is formatted, The format options for the data that was imported into the target table. There is one value, CsvOption.
  /// [s3BucketSource] The S3 bucket that provides the source for the import. The S3 bucket that is being imported from.
  ImportSourceSpecification({
    this.inputCompressionType,
    this.inputFormat,
    this.inputFormatOptions,
    this.s3BucketSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputCompressionType': ?inputCompressionType,
      'inputFormat': ?inputFormat,
      'inputFormatOptions': ?inputFormatOptions == null ? null : inputFormatOptions!.toMap(),
      's3BucketSource': ?s3BucketSource == null ? null : s3BucketSource!.toMap(),
    };
  }

  factory ImportSourceSpecification.fromMap(Map<String, dynamic> map) {
    return ImportSourceSpecification(
      inputCompressionType: map['inputCompressionType'] == null ? null : map['inputCompressionType'] as String,
      inputFormat: map['inputFormat'] == null ? null : map['inputFormat'] as String,
      inputFormatOptions: map['inputFormatOptions'] == null ? null : InputFormatOptions.fromMap((map['inputFormatOptions'] as Map).cast<String, dynamic>()),
      s3BucketSource: map['s3BucketSource'] == null ? null : S3BucketSource.fromMap((map['s3BucketSource'] as Map).cast<String, dynamic>()),
    );
  }
}

