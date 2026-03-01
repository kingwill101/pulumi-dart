// ignore_for_file: unused_element, unnecessary_cast

import 'input_format_options_response.dart';
import 's3_bucket_source_response.dart';

/// Definition of ImportSourceSpecification
class ImportSourceSpecificationResponse {
  /// Type of compression to be used on the input coming from the imported table.
  final String? inputCompressionType;
  /// The format of the source data. Valid values for ``ImportFormat`` are ``CSV``, ``DYNAMODB_JSON`` or ``ION``.
  final String? inputFormat;
  /// Additional properties that specify how the input is formatted, The format options for the data that was imported into the target table. There is one value, CsvOption.
  final InputFormatOptionsResponse? inputFormatOptions;
  /// The S3 bucket that provides the source for the import. The S3 bucket that is being imported from.
  final S3BucketSourceResponse? s3BucketSource;

  /// Creates a new [ImportSourceSpecificationResponse].
  /// [inputCompressionType] Type of compression to be used on the input coming from the imported table.
  /// [inputFormat] The format of the source data. Valid values for ``ImportFormat`` are ``CSV``, ``DYNAMODB_JSON`` or ``ION``.
  /// [inputFormatOptions] Additional properties that specify how the input is formatted, The format options for the data that was imported into the target table. There is one value, CsvOption.
  /// [s3BucketSource] The S3 bucket that provides the source for the import. The S3 bucket that is being imported from.
  ImportSourceSpecificationResponse({
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

  factory ImportSourceSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return ImportSourceSpecificationResponse(
      inputCompressionType: map['inputCompressionType'] == null ? null : map['inputCompressionType'] as String,
      inputFormat: map['inputFormat'] == null ? null : map['inputFormat'] as String,
      inputFormatOptions: map['inputFormatOptions'] == null ? null : InputFormatOptionsResponse.fromMap((map['inputFormatOptions'] as Map).cast<String, dynamic>()),
      s3BucketSource: map['s3BucketSource'] == null ? null : S3BucketSourceResponse.fromMap((map['s3BucketSource'] as Map).cast<String, dynamic>()),
    );
  }
}

