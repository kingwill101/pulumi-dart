import 'package:pulumi/pulumi.dart';
import 'get_cluster_args4.dart';
import 'get_cluster_result4.dart';

/// Use this data source to get information about an ElastiCache Cluster
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myCluster = aws.elasticache.getCluster({
/// clusterId: "my-cluster-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_cluster = aws.elasticache.get_cluster(cluster_id="my-cluster-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myCluster = Aws.ElastiCache.GetCluster.Invoke(new()
/// {
/// ClusterId = "my-cluster-id",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := elasticache.LookupCluster(ctx, &elasticache.LookupClusterArgs{
/// ClusterId: "my-cluster-id",
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
/// import com.pulumi.aws.elasticache.ElasticacheFunctions;
/// import com.pulumi.aws.elasticache.inputs.GetClusterArgs;
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
/// final var myCluster = ElasticacheFunctions.getCluster(GetClusterArgs.builder()
/// .clusterId("my-cluster-id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myCluster:
/// fn::invoke:
/// function: aws:elasticache:getCluster
/// arguments:
/// clusterId: my-cluster-id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterResult4> getCluster4(
  GetClusterArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult4.fromMap(result);
}
