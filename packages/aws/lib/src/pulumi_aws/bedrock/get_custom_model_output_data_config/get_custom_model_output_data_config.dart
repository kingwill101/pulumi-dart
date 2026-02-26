// ignore_for_file: unused_element, unnecessary_cast

class GetCustomModelOutputDataConfig {
  /// The S3 URI where the validation data is stored..
  final String s3Uri;

  GetCustomModelOutputDataConfig({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Uri'] = s3Uri;
    return map;
  }

  factory GetCustomModelOutputDataConfig.fromMap(Map<String, dynamic> map) {
    return GetCustomModelOutputDataConfig(
      s3Uri: map['s3Uri'] as String,
    );
  }
}
