import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_detector_args.dart';
import 'get_detector_result.dart';
import 'get_finding_ids_args.dart';
import 'get_finding_ids_result.dart';

/// Retrieve information about a GuardDuty detector.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.guardduty.getDetector({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.guardduty.get_detector()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.GuardDuty.GetDetector.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/guardduty"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := guardduty.LookupDetector(ctx, &guardduty.LookupDetectorArgs{}, nil)
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
/// data "aws_guardduty_getdetector" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.guardduty.GuarddutyFunctions;
/// import com.pulumi.aws.guardduty.inputs.GetDetectorArgs;
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
///         final var example = GuarddutyFunctions.getDetector(GetDetectorArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:guardduty:getDetector
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_guardduty_get_detector_get_detector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDetectorResult> getDetector(
  GetDetectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:guardduty/getDetector:getDetector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDetectorResult.fromMap(result);
}

/// Data source for managing an AWS GuardDuty Finding Ids.
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
/// const example = aws.guardduty.getFindingIds({
///     detectorId: exampleAwsGuarddutyDetector.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.guardduty.get_finding_ids(detector_id=example_aws_guardduty_detector["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.GuardDuty.GetFindingIds.Invoke(new()
///     {
///         DetectorId = exampleAwsGuarddutyDetector.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/guardduty"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := guardduty.GetFindingIds(ctx, &guardduty.GetFindingIdsArgs{
/// 			DetectorId: exampleAwsGuarddutyDetector.Id,
/// 		}, nil)
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
/// data "aws_guardduty_getfindingids" "example" {
///   detector_id = exampleAwsGuarddutyDetector.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.guardduty.GuarddutyFunctions;
/// import com.pulumi.aws.guardduty.inputs.GetFindingIdsArgs;
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
///         final var example = GuarddutyFunctions.getFindingIds(GetFindingIdsArgs.builder()
///             .detectorId(exampleAwsGuarddutyDetector.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:guardduty:getFindingIds
///       arguments:
///         detectorId: ${exampleAwsGuarddutyDetector.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_guardduty_get_finding_ids_get_finding_ids_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFindingIdsResult> getFindingIds(
  GetFindingIdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:guardduty/getFindingIds:getFindingIds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFindingIdsResult.fromMap(result);
}
