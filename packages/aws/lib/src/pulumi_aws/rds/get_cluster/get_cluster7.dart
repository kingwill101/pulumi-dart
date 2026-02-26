import 'package:pulumi/pulumi.dart';
import 'get_cluster_args7.dart';
import 'get_cluster_result7.dart';

/// Provides information about an RDS cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const clusterName = aws.rds.getCluster({
/// clusterIdentifier: "clusterName",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cluster_name = aws.rds.get_cluster(cluster_identifier="clusterName")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var clusterName = Aws.Rds.GetCluster.Invoke(new()
/// {
/// ClusterIdentifier = "clusterName",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.LookupCluster(ctx, &rds.LookupClusterArgs{
/// ClusterIdentifier: "clusterName",
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
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetClusterArgs;
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
/// final var clusterName = RdsFunctions.getCluster(GetClusterArgs.builder()
/// .clusterIdentifier("clusterName")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// clusterName:
/// fn::invoke:
/// function: aws:rds:getCluster
/// arguments:
/// clusterIdentifier: clusterName
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterResult7> getCluster7(
  GetClusterArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult7.fromMap(result);
}
