import 'package:pulumi/pulumi.dart';
import 'get_environment_args.dart';
import 'get_environment_result.dart';

/// Provides access to an AppConfig Environment.
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
/// const example = aws.appconfig.getEnvironment({
/// applicationId: "b5d5gpj",
/// environmentId: "qrbb1c1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.get_environment(application_id="b5d5gpj",
/// environment_id="qrbb1c1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.AppConfig.GetEnvironment.Invoke(new()
/// {
/// ApplicationId = "b5d5gpj",
/// EnvironmentId = "qrbb1c1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appconfig.LookupEnvironment(ctx, &appconfig.LookupEnvironmentArgs{
/// ApplicationId: "b5d5gpj",
/// EnvironmentId: "qrbb1c1",
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
/// import com.pulumi.aws.appconfig.AppconfigFunctions;
/// import com.pulumi.aws.appconfig.inputs.GetEnvironmentArgs;
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
/// final var example = AppconfigFunctions.getEnvironment(GetEnvironmentArgs.builder()
/// .applicationId("b5d5gpj")
/// .environmentId("qrbb1c1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:appconfig:getEnvironment
/// arguments:
/// applicationId: b5d5gpj
/// environmentId: qrbb1c1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getEnvironment:getEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}
