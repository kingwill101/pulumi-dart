import 'package:pulumi/pulumi.dart';
import 'get_cloud_vm_cluster_args.dart';
import 'get_cloud_vm_cluster_result.dart';

/// Get information about a CloudVmCluster.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudVmClusters).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_vmcluster = gcp.oracledatabase.getCloudVmCluster({
/// location: "us-east4",
/// cloudVmClusterId: "vmcluster-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_vmcluster = gcp.oracledatabase.get_cloud_vm_cluster(location="us-east4",
/// cloud_vm_cluster_id="vmcluster-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_vmcluster = Gcp.OracleDatabase.GetCloudVmCluster.Invoke(new()
/// {
/// Location = "us-east4",
/// CloudVmClusterId = "vmcluster-id",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := oracledatabase.LookupCloudVmCluster(ctx, &oracledatabase.LookupCloudVmClusterArgs{
/// Location:         "us-east4",
/// CloudVmClusterId: "vmcluster-id",
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
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetCloudVmClusterArgs;
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
/// final var my-vmcluster = OracledatabaseFunctions.getCloudVmCluster(GetCloudVmClusterArgs.builder()
/// .location("us-east4")
/// .cloudVmClusterId("vmcluster-id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-vmcluster:
/// fn::invoke:
/// function: gcp:oracledatabase:getCloudVmCluster
/// arguments:
/// location: us-east4
/// cloudVmClusterId: vmcluster-id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCloudVmClusterResult> getCloudVmCluster(
  GetCloudVmClusterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudVmCluster:getCloudVmCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCloudVmClusterResult.fromMap(result);
}
