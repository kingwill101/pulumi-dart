import 'package:pulumi/pulumi.dart';
import 'get_task_execution_args.dart';
import 'get_task_execution_result.dart';

/// Data source for managing an AWS ECS (Elastic Container) Task Execution. This data source calls the [RunTask](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html) API, allowing execution of one-time tasks that don't fit a standard resource lifecycle. See the feature request issue for additional context.
///
/// > **NOTE on preview operations:** This data source calls the `RunTask` API on every read operation, which means new task(s) may be created from a `pulumi preview` command if all attributes are known. Placing this functionality behind a data source is an intentional trade off to enable use cases requiring a one-time task execution without relying on provisioners. Caution should be taken to ensure the data source is only executed once, or that the resulting tasks can safely run in parallel.
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
/// const example = aws.ecs.getTaskExecution({
/// cluster: exampleAwsEcsCluster.id,
/// taskDefinition: exampleAwsEcsTaskDefinition.arn,
/// desiredCount: 1,
/// launchType: "FARGATE",
/// networkConfiguration: {
/// subnets: exampleAwsSubnet.map(__item => __item.id),
/// securityGroups: [exampleAwsSecurityGroup.id],
/// assignPublicIp: false,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.get_task_execution(cluster=example_aws_ecs_cluster["id"],
/// task_definition=example_aws_ecs_task_definition["arn"],
/// desired_count=1,
/// launch_type="FARGATE",
/// network_configuration={
/// "subnets": [__item["id"] for __item in example_aws_subnet],
/// "security_groups": [example_aws_security_group["id"]],
/// "assign_public_ip": False,
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
/// var example = Aws.Ecs.GetTaskExecution.Invoke(new()
/// {
/// Cluster = exampleAwsEcsCluster.Id,
/// TaskDefinition = exampleAwsEcsTaskDefinition.Arn,
/// DesiredCount = 1,
/// LaunchType = "FARGATE",
/// NetworkConfiguration = new Aws.Ecs.Inputs.GetTaskExecutionNetworkConfigurationInputArgs
/// {
/// Subnets = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
/// SecurityGroups = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// AssignPublicIp = false,
/// },
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.GetTaskExecution(ctx, &ecs.GetTaskExecutionArgs{
/// Cluster: exampleAwsEcsCluster.Id,
/// TaskDefinition: exampleAwsEcsTaskDefinition.Arn,
/// DesiredCount: pulumi.IntRef(1),
/// LaunchType: pulumi.StringRef("FARGATE"),
/// NetworkConfiguration: ecs.GetTaskExecutionNetworkConfiguration{
/// Subnets: []string(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:6,22-44)),
/// SecurityGroups: interface{}{
/// exampleAwsSecurityGroup.Id,
/// },
/// AssignPublicIp: pulumi.BoolRef(false),
/// },
/// }, nil);
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
/// import com.pulumi.aws.ecs.inputs.GetTaskExecutionArgs;
/// import com.pulumi.aws.ecs.inputs.GetTaskExecutionNetworkConfigurationArgs;
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
/// final var example = EcsFunctions.getTaskExecution(GetTaskExecutionArgs.builder()
/// .cluster(exampleAwsEcsCluster.id())
/// .taskDefinition(exampleAwsEcsTaskDefinition.arn())
/// .desiredCount(1)
/// .launchType("FARGATE")
/// .networkConfiguration(GetTaskExecutionNetworkConfigurationArgs.builder()
/// .subnets(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
/// .securityGroups(exampleAwsSecurityGroup.id())
/// .assignPublicIp(false)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTaskExecutionResult> getTaskExecution(
  GetTaskExecutionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getTaskExecution:getTaskExecution',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaskExecutionResult.fromMap(result);
}
