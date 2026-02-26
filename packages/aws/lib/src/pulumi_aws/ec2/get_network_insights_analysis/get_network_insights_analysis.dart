import 'package:pulumi/pulumi.dart';
import 'get_network_insights_analysis_args.dart';
import 'get_network_insights_analysis_result.dart';

/// <span pulumi-lang-nodejs="`aws.ec2.NetworkInsightsAnalysis`" pulumi-lang-dotnet="`aws.ec2.NetworkInsightsAnalysis`" pulumi-lang-go="`ec2.NetworkInsightsAnalysis`" pulumi-lang-python="`ec2.NetworkInsightsAnalysis`" pulumi-lang-yaml="`aws.ec2.NetworkInsightsAnalysis`" pulumi-lang-java="`aws.ec2.NetworkInsightsAnalysis`">`aws.ec2.NetworkInsightsAnalysis`</span> provides details about a specific Network Insights Analysis.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getNetworkInsightsAnalysis({
/// networkInsightsAnalysisId: exampleAwsEc2NetworkInsightsAnalysis.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_insights_analysis(network_insights_analysis_id=example_aws_ec2_network_insights_analysis["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetNetworkInsightsAnalysis.Invoke(new()
/// {
/// NetworkInsightsAnalysisId = exampleAwsEc2NetworkInsightsAnalysis.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.LookupNetworkInsightsAnalysis(ctx, &ec2.LookupNetworkInsightsAnalysisArgs{
/// NetworkInsightsAnalysisId: pulumi.StringRef(exampleAwsEc2NetworkInsightsAnalysis.Id),
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkInsightsAnalysisArgs;
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
/// final var example = Ec2Functions.getNetworkInsightsAnalysis(GetNetworkInsightsAnalysisArgs.builder()
/// .networkInsightsAnalysisId(exampleAwsEc2NetworkInsightsAnalysis.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getNetworkInsightsAnalysis
/// arguments:
/// networkInsightsAnalysisId: ${exampleAwsEc2NetworkInsightsAnalysis.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetworkInsightsAnalysisResult> getNetworkInsightsAnalysis(
  GetNetworkInsightsAnalysisArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkInsightsAnalysis:getNetworkInsightsAnalysis',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkInsightsAnalysisResult.fromMap(result);
}
