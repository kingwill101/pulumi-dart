// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_anomaly_detector_log_anomaly_detector_args_doc}
/// The set of arguments for LogAnomalyDetector.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_anomaly_detector_log_anomaly_detector_args_doc}
class LogAnomalyDetectorArgs {
  /// Number of days to have visibility on an anomaly. After this time period has elapsed for an anomaly, it will be automatically baselined and the anomaly detector will treat new occurrences of a similar anomaly as normal. Therefore, if you do not correct the cause of an anomaly during the time period specified in `anomaly_visibility_time`, it will be considered normal going forward and will not be detected as an anomaly. Valid Range: Minimum value of 7. Maximum value of 90.
  final pulumi.Input<int>? anomalyVisibilityTime;
  /// Name for this anomaly detector.
  final pulumi.Input<String>? detectorName;
  final pulumi.Input<bool> enabled;
  /// Specifies how often the anomaly detector is to run and look for anomalies. Set this value according to the frequency that the log group receives new logs. For example, if the log group receives new log events every 10 minutes, then 15 minutes might be a good setting for `evaluation_frequency`. Valid Values: `ONE_MIN | FIVE_MIN | TEN_MIN | FIFTEEN_MIN | THIRTY_MIN | ONE_HOUR`.
  final pulumi.Input<String>? evaluationFrequency;
  /// You can use this parameter to limit the anomaly detection model to examine only log events that match the pattern you specify here. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  final pulumi.Input<String>? filterPattern;
  /// Optionally assigns a AWS KMS key to secure this anomaly detector and its findings. If a key is assigned, the anomalies found and the model used by this detector are encrypted at rest with the key. If a key is assigned to an anomaly detector, a user must have permissions for both this key and for the anomaly detector to retrieve information about the anomalies that it finds.
  final pulumi.Input<String>? kmsKeyId;
  /// Array containing the ARN of the log group that this anomaly detector will watch. You can specify only one log group ARN.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> logGroupArnLists;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LogAnomalyDetectorArgs].
  /// [anomalyVisibilityTime] Number of days to have visibility on an anomaly. After this time period has elapsed for an anomaly, it will be automatically baselined and the anomaly detector will treat new occurrences of a similar anomaly as normal. Therefore, if you do not correct the cause of an anomaly during the time period specified in `anomaly_visibility_time`, it will be considered normal going forward and will not be detected as an anomaly. Valid Range: Minimum value of 7. Maximum value of 90.
  /// [detectorName] Name for this anomaly detector.
  /// [enabled] Required.
  /// [evaluationFrequency] Specifies how often the anomaly detector is to run and look for anomalies. Set this value according to the frequency that the log group receives new logs. For example, if the log group receives new log events every 10 minutes, then 15 minutes might be a good setting for `evaluation_frequency`. Valid Values: `ONE_MIN | FIVE_MIN | TEN_MIN | FIFTEEN_MIN | THIRTY_MIN | ONE_HOUR`.
  /// [filterPattern] You can use this parameter to limit the anomaly detection model to examine only log events that match the pattern you specify here. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  /// [kmsKeyId] Optionally assigns a AWS KMS key to secure this anomaly detector and its findings. If a key is assigned, the anomalies found and the model used by this detector are encrypted at rest with the key. If a key is assigned to an anomaly detector, a user must have permissions for both this key and for the anomaly detector to retrieve information about the anomalies that it finds.
  /// [logGroupArnLists] Array containing the ARN of the log group that this anomaly detector will watch. You can specify only one log group ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  LogAnomalyDetectorArgs({
    pulumi.Output<int>? anomalyVisibilityTime,
    pulumi.Output<String>? detectorName,
    required pulumi.Output<bool> enabled,
    pulumi.Output<String>? evaluationFrequency,
    pulumi.Output<String>? filterPattern,
    pulumi.Output<String>? kmsKeyId,
    required pulumi.Output<List<String>> logGroupArnLists,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      anomalyVisibilityTime = pulumi.Input.asOptionalInput<int>(anomalyVisibilityTime),
      detectorName = pulumi.Input.asOptionalInput<String>(detectorName),
      enabled = pulumi.Input.asInput<bool>(enabled),
      evaluationFrequency = pulumi.Input.asOptionalInput<String>(evaluationFrequency),
      filterPattern = pulumi.Input.asOptionalInput<String>(filterPattern),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      logGroupArnLists = pulumi.Input.asInput<List<String>>(logGroupArnLists),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anomalyVisibilityTime': ?anomalyVisibilityTime,
      'detectorName': ?detectorName,
      'enabled': enabled,
      'evaluationFrequency': ?evaluationFrequency,
      'filterPattern': ?filterPattern,
      'kmsKeyId': ?kmsKeyId,
      'logGroupArnLists': logGroupArnLists,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory LogAnomalyDetectorArgs.fromMap(Map<String, dynamic> map) {
    return LogAnomalyDetectorArgs(
      anomalyVisibilityTime: map['anomalyVisibilityTime'] == null ? null : pulumi.Output.create<int>(map['anomalyVisibilityTime'] as int),
      detectorName: map['detectorName'] == null ? null : pulumi.Output.create<String>(map['detectorName'] as String),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      evaluationFrequency: map['evaluationFrequency'] == null ? null : pulumi.Output.create<String>(map['evaluationFrequency'] as String),
      filterPattern: map['filterPattern'] == null ? null : pulumi.Output.create<String>(map['filterPattern'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      logGroupArnLists: pulumi.Output.create<List<String>>((map['logGroupArnLists'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

