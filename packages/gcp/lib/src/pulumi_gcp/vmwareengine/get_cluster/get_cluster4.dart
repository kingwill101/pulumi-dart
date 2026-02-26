import 'package:pulumi/pulumi.dart';
import 'get_cluster_args4.dart';
import 'get_cluster_result4.dart';

/// Use this data source to get details about a cluster resource.
///
/// To get more information about private cloud cluster, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.clusters)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myCluster = gcp.vmwareengine.getCluster({
/// name: "my-cluster",
/// parent: "project/locations/us-west1-a/privateClouds/my-cloud",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_cluster = gcp.vmwareengine.get_cluster(name="my-cluster",
/// parent="project/locations/us-west1-a/privateClouds/my-cloud")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myCluster = Gcp.VMwareEngine.GetCluster.Invoke(new()
/// {
/// Name = "my-cluster",
/// Parent = "project/locations/us-west1-a/privateClouds/my-cloud",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vmwareengine.LookupCluster(ctx, &vmwareengine.LookupClusterArgs{
/// Name:   "my-cluster",
/// Parent: "project/locations/us-west1-a/privateClouds/my-cloud",
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
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetClusterArgs;
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
/// final var myCluster = VmwareengineFunctions.getCluster(GetClusterArgs.builder()
/// .name("my-cluster")
/// .parent("project/locations/us-west1-a/privateClouds/my-cloud")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myCluster:
/// fn::invoke:
/// function: gcp:vmwareengine:getCluster
/// arguments:
/// name: my-cluster
/// parent: project/locations/us-west1-a/privateClouds/my-cloud
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterResult4> getCluster4(
  GetClusterArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult4.fromMap(result);
}
