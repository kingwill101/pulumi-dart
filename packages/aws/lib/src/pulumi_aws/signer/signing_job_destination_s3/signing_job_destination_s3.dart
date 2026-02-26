// ignore_for_file: unused_element, unnecessary_cast

class SigningJobDestinationS3 {
  final String bucket;

  /// An Amazon S3 object key prefix that you can use to limit signed objects keys to begin with the specified prefix.
  final String? prefix;

  SigningJobDestinationS3({
    required this.bucket,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory SigningJobDestinationS3.fromMap(Map<String, dynamic> map) {
    return SigningJobDestinationS3(
      bucket: map['bucket'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
