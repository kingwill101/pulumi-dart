import 'package:pulumi/pulumi.dart';
import 'get_config_args.dart';
import 'get_config_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const run_service = gcp.runtimeconfig.getConfig({
/// name: "my-service",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// run_service = gcp.runtimeconfig.get_config(name="my-service")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var run_service = Gcp.RuntimeConfig.GetConfig.Invoke(new()
/// {
/// Name = "my-service",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/runtimeconfig"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := runtimeconfig.LookupConfig(ctx, &runtimeconfig.LookupConfigArgs{
/// Name: "my-service",
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
/// import com.pulumi.gcp.runtimeconfig.RuntimeconfigFunctions;
/// import com.pulumi.gcp.runtimeconfig.inputs.GetConfigArgs;
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
/// final var run-service = RuntimeconfigFunctions.getConfig(GetConfigArgs.builder()
/// .name("my-service")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// run-service:
/// fn::invoke:
/// function: gcp:runtimeconfig:getConfig
/// arguments:
/// name: my-service
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConfigResult> getConfig(
  GetConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:runtimeconfig/getConfig:getConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConfigResult.fromMap(result);
}
