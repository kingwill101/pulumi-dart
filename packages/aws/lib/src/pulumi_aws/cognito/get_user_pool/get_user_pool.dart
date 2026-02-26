import 'package:pulumi/pulumi.dart';
import 'get_user_pool_args.dart';
import 'get_user_pool_result.dart';

/// Data source for managing an AWS Cognito User Pool.
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
/// const example = aws.cognito.getUserPool({
/// userPoolId: "us-west-2_aaaaaaaaa",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.get_user_pool(user_pool_id="us-west-2_aaaaaaaaa")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Cognito.GetUserPool.Invoke(new()
/// {
/// UserPoolId = "us-west-2_aaaaaaaaa",
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
/// _, err := cognito.LookupUserPool(ctx, &cognito.LookupUserPoolArgs{
/// UserPoolId: "us-west-2_aaaaaaaaa",
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
/// import com.pulumi.aws.cognito.inputs.GetUserPoolArgs;
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
/// final var example = CognitoFunctions.getUserPool(GetUserPoolArgs.builder()
/// .userPoolId("us-west-2_aaaaaaaaa")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:cognito:getUserPool
/// arguments:
/// userPoolId: us-west-2_aaaaaaaaa
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUserPoolResult> getUserPool(
  GetUserPoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPool:getUserPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserPoolResult.fromMap(result);
}
