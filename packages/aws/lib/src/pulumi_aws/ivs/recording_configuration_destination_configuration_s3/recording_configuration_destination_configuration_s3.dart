// ignore_for_file: unused_element, unnecessary_cast

class RecordingConfigurationDestinationConfigurationS3 {
  /// S3 bucket name where recorded videos will be stored.
  ///
  /// The following arguments are optional:
  final String bucketName;

  RecordingConfigurationDestinationConfigurationS3({
    required this.bucketName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    return map;
  }

  factory RecordingConfigurationDestinationConfigurationS3.fromMap(
      Map<String, dynamic> map) {
    return RecordingConfigurationDestinationConfigurationS3(
      bucketName: map['bucketName'] as String,
    );
  }
}
