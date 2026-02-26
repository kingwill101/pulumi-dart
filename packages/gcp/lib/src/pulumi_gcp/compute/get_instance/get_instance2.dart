import 'package:pulumi/pulumi.dart';
import 'get_instance_args2.dart';
import 'get_instance_result2.dart';

/// Get information about a VM instance resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instances)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instances).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appserver = gcp.compute.getInstance({
/// name: "primary-application-server",
/// zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// appserver = gcp.compute.get_instance(name="primary-application-server",
/// zone="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var appserver = Gcp.Compute.GetInstance.Invoke(new()
/// {
/// Name = "primary-application-server",
/// Zone = "us-central1-a",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.LookupInstance(ctx, &compute.LookupInstanceArgs{
/// Name: pulumi.StringRef("primary-application-server"),
/// Zone: pulumi.StringRef("us-central1-a"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceArgs;
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
/// final var appserver = ComputeFunctions.getInstance(GetInstanceArgs.builder()
/// .name("primary-application-server")
/// .zone("us-central1-a")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// appserver:
/// fn::invoke:
/// function: gcp:compute:getInstance
/// arguments:
/// name: primary-application-server
/// zone: us-central1-a
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceResult2> getInstance2(
  GetInstanceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult2.fromMap(result);
}
