// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_format_options_response.dart';
import 's3_bucket_source_response.dart';

/// Definition of ImportSourceSpecification
class ImportSourceSpecificationResponse {
  /// Type of compression to be used on the input coming from the imported table.
  final pulumi.Input<String>? inputCompressionType;
  /// The format of the source data. Valid values for ``ImportFormat`` are ``CSV``, ``DYNAMODB_JSON`` or ``ION``.
  final pulumi.Input<String>? inputFormat;
  /// Additional properties that specify how the input is formatted, The format options for the data that was imported into the target table. There is one value, CsvOption.
  final pulumi.Input<InputFormatOptionsResponse>? inputFormatOptions;
  /// The S3 bucket that provides the source for the import. The S3 bucket that is being imported from.
  final pulumi.Input<S3BucketSourceResponse>? s3BucketSource;

  /// Creates a new [ImportSourceSpecificationResponse].
  /// [inputCompressionType] Type of compression to be used on the input coming from the imported table.
  /// [inputFormat] The format of the source data. Valid values for ``ImportFormat`` are ``CSV``, ``DYNAMODB_JSON`` or ``ION``.
  /// [inputFormatOptions] Additional properties that specify how the input is formatted, The format options for the data that was imported into the target table. There is one value, CsvOption.
  /// [s3BucketSource] The S3 bucket that provides the source for the import. The S3 bucket that is being imported from.
  const ImportSourceSpecificationResponse({
    this.inputCompressionType,
    this.inputFormat,
    this.inputFormatOptions,
    this.s3BucketSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputCompressionType': ?inputCompressionType,
      'inputFormat': ?inputFormat,
      'inputFormatOptions': ?pulumi.Input.mapOptionalInputValue<InputFormatOptionsResponse, Map<String, dynamic>>(inputFormatOptions, (value) => value.toMap()),
      's3BucketSource': ?pulumi.Input.mapOptionalInputValue<S3BucketSourceResponse, Map<String, dynamic>>(s3BucketSource, (value) => value.toMap()),
    };
  }

  factory ImportSourceSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return ImportSourceSpecificationResponse(
      inputCompressionType: (() { final guardedValue = map['inputCompressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputFormat: (() { final guardedValue = map['inputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputFormatOptions: (() { final guardedValue = map['inputFormatOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InputFormatOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3BucketSource: (() { final guardedValue = map['s3BucketSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(S3BucketSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
