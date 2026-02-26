import 'package:pulumi/pulumi.dart';
import 'get_framework_args.dart';
import 'get_framework_result.dart';

/// Data source for managing an AWS Audit Manager Framework.
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
/// const example = aws.auditmanager.getFramework({
/// name: "Essential Eight",
/// frameworkType: "Standard",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.auditmanager.get_framework(name="Essential Eight",
/// framework_type="Standard")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Auditmanager.GetFramework.Invoke(new()
/// {
/// Name = "Essential Eight",
/// FrameworkType = "Standard",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := auditmanager.LookupFramework(ctx, &auditmanager.LookupFrameworkArgs{
/// Name:          "Essential Eight",
/// FrameworkType: "Standard",
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
/// import com.pulumi.aws.auditmanager.AuditmanagerFunctions;
/// import com.pulumi.aws.auditmanager.inputs.GetFrameworkArgs;
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
/// final var example = AuditmanagerFunctions.getFramework(GetFrameworkArgs.builder()
/// .name("Essential Eight")
/// .frameworkType("Standard")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:auditmanager:getFramework
/// arguments:
/// name: Essential Eight
/// frameworkType: Standard
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFrameworkResult> getFramework(
  GetFrameworkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:auditmanager/getFramework:getFramework',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFrameworkResult.fromMap(result);
}
