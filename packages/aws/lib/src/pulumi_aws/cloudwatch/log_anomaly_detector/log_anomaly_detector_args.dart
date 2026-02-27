// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LogAnomalyDetector.
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

  LogAnomalyDetectorArgs({
    this.anomalyVisibilityTime,
    this.detectorName,
    required this.enabled,
    this.evaluationFrequency,
    this.filterPattern,
    this.kmsKeyId,
    required this.logGroupArnLists,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final anomalyVisibilityTimeValue = anomalyVisibilityTime;
    if (anomalyVisibilityTimeValue != null) {
      map['anomalyVisibilityTime'] = anomalyVisibilityTimeValue;
    }
    final detectorNameValue = detectorName;
    if (detectorNameValue != null) {
      map['detectorName'] = detectorNameValue;
    }
    map['enabled'] = enabled;
    final evaluationFrequencyValue = evaluationFrequency;
    if (evaluationFrequencyValue != null) {
      map['evaluationFrequency'] = evaluationFrequencyValue;
    }
    final filterPatternValue = filterPattern;
    if (filterPatternValue != null) {
      map['filterPattern'] = filterPatternValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    map['logGroupArnLists'] = logGroupArnLists;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LogAnomalyDetectorArgs.fromMap(Map<String, dynamic> map) {
    return LogAnomalyDetectorArgs(
      anomalyVisibilityTime:
          pulumi.Input.asOptionalInput<int>(map['anomalyVisibilityTime']),
      detectorName: pulumi.Input.asOptionalInput<String>(map['detectorName']),
      enabled: pulumi.Input.asInput<bool>(map['enabled']),
      evaluationFrequency:
          pulumi.Input.asOptionalInput<String>(map['evaluationFrequency']),
      filterPattern: pulumi.Input.asOptionalInput<String>(map['filterPattern']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      logGroupArnLists:
          pulumi.Input.asInput<List<String>>(map['logGroupArnLists']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
