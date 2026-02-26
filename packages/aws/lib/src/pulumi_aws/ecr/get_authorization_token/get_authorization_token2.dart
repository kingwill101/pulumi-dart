import 'package:pulumi/pulumi.dart';
import 'get_authorization_token_args2.dart';
import 'get_authorization_token_result2.dart';

/// The ECR Authorization Token data source allows the authorization token, proxy endpoint, token expiration date, user name and password to be retrieved for an ECR repository.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const token = aws.ecr.getAuthorizationToken({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// token = aws.ecr.get_authorization_token()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var token = Aws.Ecr.GetAuthorizationToken.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecr.GetAuthorizationToken(ctx, &ecr.GetAuthorizationTokenArgs{}, nil)
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
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetAuthorizationTokenArgs;
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
/// final var token = EcrFunctions.getAuthorizationToken(GetAuthorizationTokenArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// token:
/// fn::invoke:
/// function: aws:ecr:getAuthorizationToken
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAuthorizationTokenResult2> getAuthorizationToken2(
  GetAuthorizationTokenArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getAuthorizationToken:getAuthorizationToken',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationTokenResult2.fromMap(result);
}
