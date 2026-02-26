import 'package:pulumi/pulumi.dart';
import 'get_network_insights_path_args.dart';
import 'get_network_insights_path_result.dart';

/// <span pulumi-lang-nodejs="`aws.ec2.NetworkInsightsPath`" pulumi-lang-dotnet="`aws.ec2.NetworkInsightsPath`" pulumi-lang-go="`ec2.NetworkInsightsPath`" pulumi-lang-python="`ec2.NetworkInsightsPath`" pulumi-lang-yaml="`aws.ec2.NetworkInsightsPath`" pulumi-lang-java="`aws.ec2.NetworkInsightsPath`">`aws.ec2.NetworkInsightsPath`</span> provides details about a specific Network Insights Path.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getNetworkInsightsPath({
/// networkInsightsPathId: exampleAwsEc2NetworkInsightsPath.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_insights_path(network_insights_path_id=example_aws_ec2_network_insights_path["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetNetworkInsightsPath.Invoke(new()
/// {
/// NetworkInsightsPathId = exampleAwsEc2NetworkInsightsPath.Id,
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
/// _, err := ec2.LookupNetworkInsightsPath(ctx, &ec2.LookupNetworkInsightsPathArgs{
/// NetworkInsightsPathId: pulumi.StringRef(exampleAwsEc2NetworkInsightsPath.Id),
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
/// import com.pulumi.aws.ec2.inputs.GetNetworkInsightsPathArgs;
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
/// final var example = Ec2Functions.getNetworkInsightsPath(GetNetworkInsightsPathArgs.builder()
/// .networkInsightsPathId(exampleAwsEc2NetworkInsightsPath.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getNetworkInsightsPath
/// arguments:
/// networkInsightsPathId: ${exampleAwsEc2NetworkInsightsPath.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetworkInsightsPathResult> getNetworkInsightsPath(
  GetNetworkInsightsPathArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkInsightsPath:getNetworkInsightsPath',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkInsightsPathResult.fromMap(result);
}
