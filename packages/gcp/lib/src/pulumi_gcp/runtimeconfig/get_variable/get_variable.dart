import 'package:pulumi/pulumi.dart';
import 'get_variable_args.dart';
import 'get_variable_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const run_service = gcp.runtimeconfig.getVariable({
/// parent: "my-service",
/// name: "prod-variables/hostname",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// run_service = gcp.runtimeconfig.get_variable(parent="my-service",
/// name="prod-variables/hostname")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var run_service = Gcp.RuntimeConfig.GetVariable.Invoke(new()
/// {
/// Parent = "my-service",
/// Name = "prod-variables/hostname",
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
/// _, err := runtimeconfig.LookupVariable(ctx, &runtimeconfig.LookupVariableArgs{
/// Parent: "my-service",
/// Name:   "prod-variables/hostname",
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
/// import com.pulumi.gcp.runtimeconfig.inputs.GetVariableArgs;
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
/// final var run-service = RuntimeconfigFunctions.getVariable(GetVariableArgs.builder()
/// .parent("my-service")
/// .name("prod-variables/hostname")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// run-service:
/// fn::invoke:
/// function: gcp:runtimeconfig:getVariable
/// arguments:
/// parent: my-service
/// name: prod-variables/hostname
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVariableResult> getVariable(
  GetVariableArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:runtimeconfig/getVariable:getVariable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVariableResult.fromMap(result);
}
