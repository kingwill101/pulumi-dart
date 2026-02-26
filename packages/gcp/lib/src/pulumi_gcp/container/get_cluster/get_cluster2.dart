import 'package:pulumi/pulumi.dart';
import 'get_cluster_args2.dart';
import 'get_cluster_result2.dart';

/// Get info about a GKE cluster from its name and location.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myCluster = gcp.container.getCluster({
/// name: "my-cluster",
/// location: "us-east1-a",
/// });
/// export const endpoint = myCluster.then(myCluster => myCluster.endpoint);
/// export const instanceGroupUrls = myCluster.then(myCluster => myCluster.nodePools?.[0]?.instanceGroupUrls);
/// export const nodeConfig = myCluster.then(myCluster => myCluster.nodeConfigs);
/// export const nodePools = myCluster.then(myCluster => myCluster.nodePools);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_cluster = gcp.container.get_cluster(name="my-cluster",
/// location="us-east1-a")
/// pulumi.export("endpoint", my_cluster.endpoint)
/// pulumi.export("instanceGroupUrls", my_cluster.node_pools[0].instance_group_urls)
/// pulumi.export("nodeConfig", my_cluster.node_configs)
/// pulumi.export("nodePools", my_cluster.node_pools)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myCluster = Gcp.Container.GetCluster.Invoke(new()
/// {
/// Name = "my-cluster",
/// Location = "us-east1-a",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["endpoint"] = myCluster.Apply(getClusterResult => getClusterResult.Endpoint),
/// ["instanceGroupUrls"] = myCluster.Apply(getClusterResult => getClusterResult.NodePools[0]?.InstanceGroupUrls),
/// ["nodeConfig"] = myCluster.Apply(getClusterResult => getClusterResult.NodeConfigs),
/// ["nodePools"] = myCluster.Apply(getClusterResult => getClusterResult.NodePools),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myCluster, err := container.LookupCluster(ctx, &container.LookupClusterArgs{
/// Name:     "my-cluster",
/// Location: pulumi.StringRef("us-east1-a"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("endpoint", myCluster.Endpoint)
/// ctx.Export("instanceGroupUrls", myCluster.NodePools[0].InstanceGroupUrls)
/// ctx.Export("nodeConfig", myCluster.NodeConfigs)
/// ctx.Export("nodePools", myCluster.NodePools)
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
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetClusterArgs;
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
/// final var myCluster = ContainerFunctions.getCluster(GetClusterArgs.builder()
/// .name("my-cluster")
/// .location("us-east1-a")
/// .build());
///
/// ctx.export("endpoint", myCluster.endpoint());
/// ctx.export("instanceGroupUrls", myCluster.nodePools()[0].instanceGroupUrls());
/// ctx.export("nodeConfig", myCluster.nodeConfigs());
/// ctx.export("nodePools", myCluster.nodePools());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myCluster:
/// fn::invoke:
/// function: gcp:container:getCluster
/// arguments:
/// name: my-cluster
/// location: us-east1-a
/// outputs:
/// endpoint: ${myCluster.endpoint}
/// instanceGroupUrls: ${myCluster.nodePools[0].instanceGroupUrls}
/// nodeConfig: ${myCluster.nodeConfigs}
/// nodePools: ${myCluster.nodePools}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterResult2> getCluster2(
  GetClusterArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult2.fromMap(result);
}
