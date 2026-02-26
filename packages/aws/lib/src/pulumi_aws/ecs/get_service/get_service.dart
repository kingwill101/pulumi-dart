import 'package:pulumi/pulumi.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// The ECS Service data source allows access to details of a specific
/// Service within a AWS ECS Cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ecs.getService({
/// serviceName: "example",
/// clusterArn: exampleAwsEcsCluster.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.get_service(service_name="example",
/// cluster_arn=example_aws_ecs_cluster["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ecs.GetService.Invoke(new()
/// {
/// ServiceName = "example",
/// ClusterArn = exampleAwsEcsCluster.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.LookupService(ctx, &ecs.LookupServiceArgs{
/// ServiceName: "example",
/// ClusterArn:  exampleAwsEcsCluster.Arn,
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
/// import com.pulumi.aws.ecs.EcsFunctions;
/// import com.pulumi.aws.ecs.inputs.GetServiceArgs;
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
/// final var example = EcsFunctions.getService(GetServiceArgs.builder()
/// .serviceName("example")
/// .clusterArn(exampleAwsEcsCluster.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ecs:getService
/// arguments:
/// serviceName: example
/// clusterArn: ${exampleAwsEcsCluster.arn}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getService:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
