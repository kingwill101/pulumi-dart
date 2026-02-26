import 'package:pulumi/pulumi.dart';
import 'get_v2_runtime_versions_args.dart';
import 'get_v2_runtime_versions_result.dart';

/// Get runtime versions available for a project. For more information see the [official documentation](https://cloud.google.com/tpu/docs/) and [API](https://cloud.google.com/tpu/docs/reference/rest/v2/projects.locations.runtimeVersions).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const available = gcp.tpu.getV2RuntimeVersions({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// available = gcp.tpu.get_v2_runtime_versions()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Gcp.Tpu.GetV2RuntimeVersions.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tpu"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := tpu.GetV2RuntimeVersions(ctx, &tpu.GetV2RuntimeVersionsArgs{}, nil)
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
/// import com.pulumi.gcp.tpu.TpuFunctions;
/// import com.pulumi.gcp.tpu.inputs.GetV2RuntimeVersionsArgs;
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
/// final var available = TpuFunctions.getV2RuntimeVersions(GetV2RuntimeVersionsArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// available:
/// fn::invoke:
/// function: gcp:tpu:getV2RuntimeVersions
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ### Configure Basic TPU VM With Available Version
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const available = gcp.tpu.getV2RuntimeVersions({});
/// const tpu = new gcp.tpu.V2Vm("tpu", {
/// name: "test-tpu",
/// zone: "us-central1-b",
/// runtimeVersion: available.then(available => available.versions?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// available = gcp.tpu.get_v2_runtime_versions()
/// tpu = gcp.tpu.V2Vm("tpu",
/// name="test-tpu",
/// zone="us-central1-b",
/// runtime_version=available.versions[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Gcp.Tpu.GetV2RuntimeVersions.Invoke();
///
/// var tpu = new Gcp.Tpu.V2Vm("tpu", new()
/// {
/// Name = "test-tpu",
/// Zone = "us-central1-b",
/// RuntimeVersion = available.Apply(getV2RuntimeVersionsResult => getV2RuntimeVersionsResult.Versions[0]),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tpu"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// available, err := tpu.GetV2RuntimeVersions(ctx, &tpu.GetV2RuntimeVersionsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = tpu.NewV2Vm(ctx, "tpu", &tpu.V2VmArgs{
/// Name:           pulumi.String("test-tpu"),
/// Zone:           pulumi.String("us-central1-b"),
/// RuntimeVersion: pulumi.String(available.Versions[0]),
/// })
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
/// import com.pulumi.gcp.tpu.TpuFunctions;
/// import com.pulumi.gcp.tpu.inputs.GetV2RuntimeVersionsArgs;
/// import com.pulumi.gcp.tpu.V2Vm;
/// import com.pulumi.gcp.tpu.V2VmArgs;
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
/// final var available = TpuFunctions.getV2RuntimeVersions(GetV2RuntimeVersionsArgs.builder()
/// .build());
///
/// var tpu = new V2Vm("tpu", V2VmArgs.builder()
/// .name("test-tpu")
/// .zone("us-central1-b")
/// .runtimeVersion(available.versions()[0])
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// tpu:
/// type: gcp:tpu:V2Vm
/// properties:
/// name: test-tpu
/// zone: us-central1-b
/// runtimeVersion: ${available.versions[0]}
/// variables:
/// available:
/// fn::invoke:
/// function: gcp:tpu:getV2RuntimeVersions
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetV2RuntimeVersionsResult> getV2RuntimeVersions(
  GetV2RuntimeVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tpu/getV2RuntimeVersions:getV2RuntimeVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetV2RuntimeVersionsResult.fromMap(result);
}
