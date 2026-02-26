import 'package:pulumi/pulumi.dart';
import 'get_runtime_versions_args.dart';
import 'get_runtime_versions_result.dart';

/// Data source for managing an AWS CloudWatch Synthetics Runtime Versions.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.synthetics.getRuntimeVersions({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.synthetics.get_runtime_versions()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Synthetics.GetRuntimeVersions.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/synthetics"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := synthetics.GetRuntimeVersions(ctx, &synthetics.GetRuntimeVersionsArgs{}, nil)
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
/// import com.pulumi.aws.synthetics.SyntheticsFunctions;
/// import com.pulumi.aws.synthetics.inputs.GetRuntimeVersionsArgs;
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
/// final var example = SyntheticsFunctions.getRuntimeVersions(GetRuntimeVersionsArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:synthetics:getRuntimeVersions
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRuntimeVersionsResult> getRuntimeVersions(
  GetRuntimeVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:synthetics/getRuntimeVersions:getRuntimeVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuntimeVersionsResult.fromMap(result);
}
