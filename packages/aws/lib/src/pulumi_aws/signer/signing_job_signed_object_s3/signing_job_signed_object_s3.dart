// ignore_for_file: unused_element, unnecessary_cast

class SigningJobSignedObjectS3 {
  final String? bucket;

  /// Key name of the object that contains your unsigned code.
  final String? key;

  SigningJobSignedObjectS3({
    this.bucket,
    this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    return map;
  }

  factory SigningJobSignedObjectS3.fromMap(Map<String, dynamic> map) {
    return SigningJobSignedObjectS3(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}
