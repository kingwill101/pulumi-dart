import 'package:pulumi/pulumi.dart';
import 'log_anomaly_detector_args.dart';

/// Resource for managing an AWS CloudWatch Logs Log Anomaly Detector.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Log Anomaly Detector using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logAnomalyDetector:LogAnomalyDetector example log_anomaly_detector-arn-12345678
/// ```
class LogAnomalyDetector extends CustomResource {
  /// Number of days to have visibility on an anomaly. After this time period has elapsed for an anomaly, it will be automatically baselined and the anomaly detector will treat new occurrences of a similar anomaly as normal. Therefore, if you do not correct the cause of an anomaly during the time period specified in `anomaly_visibility_time`, it will be considered normal going forward and will not be detected as an anomaly. Valid Range: Minimum value of 7. Maximum value of 90.
  late final Output<int> anomalyVisibilityTime;

  /// ARN of the log anomaly detector that you just created.
  late final Output<String> arn;

  /// Name for this anomaly detector.
  late final Output<String?> detectorName;
  late final Output<bool> enabled;

  /// Specifies how often the anomaly detector is to run and look for anomalies. Set this value according to the frequency that the log group receives new logs. For example, if the log group receives new log events every 10 minutes, then 15 minutes might be a good setting for `evaluation_frequency`. Valid Values: `ONE_MIN | FIVE_MIN | TEN_MIN | FIFTEEN_MIN | THIRTY_MIN | ONE_HOUR`.
  late final Output<String?> evaluationFrequency;

  /// You can use this parameter to limit the anomaly detection model to examine only log events that match the pattern you specify here. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  late final Output<String?> filterPattern;

  /// Optionally assigns a AWS KMS key to secure this anomaly detector and its findings. If a key is assigned, the anomalies found and the model used by this detector are encrypted at rest with the key. If a key is assigned to an anomaly detector, a user must have permissions for both this key and for the anomaly detector to retrieve information about the anomalies that it finds.
  late final Output<String?> kmsKeyId;

  /// Array containing the ARN of the log group that this anomaly detector will watch. You can specify only one log group ARN.
  ///
  /// The following arguments are optional:
  late final Output<List<String>> logGroupArnLists;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  LogAnomalyDetector(
    String name, {
    LogAnomalyDetectorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logAnomalyDetector:LogAnomalyDetector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.anomalyVisibilityTime = registerOutput<int>('anomalyVisibilityTime');
    this.arn = registerOutput<String>('arn');
    this.detectorName = registerOutput<String?>('detectorName');
    this.enabled = registerOutput<bool>('enabled');
    this.evaluationFrequency = registerOutput<String?>('evaluationFrequency');
    this.filterPattern = registerOutput<String?>('filterPattern');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.logGroupArnLists = registerOutput<List<String>>('logGroupArnLists');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
