// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LabelingJobInputConfigDataSourceSnsDataSource {
  /// SNS input topic ARN.
  final pulumi.Input<String> snsTopicArn;

  /// Creates a new [LabelingJobInputConfigDataSourceSnsDataSource].
  /// [snsTopicArn] SNS input topic ARN.
  LabelingJobInputConfigDataSourceSnsDataSource({
    required this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snsTopicArn': snsTopicArn,
    };
  }

  factory LabelingJobInputConfigDataSourceSnsDataSource.fromMap(Map<String, dynamic> map) {
    return LabelingJobInputConfigDataSourceSnsDataSource(
      snsTopicArn: (map['snsTopicArn'] as String).input(),
    );
  }
}

