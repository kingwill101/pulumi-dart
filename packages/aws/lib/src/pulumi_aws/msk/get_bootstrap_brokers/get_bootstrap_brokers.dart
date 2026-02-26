import 'package:pulumi/pulumi.dart';
import 'get_bootstrap_brokers_args.dart';
import 'get_bootstrap_brokers_result.dart';

/// Get a list of brokers that a client application can use to bootstrap.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.msk.getBootstrapBrokers({
/// clusterArn: exampleAwsMskCluster.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.get_bootstrap_brokers(cluster_arn=example_aws_msk_cluster["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Msk.GetBootstrapBrokers.Invoke(new()
/// {
/// ClusterArn = exampleAwsMskCluster.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := msk.GetBootstrapBrokers(ctx, &msk.GetBootstrapBrokersArgs{
/// ClusterArn: exampleAwsMskCluster.Arn,
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
/// import com.pulumi.aws.msk.MskFunctions;
/// import com.pulumi.aws.msk.inputs.GetBootstrapBrokersArgs;
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
/// final var example = MskFunctions.getBootstrapBrokers(GetBootstrapBrokersArgs.builder()
/// .clusterArn(exampleAwsMskCluster.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:msk:getBootstrapBrokers
/// arguments:
/// clusterArn: ${exampleAwsMskCluster.arn}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBootstrapBrokersResult> getBootstrapBrokers(
  GetBootstrapBrokersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getBootstrapBrokers:getBootstrapBrokers',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBootstrapBrokersResult.fromMap(result);
}
