import 'package:pulumi/pulumi.dart';
import 'get_lbs_args.dart';
import 'get_lbs_result.dart';

/// Use this data source to get a list of Load Balancer ARNs matching the specified criteria. Useful for passing to other
/// resources.
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
/// const example = aws.lb.getLbs({
/// tags: {
/// "elbv2.k8s.aws/cluster": "my-cluster",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lb.get_lbs(tags={
/// "elbv2.k8s.aws/cluster": "my-cluster",
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
/// var example = Aws.LB.GetLbs.Invoke(new()
/// {
/// Tags =
/// {
/// { "elbv2.k8s.aws/cluster", "my-cluster" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lb.GetLbs(ctx, &lb.GetLbsArgs{
/// Tags: map[string]interface{}{
/// "elbv2.k8s.aws/cluster": "my-cluster",
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
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetLbsArgs;
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
/// final var example = LbFunctions.getLbs(GetLbsArgs.builder()
/// .tags(Map.of("elbv2.k8s.aws/cluster", "my-cluster"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lb:getLbs
/// arguments:
/// tags:
/// elbv2.k8s.aws/cluster: my-cluster
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLbsResult> getLbs(
  GetLbsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getLbs:getLbs',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLbsResult.fromMap(result);
}
