import 'package:pulumi/pulumi.dart';
import 'get_private_cloud_args.dart';
import 'get_private_cloud_result.dart';

/// Use this data source to get details about a private cloud resource.
///
/// To get more information about private cloud, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myPc = gcp.vmwareengine.getPrivateCloud({
/// name: "my-pc",
/// location: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_pc = gcp.vmwareengine.get_private_cloud(name="my-pc",
/// location="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myPc = Gcp.VMwareEngine.GetPrivateCloud.Invoke(new()
/// {
/// Name = "my-pc",
/// Location = "us-central1-a",
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
/// _, err := vmwareengine.LookupPrivateCloud(ctx, &vmwareengine.LookupPrivateCloudArgs{
/// Name:     "my-pc",
/// Location: "us-central1-a",
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
/// import com.pulumi.gcp.vmwareengine.inputs.GetPrivateCloudArgs;
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
/// final var myPc = VmwareengineFunctions.getPrivateCloud(GetPrivateCloudArgs.builder()
/// .name("my-pc")
/// .location("us-central1-a")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myPc:
/// fn::invoke:
/// function: gcp:vmwareengine:getPrivateCloud
/// arguments:
/// name: my-pc
/// location: us-central1-a
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPrivateCloudResult> getPrivateCloud(
  GetPrivateCloudArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getPrivateCloud:getPrivateCloud',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudResult.fromMap(result);
}
