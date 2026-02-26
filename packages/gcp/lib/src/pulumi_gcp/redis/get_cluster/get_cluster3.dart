import 'package:pulumi/pulumi.dart';
import 'get_cluster_args3.dart';
import 'get_cluster_result3.dart';

/// Use this data source to get information about a Redis Cluster. For more details, see the [API documentation](https://cloud.google.com/memorystore/docs/cluster/reference/rest/v1/projects.locations.clusters).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.redis.getCluster({
/// name: "my-redis-cluster",
/// region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.redis.get_cluster(name="my-redis-cluster",
/// region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.Redis.GetCluster.Invoke(new()
/// {
/// Name = "my-redis-cluster",
/// Region = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redis.LookupCluster(ctx, &redis.LookupClusterArgs{
/// Name:   "my-redis-cluster",
/// Region: pulumi.StringRef("us-central1"),
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
/// import com.pulumi.gcp.redis.RedisFunctions;
/// import com.pulumi.gcp.redis.inputs.GetClusterArgs;
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
/// final var default = RedisFunctions.getCluster(GetClusterArgs.builder()
/// .name("my-redis-cluster")
/// .region("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:redis:getCluster
/// arguments:
/// name: my-redis-cluster
/// region: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterResult3> getCluster3(
  GetClusterArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:redis/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult3.fromMap(result);
}
