import 'package:pulumi/pulumi.dart';
import 'get_user_pool_signing_certificate_args.dart';
import 'get_user_pool_signing_certificate_result.dart';

/// Use this data source to get the signing certificate for a Cognito IdP user pool.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sc = aws.cognito.getUserPoolSigningCertificate({
/// userPoolId: myPool.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sc = aws.cognito.get_user_pool_signing_certificate(user_pool_id=my_pool["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var sc = Aws.Cognito.GetUserPoolSigningCertificate.Invoke(new()
/// {
/// UserPoolId = myPool.Id,
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
/// _, err := cognito.GetUserPoolSigningCertificate(ctx, &cognito.GetUserPoolSigningCertificateArgs{
/// UserPoolId: myPool.Id,
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
/// import com.pulumi.aws.cognito.inputs.GetUserPoolSigningCertificateArgs;
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
/// final var sc = CognitoFunctions.getUserPoolSigningCertificate(GetUserPoolSigningCertificateArgs.builder()
/// .userPoolId(myPool.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// sc:
/// fn::invoke:
/// function: aws:cognito:getUserPoolSigningCertificate
/// arguments:
/// userPoolId: ${myPool.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUserPoolSigningCertificateResult> getUserPoolSigningCertificate(
  GetUserPoolSigningCertificateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPoolSigningCertificate:getUserPoolSigningCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserPoolSigningCertificateResult.fromMap(result);
}
