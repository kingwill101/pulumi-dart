// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmInferenceSpecificationContainerAdditionalS3DataSource {
  /// Compression type for the data. Allowed values are: `None` and `Gzip`.
  final pulumi.Input<String>? compressionType;
  /// ETag of the S3 object.
  final pulumi.Input<String>? etag;
  /// Type of additional S3 data.
  final pulumi.Input<String> s3DataType;
  /// S3 or HTTPS URI for the additional data.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [AlgorithmInferenceSpecificationContainerAdditionalS3DataSource].
  /// [compressionType] Compression type for the data. Allowed values are: `None` and `Gzip`.
  /// [etag] ETag of the S3 object.
  /// [s3DataType] Type of additional S3 data.
  /// [s3Uri] S3 or HTTPS URI for the additional data.
  const AlgorithmInferenceSpecificationContainerAdditionalS3DataSource({
    this.compressionType,
    this.etag,
    required this.s3DataType,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionType': ?compressionType,
      'etag': ?etag,
      's3DataType': s3DataType,
      's3Uri': s3Uri,
    };
  }

  factory AlgorithmInferenceSpecificationContainerAdditionalS3DataSource.fromMap(Map<String, dynamic> map) {
    return AlgorithmInferenceSpecificationContainerAdditionalS3DataSource(
      compressionType: (() { final guardedValue = map['compressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3DataType: pulumi.Input.fromValue(map['s3DataType'] as String),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
