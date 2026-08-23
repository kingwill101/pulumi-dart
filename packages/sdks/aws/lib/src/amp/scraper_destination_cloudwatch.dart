// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScraperDestinationCloudwatch {
  /// ARN of the CloudWatch dataset. Use `arn:aws:cloudwatch:{region}:{account}:dataset/default` for the default dataset.
  final pulumi.Input<String> datasetArn;

  /// Creates a new [ScraperDestinationCloudwatch].
  /// [datasetArn] ARN of the CloudWatch dataset. Use `arn:aws:cloudwatch:{region}:{account}:dataset/default` for the default dataset.
  const ScraperDestinationCloudwatch({
    required this.datasetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetArn': datasetArn,
    };
  }

  factory ScraperDestinationCloudwatch.fromMap(Map<String, dynamic> map) {
    return ScraperDestinationCloudwatch(
      datasetArn: pulumi.Input.fromValue(map['datasetArn'] as String),
    );
  }
}
