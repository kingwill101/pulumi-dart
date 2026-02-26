import 'package:pulumi/pulumi.dart';
import 'get_cost_category_args.dart';
import 'get_cost_category_result.dart';

/// Provides details about a specific CostExplorer Cost Category.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.costexplorer.getCostCategory({
/// costCategoryArn: "costCategoryARN",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.costexplorer.get_cost_category(cost_category_arn="costCategoryARN")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.CostExplorer.GetCostCategory.Invoke(new()
/// {
/// CostCategoryArn = "costCategoryARN",
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
/// _, err := costexplorer.LookupCostCategory(ctx, &costexplorer.LookupCostCategoryArgs{
/// CostCategoryArn: "costCategoryARN",
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
/// import com.pulumi.aws.costexplorer.inputs.GetCostCategoryArgs;
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
/// final var example = CostexplorerFunctions.getCostCategory(GetCostCategoryArgs.builder()
/// .costCategoryArn("costCategoryARN")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:costexplorer:getCostCategory
/// arguments:
/// costCategoryArn: costCategoryARN
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCostCategoryResult> getCostCategory(
  GetCostCategoryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:costexplorer/getCostCategory:getCostCategory',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCostCategoryResult.fromMap(result);
}
