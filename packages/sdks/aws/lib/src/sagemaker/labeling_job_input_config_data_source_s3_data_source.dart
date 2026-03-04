// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LabelingJobInputConfigDataSourceS3DataSource {
  /// S3 location of the manifest file that describes the input data objects.
  final pulumi.Input<String> manifestS3Uri;

  /// Creates a new [LabelingJobInputConfigDataSourceS3DataSource].
  /// [manifestS3Uri] S3 location of the manifest file that describes the input data objects.
  LabelingJobInputConfigDataSourceS3DataSource({required this.manifestS3Uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'manifestS3Uri': manifestS3Uri};
  }

  factory LabelingJobInputConfigDataSourceS3DataSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return LabelingJobInputConfigDataSourceS3DataSource(
      manifestS3Uri: pulumi.Input.fromValue(map['manifestS3Uri'] as String),
    );
  }
}
