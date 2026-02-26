import 'package:pulumi/pulumi.dart';
import 'get_finding_ids_args.dart';
import 'get_finding_ids_result.dart';

/// Data source for managing an AWS GuardDuty Finding Ids.
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
/// const example = aws.guardduty.getFindingIds({
/// detectorId: exampleAwsGuarddutyDetector.id,
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
/// var example = Aws.GuardDuty.GetFindingIds.Invoke(new()
/// {
/// DetectorId = exampleAwsGuarddutyDetector.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/guardduty"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := guardduty.GetFindingIds(ctx, &guardduty.GetFindingIdsArgs{
/// DetectorId: exampleAwsGuarddutyDetector.Id,
/// }, nil)
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
/// import com.pulumi.aws.guardduty.GuarddutyFunctions;
/// import com.pulumi.aws.guardduty.inputs.GetFindingIdsArgs;
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
/// final var example = GuarddutyFunctions.getFindingIds(GetFindingIdsArgs.builder()
/// .detectorId(exampleAwsGuarddutyDetector.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:guardduty:getFindingIds
/// arguments:
/// detectorId: ${exampleAwsGuarddutyDetector.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFindingIdsResult> getFindingIds(
  GetFindingIdsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:guardduty/getFindingIds:getFindingIds',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFindingIdsResult.fromMap(result);
}
