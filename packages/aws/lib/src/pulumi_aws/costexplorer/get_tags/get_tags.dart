import 'package:pulumi/pulumi.dart';
import 'get_tags_args.dart';
import 'get_tags_result.dart';

/// Provides the available cost allocation tag keys and tag values for a specified period.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.costexplorer.getTags({
/// timePeriod: {
/// start: "2021-01-01",
/// end: "2022-12-01",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.costexplorer.get_tags(time_period={
/// "start": "2021-01-01",
/// "end": "2022-12-01",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.CostExplorer.GetTags.Invoke(new()
/// {
/// TimePeriod = new Aws.CostExplorer.Inputs.GetTagsTimePeriodInputArgs
/// {
/// Start = "2021-01-01",
/// End = "2022-12-01",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costexplorer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := costexplorer.GetTags(ctx, &costexplorer.GetTagsArgs{
/// TimePeriod: costexplorer.GetTagsTimePeriod{
/// Start: "2021-01-01",
/// End:   "2022-12-01",
/// },
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
/// import com.pulumi.aws.costexplorer.CostexplorerFunctions;
/// import com.pulumi.aws.costexplorer.inputs.GetTagsArgs;
/// import com.pulumi.aws.costexplorer.inputs.GetTagsTimePeriodArgs;
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
/// final var test = CostexplorerFunctions.getTags(GetTagsArgs.builder()
/// .timePeriod(GetTagsTimePeriodArgs.builder()
/// .start("2021-01-01")
/// .end("2022-12-01")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:costexplorer:getTags
/// arguments:
/// timePeriod:
/// start: 2021-01-01
/// end: 2022-12-01
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTagsResult> getTags(
  GetTagsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:costexplorer/getTags:getTags',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagsResult.fromMap(result);
}
