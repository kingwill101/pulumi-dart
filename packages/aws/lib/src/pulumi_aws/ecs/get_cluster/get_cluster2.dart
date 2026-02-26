import 'package:pulumi/pulumi.dart';
import 'get_cluster_args2.dart';
import 'get_cluster_result2.dart';

/// The ECS Cluster data source allows access to details of a specific
/// cluster within an AWS ECS service.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ecs_mongo = aws.ecs.getCluster({
/// clusterName: "ecs-mongo-production",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ecs_mongo = aws.ecs.get_cluster(cluster_name="ecs-mongo-production")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ecs_mongo = Aws.Ecs.GetCluster.Invoke(new()
/// {
/// ClusterName = "ecs-mongo-production",
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
/// _, err := ecs.LookupCluster(ctx, &ecs.LookupClusterArgs{
/// ClusterName: "ecs-mongo-production",
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
/// import com.pulumi.aws.ecs.inputs.GetClusterArgs;
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
/// final var ecs-mongo = EcsFunctions.getCluster(GetClusterArgs.builder()
/// .clusterName("ecs-mongo-production")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// ecs-mongo:
/// fn::invoke:
/// function: aws:ecs:getCluster
/// arguments:
/// clusterName: ecs-mongo-production
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterResult2> getCluster2(
  GetClusterArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult2.fromMap(result);
}
