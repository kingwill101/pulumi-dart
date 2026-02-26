import 'package:pulumi/pulumi.dart';
import 'get_user_group_args.dart';
import 'get_user_group_result.dart';

/// Data source for managing an AWS Cognito IDP (Identity Provider) User Group.
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
/// const example = aws.cognito.getUserGroup({
/// userPoolId: "us-west-2_aaaaaaaaa",
/// name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.get_user_group(user_pool_id="us-west-2_aaaaaaaaa",
/// name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Cognito.GetUserGroup.Invoke(new()
/// {
/// UserPoolId = "us-west-2_aaaaaaaaa",
/// Name = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cognito.LookupUserGroup(ctx, &cognito.LookupUserGroupArgs{
/// UserPoolId: "us-west-2_aaaaaaaaa",
/// Name:       "example",
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
/// import com.pulumi.aws.cognito.CognitoFunctions;
/// import com.pulumi.aws.cognito.inputs.GetUserGroupArgs;
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
/// final var example = CognitoFunctions.getUserGroup(GetUserGroupArgs.builder()
/// .userPoolId("us-west-2_aaaaaaaaa")
/// .name("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:cognito:getUserGroup
/// arguments:
/// userPoolId: us-west-2_aaaaaaaaa
/// name: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUserGroupResult> getUserGroup(
  GetUserGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserGroup:getUserGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserGroupResult.fromMap(result);
}
