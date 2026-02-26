import 'package:pulumi/pulumi.dart';
import 'get_secret_args2.dart';
import 'get_secret_result2.dart';

/// Retrieve metadata information about a Secrets Manager secret. To retrieve a secret value, see the <span pulumi-lang-nodejs="`aws.secretsmanager.SecretVersion`" pulumi-lang-dotnet="`aws.secretsmanager.SecretVersion`" pulumi-lang-go="`secretsmanager.SecretVersion`" pulumi-lang-python="`secretsmanager.SecretVersion`" pulumi-lang-yaml="`aws.secretsmanager.SecretVersion`" pulumi-lang-java="`aws.secretsmanager.SecretVersion`">`aws.secretsmanager.SecretVersion`</span> data source.
///
/// ## Example Usage
///
/// ### ARN
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const by_arn = aws.secretsmanager.getSecret({
/// arn: "arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_arn = aws.secretsmanager.get_secret(arn="arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var by_arn = Aws.SecretsManager.GetSecret.Invoke(new()
/// {
/// Arn = "arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456",
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
/// _, err := secretsmanager.LookupSecret(ctx, &secretsmanager.LookupSecretArgs{
/// Arn: pulumi.StringRef("arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456"),
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
/// import com.pulumi.aws.secretsmanager.inputs.GetSecretArgs;
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
/// final var by-arn = SecretsmanagerFunctions.getSecret(GetSecretArgs.builder()
/// .arn("arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// by-arn:
/// fn::invoke:
/// function: aws:secretsmanager:getSecret
/// arguments:
/// arn: arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Name
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const by_name = aws.secretsmanager.getSecret({
/// name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_name = aws.secretsmanager.get_secret(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var by_name = Aws.SecretsManager.GetSecret.Invoke(new()
/// {
/// Name = "example",
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
/// _, err := secretsmanager.LookupSecret(ctx, &secretsmanager.LookupSecretArgs{
/// Name: pulumi.StringRef("example"),
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
/// import com.pulumi.aws.secretsmanager.inputs.GetSecretArgs;
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
/// final var by-name = SecretsmanagerFunctions.getSecret(GetSecretArgs.builder()
/// .name("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// by-name:
/// fn::invoke:
/// function: aws:secretsmanager:getSecret
/// arguments:
/// name: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSecretResult2> getSecret2(
  GetSecretArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecret:getSecret',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretResult2.fromMap(result);
}
