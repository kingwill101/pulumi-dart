import 'package:pulumi/pulumi.dart';
import 'get_random_password_args.dart';
import 'get_random_password_result.dart';

/// Generate a random password.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.secretsmanager.getRandomPassword({
/// passwordLength: 50,
/// excludeNumbers: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.secretsmanager.get_random_password(password_length=50,
/// exclude_numbers=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.SecretsManager.GetRandomPassword.Invoke(new()
/// {
/// PasswordLength = 50,
/// ExcludeNumbers = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := secretsmanager.GetRandomPassword(ctx, &secretsmanager.GetRandomPasswordArgs{
/// PasswordLength: pulumi.IntRef(50),
/// ExcludeNumbers: pulumi.BoolRef(true),
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
/// import com.pulumi.aws.secretsmanager.SecretsmanagerFunctions;
/// import com.pulumi.aws.secretsmanager.inputs.GetRandomPasswordArgs;
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
/// final var test = SecretsmanagerFunctions.getRandomPassword(GetRandomPasswordArgs.builder()
/// .passwordLength(50)
/// .excludeNumbers(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:secretsmanager:getRandomPassword
/// arguments:
/// passwordLength: 50
/// excludeNumbers: true
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRandomPasswordResult> getRandomPassword(
  GetRandomPasswordArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getRandomPassword:getRandomPassword',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRandomPasswordResult.fromMap(result);
}
