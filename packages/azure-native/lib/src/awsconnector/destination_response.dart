// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Destination
class DestinationResponse {
  /// The account ID that owns the destination S3 bucket. If no account ID is provided, the owner is not validated before exporting data.   Although this value is optional, we strongly recommend that you set it to help prevent problems if the destination bucket ownership changes.
  final String? bucketAccountId;
  /// The Amazon Resource Name (ARN) of the bucket to which data is exported.
  final String? bucketArn;
  /// Specifies the file format used when exporting data to Amazon S3.  *Allowed values*: ``CSV`` | ``ORC`` | ``Parquet``
  final String? format;
  /// The prefix to use when exporting data. The prefix is prepended to all results.
  final String? prefix;

  /// Creates a new [DestinationResponse].
  /// [bucketAccountId] The account ID that owns the destination S3 bucket. If no account ID is provided, the owner is not validated before exporting data.   Although this value is optional, we strongly recommend that you set it to help prevent problems if the destination bucket ownership changes.
  /// [bucketArn] The Amazon Resource Name (ARN) of the bucket to which data is exported.
  /// [format] Specifies the file format used when exporting data to Amazon S3.  *Allowed values*: ``CSV`` | ``ORC`` | ``Parquet``
  /// [prefix] The prefix to use when exporting data. The prefix is prepended to all results.
  DestinationResponse({
    this.bucketAccountId,
    this.bucketArn,
    this.format,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketAccountId': ?bucketAccountId,
      'bucketArn': ?bucketArn,
      'format': ?format,
      'prefix': ?prefix,
    };
  }

  factory DestinationResponse.fromMap(Map<String, dynamic> map) {
    return DestinationResponse(
      bucketAccountId: map['bucketAccountId'] == null ? null : map['bucketAccountId'] as String,
      bucketArn: map['bucketArn'] == null ? null : map['bucketArn'] as String,
      format: map['format'] == null ? null : map['format'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

