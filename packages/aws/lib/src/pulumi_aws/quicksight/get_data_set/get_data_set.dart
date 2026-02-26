import 'package:pulumi/pulumi.dart';
import 'get_data_set_args.dart';
import 'get_data_set_result.dart';

/// Data source for managing a QuickSight Data Set.
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
/// const example = aws.quicksight.getDataSet({
/// dataSetId: "example-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.get_data_set(data_set_id="example-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Quicksight.GetDataSet.Invoke(new()
/// {
/// DataSetId = "example-id",
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
/// _, err := quicksight.LookupDataSet(ctx, &quicksight.LookupDataSetArgs{
/// DataSetId: "example-id",
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
/// import com.pulumi.aws.quicksight.inputs.GetDataSetArgs;
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
/// final var example = QuicksightFunctions.getDataSet(GetDataSetArgs.builder()
/// .dataSetId("example-id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:quicksight:getDataSet
/// arguments:
/// dataSetId: example-id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDataSetResult> getDataSet(
  GetDataSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:quicksight/getDataSet:getDataSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataSetResult.fromMap(result);
}
