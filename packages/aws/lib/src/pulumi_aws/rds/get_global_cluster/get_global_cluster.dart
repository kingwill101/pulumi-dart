import 'package:pulumi/pulumi.dart';
import 'get_global_cluster_args.dart';
import 'get_global_cluster_result.dart';

/// Data source for managing an AWS RDS (Relational Database) Global Cluster.
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
/// const example = aws.rds.getGlobalCluster({
/// identifier: test.globalClusterIdentifier,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_global_cluster(identifier=test["globalClusterIdentifier"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Rds.GetGlobalCluster.Invoke(new()
/// {
/// Identifier = test.GlobalClusterIdentifier,
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
/// _, err := rds.LookupGlobalCluster(ctx, &rds.LookupGlobalClusterArgs{
/// Identifier: test.GlobalClusterIdentifier,
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
/// import com.pulumi.aws.rds.inputs.GetGlobalClusterArgs;
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
/// final var example = RdsFunctions.getGlobalCluster(GetGlobalClusterArgs.builder()
/// .identifier(test.globalClusterIdentifier())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:rds:getGlobalCluster
/// arguments:
/// identifier: ${test.globalClusterIdentifier}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetGlobalClusterResult> getGlobalCluster(
  GetGlobalClusterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getGlobalCluster:getGlobalCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalClusterResult.fromMap(result);
}
