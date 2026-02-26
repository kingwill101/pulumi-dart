import 'package:pulumi/pulumi.dart';
import 'log_anomaly_detector_args.dart';

/// Resource for managing an AWS CloudWatch Logs Log Anomaly Detector.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test: aws.cloudwatch.LogGroup[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
/// test.push(new aws.cloudwatch.LogGroup(`test-${range.value}`, {name: `testing-${range.value}`}));
/// }
/// const testLogAnomalyDetector = new aws.cloudwatch.LogAnomalyDetector("test", {
/// detectorName: "testing",
/// logGroupArnLists: [test[0].arn],
/// anomalyVisibilityTime: 7,
/// evaluationFrequency: "TEN_MIN",
/// enabled: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = []
/// for range in [{"value": i} for i in range(0, 2)]:
/// test.append(aws.cloudwatch.LogGroup(f"test-{range['value']}", name=f"testing-{range['value']}"))
/// test_log_anomaly_detector = aws.cloudwatch.LogAnomalyDetector("test",
/// detector_name="testing",
/// log_group_arn_lists=[test[0].arn],
/// anomaly_visibility_time=7,
/// evaluation_frequency="TEN_MIN",
/// enabled=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new List<Aws.CloudWatch.LogGroup>();
/// for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// test.Add(new Aws.CloudWatch.LogGroup($"test-{range.Value}", new()
/// {
/// Name = $"testing-{range.Value}",
/// }));
/// }
/// var testLogAnomalyDetector = new Aws.CloudWatch.LogAnomalyDetector("test", new()
/// {
/// DetectorName = "testing",
/// LogGroupArnLists = new[]
/// {
/// test[0].Arn,
/// },
/// AnomalyVisibilityTime = 7,
/// EvaluationFrequency = "TEN_MIN",
/// Enabled = false,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var test []*cloudwatch.LogGroup
/// for index := 0; index < 2; index++ {
/// key0 := index
/// val0 := index
/// __res, err := cloudwatch.NewLogGroup(ctx, fmt.Sprintf("test-%v", key0), &cloudwatch.LogGroupArgs{
/// Name: pulumi.Sprintf("testing-%v", val0),
/// })
/// if err != nil {
/// return err
/// }
/// test = append(test, __res)
/// }
/// _, err = cloudwatch.NewLogAnomalyDetector(ctx, "test", &cloudwatch.LogAnomalyDetectorArgs{
/// DetectorName: pulumi.String("testing"),
/// LogGroupArnLists: pulumi.StringArray{
/// test[0].Arn,
/// },
/// AnomalyVisibilityTime: pulumi.Int(7),
/// EvaluationFrequency:   pulumi.String("TEN_MIN"),
/// Enabled:               pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudwatch.LogAnomalyDetector;
/// import com.pulumi.aws.cloudwatch.LogAnomalyDetectorArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// for (var i = 0; i < 2; i++) {
/// new LogGroup("test-" + i, LogGroupArgs.builder()
/// .name(String.format("testing-%s", range.value()))
/// .build());
///
///
/// }
/// var testLogAnomalyDetector = new LogAnomalyDetector("testLogAnomalyDetector", LogAnomalyDetectorArgs.builder()
/// .detectorName("testing")
/// .logGroupArnLists(test[0].arn())
/// .anomalyVisibilityTime(7)
/// .evaluationFrequency("TEN_MIN")
/// .enabled(false)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:cloudwatch:LogGroup
/// properties:
/// name: testing-${range.value}
/// options: {}
/// testLogAnomalyDetector:
/// type: aws:cloudwatch:LogAnomalyDetector
/// name: test
/// properties:
/// detectorName: testing
/// logGroupArnLists:
/// - ${test[0].arn}
/// anomalyVisibilityTime: 7
/// evaluationFrequency: TEN_MIN
/// enabled: 'false'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Log Anomaly Detector using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logAnomalyDetector:LogAnomalyDetector example log_anomaly_detector-arn-12345678
/// ```
class LogAnomalyDetector extends CustomResource {
  /// Number of days to have visibility on an anomaly. After this time period has elapsed for an anomaly, it will be automatically baselined and the anomaly detector will treat new occurrences of a similar anomaly as normal. Therefore, if you do not correct the cause of an anomaly during the time period specified in <span pulumi-lang-nodejs="`anomalyVisibilityTime`" pulumi-lang-dotnet="`AnomalyVisibilityTime`" pulumi-lang-go="`anomalyVisibilityTime`" pulumi-lang-python="`anomaly_visibility_time`" pulumi-lang-yaml="`anomalyVisibilityTime`" pulumi-lang-java="`anomalyVisibilityTime`">`anomaly_visibility_time`</span>, it will be considered normal going forward and will not be detected as an anomaly. Valid Range: Minimum value of 7. Maximum value of 90.
  late final Output<int> anomalyVisibilityTime;

  /// ARN of the log anomaly detector that you just created.
  late final Output<String> arn;

  /// Name for this anomaly detector.
  late final Output<String?> detectorName;
  late final Output<bool> enabled;

  /// Specifies how often the anomaly detector is to run and look for anomalies. Set this value according to the frequency that the log group receives new logs. For example, if the log group receives new log events every 10 minutes, then 15 minutes might be a good setting for <span pulumi-lang-nodejs="`evaluationFrequency`" pulumi-lang-dotnet="`EvaluationFrequency`" pulumi-lang-go="`evaluationFrequency`" pulumi-lang-python="`evaluation_frequency`" pulumi-lang-yaml="`evaluationFrequency`" pulumi-lang-java="`evaluationFrequency`">`evaluation_frequency`</span>. Valid Values: `ONE_MIN | FIVE_MIN | TEN_MIN | FIFTEEN_MIN | THIRTY_MIN | ONE_HOUR`.
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
