import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_anomaly_detector_args.dart';
import 'log_anomaly_detector_state.dart';

/// Resource for managing an AWS CloudWatch Logs Log Anomaly Detector.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test: aws.cloudwatch.LogGroup[] = [];
/// for (let range = 0; range < 2; range++) {
///     test.push(new aws.cloudwatch.LogGroup(`test-${range}`, {name: `testing-${range}`}));
/// }
/// const testLogAnomalyDetector = new aws.cloudwatch.LogAnomalyDetector("test", {
///     detectorName: "testing",
///     logGroupArnLists: [test[0].arn],
///     anomalyVisibilityTime: 7,
///     evaluationFrequency: "TEN_MIN",
///     enabled: false,
/// });
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
///
/// test: list[aws.cloudwatch.LogGroup] = []
/// for test_range in [{"value": i} for i in range(0, 2)]:
///     test.append(aws.cloudwatch.LogGroup(f"test-{test_range['value']}", name=f"testing-{test_range['value']}"))
/// test_log_anomaly_detector = aws.cloudwatch.LogAnomalyDetector("test",
///     detector_name="testing",
///     log_group_arn_lists=[test[0].arn],
///     anomaly_visibility_time=7,
///     evaluation_frequency="TEN_MIN",
///     enabled=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new List<Aws.CloudWatch.LogGroup>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         test.Add(new Aws.CloudWatch.LogGroup($"test-{range.Value}", new()
///         {
///             Name = $"testing-{range.Value}",
///         }));
///     }
///     var testLogAnomalyDetector = new Aws.CloudWatch.LogAnomalyDetector("test", new()
///     {
///         DetectorName = "testing",
///         LogGroupArnLists = new[]
///         {
///             test[0].Arn,
///         },
///         AnomalyVisibilityTime = 7,
///         EvaluationFrequency = "TEN_MIN",
///         Enabled = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		var test []*cloudwatch.LogGroup
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := cloudwatch.NewLogGroup(ctx, fmt.Sprintf("test-%v", key0), &cloudwatch.LogGroupArgs{
/// 				Name: pulumi.Sprintf("testing-%v", val0),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			test = append(test, __res)
/// 		}
/// 		_, err = cloudwatch.NewLogAnomalyDetector(ctx, "test", &cloudwatch.LogAnomalyDetectorArgs{
/// 			DetectorName: pulumi.String("testing"),
/// 			LogGroupArnLists: pulumi.StringArray{
/// 				test[0].Arn,
/// 			},
/// 			AnomalyVisibilityTime: pulumi.Int(7),
/// 			EvaluationFrequency:   pulumi.String("TEN_MIN"),
/// 			Enabled:               pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatch_loggroup" "test" {
///   count = 2
///   name  ="testing-${count.index}"
/// }
/// resource "aws_cloudwatch_loganomalydetector" "test" {
///   detector_name           = "testing"
///   log_group_arn_lists     = [aws_cloudwatch_loggroup.test[0].arn]
///   anomaly_visibility_time = 7
///   evaluation_frequency    = "TEN_MIN"
///   enabled                 = "false"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         for (var i = 0; i < 2; i++) {
///             new LogGroup("test-" + i, LogGroupArgs.builder()
///                 .name(String.format("testing-%s", range.value()))
///                 .build());
///
///
/// }
///         var testLogAnomalyDetector = new LogAnomalyDetector("testLogAnomalyDetector", LogAnomalyDetectorArgs.builder()
///             .detectorName("testing")
///             .logGroupArnLists(test[0].arn())
///             .anomalyVisibilityTime(7)
///             .evaluationFrequency("TEN_MIN")
///             .enabled(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: testing-${range.value}
///     options: {}
///   testLogAnomalyDetector:
///     type: aws:cloudwatch:LogAnomalyDetector
///     name: test
///     properties:
///       detectorName: testing
///       logGroupArnLists:
///         - ${test[0].arn}
///       anomalyVisibilityTime: 7
///       evaluationFrequency: TEN_MIN
///       enabled: 'false'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the anomaly detector.
///
///
/// Using `pulumi import`, import Anomaly Detectors using `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logAnomalyDetector:LogAnomalyDetector example arn:aws:logs:us-east-1:123456789012:anomaly-detector:1a2b3c4d-5e6f-7890-abcd-ef1234567890
/// ```
class LogAnomalyDetector extends pulumi.CustomResource {
  /// Number of days to have visibility on an anomaly. After this time period has elapsed for an anomaly, it will be automatically baselined and the anomaly detector will treat new occurrences of a similar anomaly as normal. Therefore, if you do not correct the cause of an anomaly during the time period specified in `anomalyVisibilityTime`, it will be considered normal going forward and will not be detected as an anomaly. Valid Range: Minimum value of 7. Maximum value of 90.
  late final pulumi.Output<int> anomalyVisibilityTime;
  /// ARN of the log anomaly detector that you just created.
  late final pulumi.Output<String> arn;
  /// Name for this anomaly detector.
  late final pulumi.Output<String?> detectorName;
  late final pulumi.Output<bool> enabled;
  /// Specifies how often the anomaly detector is to run and look for anomalies. Set this value according to the frequency that the log group receives new logs. For example, if the log group receives new log events every 10 minutes, then 15 minutes might be a good setting for `evaluationFrequency`. Valid Values: `ONE_MIN | FIVE_MIN | TEN_MIN | FIFTEEN_MIN | THIRTY_MIN | ONE_HOUR`.
  late final pulumi.Output<String?> evaluationFrequency;
  /// You can use this parameter to limit the anomaly detection model to examine only log events that match the pattern you specify here. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  late final pulumi.Output<String?> filterPattern;
  /// Optionally assigns a AWS KMS key to secure this anomaly detector and its findings. If a key is assigned, the anomalies found and the model used by this detector are encrypted at rest with the key. If a key is assigned to an anomaly detector, a user must have permissions for both this key and for the anomaly detector to retrieve information about the anomalies that it finds.
  late final pulumi.Output<String?> kmsKeyId;
  /// Array containing the ARN of the log group that this anomaly detector will watch. You can specify only one log group ARN.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> logGroupArnLists;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LogAnomalyDetector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogAnomalyDetector]. {@macro pulumi_cloudwatch_log_anomaly_detector_log_anomaly_detector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogAnomalyDetector(
    String name, {
    LogAnomalyDetectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logAnomalyDetector:LogAnomalyDetector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    anomalyVisibilityTime = registerOutput<int>('anomalyVisibilityTime');
    arn = registerOutput<String>('arn');
    detectorName = registerOutput<String?>('detectorName');
    enabled = registerOutput<bool>('enabled');
    evaluationFrequency = registerOutput<String?>('evaluationFrequency');
    filterPattern = registerOutput<String?>('filterPattern');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    logGroupArnLists = registerOutput<List<String>>('logGroupArnLists');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [LogAnomalyDetector] resource's state with the given [name] and [id].
  static LogAnomalyDetector get(
    String name,
    pulumi.Input<String> id, {
    LogAnomalyDetectorState? state,
  }) {
    return LogAnomalyDetector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogAnomalyDetector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logAnomalyDetector:LogAnomalyDetector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    anomalyVisibilityTime = registerOutput<int>('anomalyVisibilityTime');
    arn = registerOutput<String>('arn');
    detectorName = registerOutput<String?>('detectorName');
    enabled = registerOutput<bool>('enabled');
    evaluationFrequency = registerOutput<String?>('evaluationFrequency');
    filterPattern = registerOutput<String?>('filterPattern');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    logGroupArnLists = registerOutput<List<String>>('logGroupArnLists');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
