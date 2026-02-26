import 'package:pulumi/pulumi.dart';
import 'get_custom_plugin_args.dart';
import 'get_custom_plugin_result.dart';

/// Get information on an Amazon MSK Connect custom plugin.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.mskconnect.getCustomPlugin({
/// name: "example-debezium-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mskconnect.get_custom_plugin(name="example-debezium-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.MskConnect.GetCustomPlugin.Invoke(new()
/// {
/// Name = "example-debezium-1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mskconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := mskconnect.LookupCustomPlugin(ctx, &mskconnect.LookupCustomPluginArgs{
/// Name: "example-debezium-1",
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
/// import com.pulumi.aws.mskconnect.MskconnectFunctions;
/// import com.pulumi.aws.mskconnect.inputs.GetCustomPluginArgs;
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
/// final var example = MskconnectFunctions.getCustomPlugin(GetCustomPluginArgs.builder()
/// .name("example-debezium-1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:mskconnect:getCustomPlugin
/// arguments:
/// name: example-debezium-1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCustomPluginResult> getCustomPlugin(
  GetCustomPluginArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mskconnect/getCustomPlugin:getCustomPlugin',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomPluginResult.fromMap(result);
}
