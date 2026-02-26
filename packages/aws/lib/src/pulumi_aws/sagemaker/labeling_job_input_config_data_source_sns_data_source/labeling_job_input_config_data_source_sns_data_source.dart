// ignore_for_file: unused_element, unnecessary_cast

class LabelingJobInputConfigDataSourceSnsDataSource {
  /// SNS input topic ARN.
  final String snsTopicArn;

  LabelingJobInputConfigDataSourceSnsDataSource({
    required this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['snsTopicArn'] = snsTopicArn;
    return map;
  }

  factory LabelingJobInputConfigDataSourceSnsDataSource.fromMap(
      Map<String, dynamic> map) {
    return LabelingJobInputConfigDataSourceSnsDataSource(
      snsTopicArn: map['snsTopicArn'] as String,
    );
  }
}
