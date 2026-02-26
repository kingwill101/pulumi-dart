import 'package:pulumi/pulumi.dart';
import 'get_principal_application_assignments_args.dart';
import 'get_principal_application_assignments_result.dart';

/// Data source for viewing AWS SSO Admin Principal Application Assignments.
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
/// const example = aws.ssoadmin.getPrincipalApplicationAssignments({
/// instanceArn: test.arns[0],
/// principalId: testAwsIdentitystoreUser.userId,
/// principalType: "USER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_principal_application_assignments(instance_arn=test["arns"][0],
/// principal_id=test_aws_identitystore_user["userId"],
/// principal_type="USER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SsoAdmin.GetPrincipalApplicationAssignments.Invoke(new()
/// {
/// InstanceArn = test.Arns[0],
/// PrincipalId = testAwsIdentitystoreUser.UserId,
/// PrincipalType = "USER",
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
/// _, err := ssoadmin.GetPrincipalApplicationAssignments(ctx, &ssoadmin.GetPrincipalApplicationAssignmentsArgs{
/// InstanceArn:   test.Arns[0],
/// PrincipalId:   testAwsIdentitystoreUser.UserId,
/// PrincipalType: "USER",
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
/// import com.pulumi.aws.ssoadmin.inputs.GetPrincipalApplicationAssignmentsArgs;
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
/// final var example = SsoadminFunctions.getPrincipalApplicationAssignments(GetPrincipalApplicationAssignmentsArgs.builder()
/// .instanceArn(test.arns()[0])
/// .principalId(testAwsIdentitystoreUser.userId())
/// .principalType("USER")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getPrincipalApplicationAssignments
/// arguments:
/// instanceArn: ${test.arns[0]}
/// principalId: ${testAwsIdentitystoreUser.userId}
/// principalType: USER
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPrincipalApplicationAssignmentsResult>
    getPrincipalApplicationAssignments(
  GetPrincipalApplicationAssignmentsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getPrincipalApplicationAssignments:getPrincipalApplicationAssignments',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrincipalApplicationAssignmentsResult.fromMap(result);
}
