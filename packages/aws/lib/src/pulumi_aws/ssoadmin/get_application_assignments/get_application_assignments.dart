import 'package:pulumi/pulumi.dart';
import 'get_application_assignments_args.dart';
import 'get_application_assignments_result.dart';

/// Data source for managing AWS SSO Admin Application Assignments.
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
/// const example = aws.ssoadmin.getApplicationAssignments({
/// applicationArn: exampleAwsSsoadminApplication.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_application_assignments(application_arn=example_aws_ssoadmin_application["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SsoAdmin.GetApplicationAssignments.Invoke(new()
/// {
/// ApplicationArn = exampleAwsSsoadminApplication.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssoadmin.GetApplicationAssignments(ctx, &ssoadmin.GetApplicationAssignmentsArgs{
/// ApplicationArn: exampleAwsSsoadminApplication.Arn,
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetApplicationAssignmentsArgs;
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
/// final var example = SsoadminFunctions.getApplicationAssignments(GetApplicationAssignmentsArgs.builder()
/// .applicationArn(exampleAwsSsoadminApplication.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getApplicationAssignments
/// arguments:
/// applicationArn: ${exampleAwsSsoadminApplication.arn}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetApplicationAssignmentsResult> getApplicationAssignments(
  GetApplicationAssignmentsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getApplicationAssignments:getApplicationAssignments',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApplicationAssignmentsResult.fromMap(result);
}
