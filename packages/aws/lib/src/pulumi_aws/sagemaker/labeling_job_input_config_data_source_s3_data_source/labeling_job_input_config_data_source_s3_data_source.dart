// ignore_for_file: unused_element, unnecessary_cast

class LabelingJobInputConfigDataSourceS3DataSource {
  /// S3 location of the manifest file that describes the input data objects.
  final String manifestS3Uri;

  LabelingJobInputConfigDataSourceS3DataSource({
    required this.manifestS3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['manifestS3Uri'] = manifestS3Uri;
    return map;
  }

  factory LabelingJobInputConfigDataSourceS3DataSource.fromMap(
      Map<String, dynamic> map) {
    return LabelingJobInputConfigDataSourceS3DataSource(
      manifestS3Uri: map['manifestS3Uri'] as String,
    );
  }
}
