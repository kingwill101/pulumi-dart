import 'package:pulumi/pulumi.dart';
import 'get_contributor_managed_insight_rules_args.dart';
import 'get_contributor_managed_insight_rules_result.dart';

/// Data source for managing an AWS CloudWatch Contributor Managed Insight Rules.
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
/// const example = aws.cloudwatch.getContributorManagedInsightRules({
/// resourceArn: "arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.get_contributor_managed_insight_rules(resource_arn="arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.CloudWatch.GetContributorManagedInsightRules.Invoke(new()
/// {
/// ResourceArn = "arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.GetContributorManagedInsightRules(ctx, &cloudwatch.GetContributorManagedInsightRulesArgs{
/// ResourceArn: "arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid",
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
/// import com.pulumi.aws.cloudwatch.CloudwatchFunctions;
/// import com.pulumi.aws.cloudwatch.inputs.GetContributorManagedInsightRulesArgs;
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
/// final var example = CloudwatchFunctions.getContributorManagedInsightRules(GetContributorManagedInsightRulesArgs.builder()
/// .resourceArn("arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:cloudwatch:getContributorManagedInsightRules
/// arguments:
/// resourceArn: arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetContributorManagedInsightRulesResult>
    getContributorManagedInsightRules(
  GetContributorManagedInsightRulesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getContributorManagedInsightRules:getContributorManagedInsightRules',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContributorManagedInsightRulesResult.fromMap(result);
}
