import 'package:pulumi/pulumi.dart';
import 'get_discovered_workload_args.dart';
import 'get_discovered_workload_result.dart';

/// Get information about a discovered workload from its uri.
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_workload = gcp.apphub.getDiscoveredWorkload({
/// location: "us-central1",
/// workloadUri: "my-workload-uri",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_workload = gcp.apphub.get_discovered_workload(location="us-central1",
/// workload_uri="my-workload-uri")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_workload = Gcp.Apphub.GetDiscoveredWorkload.Invoke(new()
/// {
/// Location = "us-central1",
/// WorkloadUri = "my-workload-uri",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apphub.GetDiscoveredWorkload(ctx, &apphub.GetDiscoveredWorkloadArgs{
/// Location:    "us-central1",
/// WorkloadUri: "my-workload-uri",
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
/// import com.pulumi.gcp.apphub.ApphubFunctions;
/// import com.pulumi.gcp.apphub.inputs.GetDiscoveredWorkloadArgs;
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
/// final var my-workload = ApphubFunctions.getDiscoveredWorkload(GetDiscoveredWorkloadArgs.builder()
/// .location("us-central1")
/// .workloadUri("my-workload-uri")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-workload:
/// fn::invoke:
/// function: gcp:apphub:getDiscoveredWorkload
/// arguments:
/// location: us-central1
/// workloadUri: my-workload-uri
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDiscoveredWorkloadResult> getDiscoveredWorkload(
  GetDiscoveredWorkloadArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apphub/getDiscoveredWorkload:getDiscoveredWorkload',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDiscoveredWorkloadResult.fromMap(result);
}
