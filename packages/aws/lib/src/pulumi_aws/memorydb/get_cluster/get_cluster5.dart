import 'package:pulumi/pulumi.dart';
import 'get_cluster_args5.dart';
import 'get_cluster_result5.dart';

/// Provides information about a MemoryDB Cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.memorydb.getCluster({
/// name: "my-cluster",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.get_cluster(name="my-cluster")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.MemoryDb.GetCluster.Invoke(new()
/// {
/// Name = "my-cluster",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := memorydb.LookupCluster(ctx, &memorydb.LookupClusterArgs{
/// Name: "my-cluster",
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
/// import com.pulumi.aws.memorydb.MemorydbFunctions;
/// import com.pulumi.aws.memorydb.inputs.GetClusterArgs;
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
/// final var example = MemorydbFunctions.getCluster(GetClusterArgs.builder()
/// .name("my-cluster")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:memorydb:getCluster
/// arguments:
/// name: my-cluster
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterResult5> getCluster5(
  GetClusterArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult5.fromMap(result);
}
