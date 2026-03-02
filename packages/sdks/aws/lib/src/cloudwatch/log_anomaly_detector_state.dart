// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogAnomalyDetector resources.
class LogAnomalyDetectorState {
  /// Number of days to have visibility on an anomaly. After this time period has elapsed for an anomaly, it will be automatically baselined and the anomaly detector will treat new occurrences of a similar anomaly as normal. Therefore, if you do not correct the cause of an anomaly during the time period specified in `anomaly_visibility_time`, it will be considered normal going forward and will not be detected as an anomaly. Valid Range: Minimum value of 7. Maximum value of 90.
  final pulumi.Input<int>? anomalyVisibilityTime;
  /// ARN of the log anomaly detector that you just created.
  final pulumi.Input<String>? arn;
  /// Name for this anomaly detector.
  final pulumi.Input<String>? detectorName;
  final pulumi.Input<bool>? enabled;
  /// Specifies how often the anomaly detector is to run and look for anomalies. Set this value according to the frequency that the log group receives new logs. For example, if the log group receives new log events every 10 minutes, then 15 minutes might be a good setting for `evaluation_frequency`. Valid Values: `ONE_MIN | FIVE_MIN | TEN_MIN | FIFTEEN_MIN | THIRTY_MIN | ONE_HOUR`.
  final pulumi.Input<String>? evaluationFrequency;
  /// You can use this parameter to limit the anomaly detection model to examine only log events that match the pattern you specify here. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  final pulumi.Input<String>? filterPattern;
  /// Optionally assigns a AWS KMS key to secure this anomaly detector and its findings. If a key is assigned, the anomalies found and the model used by this detector are encrypted at rest with the key. If a key is assigned to an anomaly detector, a user must have permissions for both this key and for the anomaly detector to retrieve information about the anomalies that it finds.
  final pulumi.Input<String>? kmsKeyId;
  /// Array containing the ARN of the log group that this anomaly detector will watch. You can specify only one log group ARN.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? logGroupArnLists;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LogAnomalyDetectorState].
  /// [anomalyVisibilityTime] Number of days to have visibility on an anomaly. After this time period has elapsed for an anomaly, it will be automatically baselined and the anomaly detector will treat new occurrences of a similar anomaly as normal. Therefore, if you do not correct the cause of an anomaly during the time period specified in `anomaly_visibility_time`, it will be considered normal going forward and will not be detected as an anomaly. Valid Range: Minimum value of 7. Maximum value of 90.
  /// [arn] ARN of the log anomaly detector that you just created.
  /// [detectorName] Name for this anomaly detector.
  /// [enabled] Optional.
  /// [evaluationFrequency] Specifies how often the anomaly detector is to run and look for anomalies. Set this value according to the frequency that the log group receives new logs. For example, if the log group receives new log events every 10 minutes, then 15 minutes might be a good setting for `evaluation_frequency`. Valid Values: `ONE_MIN | FIVE_MIN | TEN_MIN | FIFTEEN_MIN | THIRTY_MIN | ONE_HOUR`.
  /// [filterPattern] You can use this parameter to limit the anomaly detection model to examine only log events that match the pattern you specify here. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  /// [kmsKeyId] Optionally assigns a AWS KMS key to secure this anomaly detector and its findings. If a key is assigned, the anomalies found and the model used by this detector are encrypted at rest with the key. If a key is assigned to an anomaly detector, a user must have permissions for both this key and for the anomaly detector to retrieve information about the anomalies that it finds.
  /// [logGroupArnLists] Array containing the ARN of the log group that this anomaly detector will watch. You can specify only one log group ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  LogAnomalyDetectorState({
    this.anomalyVisibilityTime,
    this.arn,
    this.detectorName,
    this.enabled,
    this.evaluationFrequency,
    this.filterPattern,
    this.kmsKeyId,
    this.logGroupArnLists,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anomalyVisibilityTime': ?anomalyVisibilityTime,
      'arn': ?arn,
      'detectorName': ?detectorName,
      'enabled': ?enabled,
      'evaluationFrequency': ?evaluationFrequency,
      'filterPattern': ?filterPattern,
      'kmsKeyId': ?kmsKeyId,
      'logGroupArnLists': ?logGroupArnLists,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LogAnomalyDetectorState.fromMap(Map<String, dynamic> map) {
    return LogAnomalyDetectorState(
      anomalyVisibilityTime: map['anomalyVisibilityTime'] == null ? null : ((map['anomalyVisibilityTime'] as int).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      detectorName: map['detectorName'] == null ? null : ((map['detectorName'] as String).input()).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      evaluationFrequency: map['evaluationFrequency'] == null ? null : ((map['evaluationFrequency'] as String).input()).input(),
      filterPattern: map['filterPattern'] == null ? null : ((map['filterPattern'] as String).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      logGroupArnLists: map['logGroupArnLists'] == null ? null : (((map['logGroupArnLists'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

