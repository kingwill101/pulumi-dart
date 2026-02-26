import 'package:pulumi/pulumi.dart';
import 'get_application_args.dart';
import 'get_application_result.dart';

/// Provides details about an AWS AppConfig Application.
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
/// const example = aws.appconfig.getApplication({
/// name: "my-appconfig-application",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.get_application(name="my-appconfig-application")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.AppConfig.GetApplication.Invoke(new()
/// {
/// Name = "my-appconfig-application",
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
/// _, err := appconfig.LookupApplication(ctx, &appconfig.LookupApplicationArgs{
/// Name: pulumi.StringRef("my-appconfig-application"),
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
/// import com.pulumi.aws.appconfig.inputs.GetApplicationArgs;
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
/// final var example = AppconfigFunctions.getApplication(GetApplicationArgs.builder()
/// .name("my-appconfig-application")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:appconfig:getApplication
/// arguments:
/// name: my-appconfig-application
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getApplication:getApplication',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}
