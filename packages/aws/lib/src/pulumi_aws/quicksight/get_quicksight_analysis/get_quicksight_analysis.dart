import 'package:pulumi/pulumi.dart';
import 'get_quicksight_analysis_args.dart';
import 'get_quicksight_analysis_result.dart';

/// Data source for managing an AWS QuickSight Analysis.
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
/// const example = aws.quicksight.getQuicksightAnalysis({
/// analysisId: "example-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.get_quicksight_analysis(analysis_id="example-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Quicksight.GetQuicksightAnalysis.Invoke(new()
/// {
/// AnalysisId = "example-id",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := quicksight.GetQuicksightAnalysis(ctx, &quicksight.GetQuicksightAnalysisArgs{
/// AnalysisId: "example-id",
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
/// import com.pulumi.aws.quicksight.QuicksightFunctions;
/// import com.pulumi.aws.quicksight.inputs.GetQuicksightAnalysisArgs;
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
/// final var example = QuicksightFunctions.getQuicksightAnalysis(GetQuicksightAnalysisArgs.builder()
/// .analysisId("example-id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:quicksight:getQuicksightAnalysis
/// arguments:
/// analysisId: example-id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetQuicksightAnalysisResult> getQuicksightAnalysis(
  GetQuicksightAnalysisArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:quicksight/getQuicksightAnalysis:getQuicksightAnalysis',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQuicksightAnalysisResult.fromMap(result);
}
