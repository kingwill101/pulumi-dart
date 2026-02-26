import 'package:pulumi/pulumi.dart';
import '../secret_rotation_rotation_rules/secret_rotation_rotation_rules.dart';
import 'secret_rotation_args.dart';

/// Provides a resource to manage AWS Secrets Manager secret rotation. To manage a secret, see the <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span> resource. To manage a secret value, see the <span pulumi-lang-nodejs="`aws.secretsmanager.SecretVersion`" pulumi-lang-dotnet="`aws.secretsmanager.SecretVersion`" pulumi-lang-go="`secretsmanager.SecretVersion`" pulumi-lang-python="`secretsmanager.SecretVersion`" pulumi-lang-yaml="`aws.secretsmanager.SecretVersion`" pulumi-lang-java="`aws.secretsmanager.SecretVersion`">`aws.secretsmanager.SecretVersion`</span> resource.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.secretsmanager.SecretRotation("example", {
/// secretId: exampleAwsSecretsmanagerSecret.id,
/// rotationLambdaArn: exampleAwsLambdaFunction.arn,
/// rotationRules: {
/// automaticallyAfterDays: 30,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.SecretRotation("example",
/// secret_id=example_aws_secretsmanager_secret["id"],
/// rotation_lambda_arn=example_aws_lambda_function["arn"],
/// rotation_rules={
/// "automatically_after_days": 30,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SecretsManager.SecretRotation("example", new()
/// {
/// SecretId = exampleAwsSecretsmanagerSecret.Id,
/// RotationLambdaArn = exampleAwsLambdaFunction.Arn,
/// RotationRules = new Aws.SecretsManager.Inputs.SecretRotationRotationRulesArgs
/// {
/// AutomaticallyAfterDays = 30,
/// },
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
/// _, err := secretsmanager.NewSecretRotation(ctx, "example", &secretsmanager.SecretRotationArgs{
/// SecretId:          pulumi.Any(exampleAwsSecretsmanagerSecret.Id),
/// RotationLambdaArn: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// RotationRules: &secretsmanager.SecretRotationRotationRulesArgs{
/// AutomaticallyAfterDays: pulumi.Int(30),
/// },
/// })
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
/// import com.pulumi.aws.secretsmanager.SecretRotation;
/// import com.pulumi.aws.secretsmanager.SecretRotationArgs;
/// import com.pulumi.aws.secretsmanager.inputs.SecretRotationRotationRulesArgs;
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
/// var example = new SecretRotation("example", SecretRotationArgs.builder()
/// .secretId(exampleAwsSecretsmanagerSecret.id())
/// .rotationLambdaArn(exampleAwsLambdaFunction.arn())
/// .rotationRules(SecretRotationRotationRulesArgs.builder()
/// .automaticallyAfterDays(30)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:secretsmanager:SecretRotation
/// properties:
/// secretId: ${exampleAwsSecretsmanagerSecret.id}
/// rotationLambdaArn: ${exampleAwsLambdaFunction.arn}
/// rotationRules:
/// automaticallyAfterDays: 30
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Rotation Configuration
///
/// To enable automatic secret rotation, the Secrets Manager service requires usage of a Lambda function. The [Rotate Secrets section in the Secrets Manager User Guide](https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html) provides additional information about deploying a prebuilt Lambda functions for supported credential rotation (e.g., RDS) or deploying a custom Lambda function.
///
/// > **NOTE:** Configuring rotation causes the secret to rotate once as soon as you enable rotation. Before you do this, you must ensure that all of your applications that use the credentials stored in the secret are updated to retrieve the secret from AWS Secrets Manager. The old credentials might no longer be usable after the initial rotation and any applications that you fail to update will break as soon as the old credentials are no longer valid.
///
/// > **NOTE:** If you cancel a rotation that is in progress (by removing the <span pulumi-lang-nodejs="`rotation`" pulumi-lang-dotnet="`Rotation`" pulumi-lang-go="`rotation`" pulumi-lang-python="`rotation`" pulumi-lang-yaml="`rotation`" pulumi-lang-java="`rotation`">`rotation`</span> configuration), it can leave the VersionStage labels in an unexpected state. Depending on what step of the rotation was in progress, you might need to remove the staging label AWSPENDING from the partially created version, specified by the SecretVersionId response value. You should also evaluate the partially rotated new version to see if it should be deleted, which you can do by removing all staging labels from the new version's VersionStage field.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Secrets Manager secret.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.secretsmanager.SecretRotation`" pulumi-lang-dotnet="`aws.secretsmanager.SecretRotation`" pulumi-lang-go="`secretsmanager.SecretRotation`" pulumi-lang-python="`secretsmanager.SecretRotation`" pulumi-lang-yaml="`aws.secretsmanager.SecretRotation`" pulumi-lang-java="`aws.secretsmanager.SecretRotation`">`aws.secretsmanager.SecretRotation`</span> using the secret Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/secretRotation:SecretRotation example arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
class SecretRotation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies whether to rotate the secret immediately or wait until the next scheduled rotation window. The rotation schedule is defined in <span pulumi-lang-nodejs="`rotationRules`" pulumi-lang-dotnet="`RotationRules`" pulumi-lang-go="`rotationRules`" pulumi-lang-python="`rotation_rules`" pulumi-lang-yaml="`rotationRules`" pulumi-lang-java="`rotationRules`">`rotation_rules`</span>. For secrets that use a Lambda rotation function to rotate, if you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the testSecret step (https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html) of the Lambda rotation function. The test creates an AWSPENDING version of the secret and then removes it. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> rotateImmediately;

  /// Specifies whether automatic rotation is enabled for this secret.
  late final Output<bool> rotationEnabled;

  /// Specifies the ARN of the Lambda function that can rotate the secret. Must be supplied if the secret is not managed by AWS.
  late final Output<String?> rotationLambdaArn;

  /// A structure that defines the rotation configuration for this secret. Defined below.
  late final Output<SecretRotationRotationRules> rotationRules;

  /// Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  late final Output<String> secretId;

  SecretRotation(
    String name, {
    SecretRotationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secretRotation:SecretRotation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = Output.createUnknown<String>();
    this.rotateImmediately = Output.createUnknown<bool?>();
    this.rotationEnabled = Output.createUnknown<bool>();
    this.rotationLambdaArn = Output.createUnknown<String?>();
    this.rotationRules = Output.createUnknown<SecretRotationRotationRules>();
    this.secretId = Output.createUnknown<String>();
  }
}
