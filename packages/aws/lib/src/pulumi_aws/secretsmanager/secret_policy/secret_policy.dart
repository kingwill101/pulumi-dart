import 'package:pulumi/pulumi.dart';
import 'secret_policy_args.dart';

/// Provides a resource to manage AWS Secrets Manager secret policy.
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
/// const exampleSecret = new aws.secretsmanager.Secret("example", {name: "example"});
/// const example = aws.iam.getPolicyDocument({
/// statements: [{
/// sid: "EnableAnotherAWSAccountToReadTheSecret",
/// effect: "Allow",
/// principals: [{
/// type: "AWS",
/// identifiers: ["arn:aws:iam::123456789012:root"],
/// }],
/// actions: ["secretsmanager:GetSecretValue"],
/// resources: ["*"],
/// }],
/// });
/// const exampleSecretPolicy = new aws.secretsmanager.SecretPolicy("example", {
/// secretArn: exampleSecret.arn,
/// policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_secret = aws.secretsmanager.Secret("example", name="example")
/// example = aws.iam.get_policy_document(statements=[{
/// "sid": "EnableAnotherAWSAccountToReadTheSecret",
/// "effect": "Allow",
/// "principals": [{
/// "type": "AWS",
/// "identifiers": ["arn:aws:iam::123456789012:root"],
/// }],
/// "actions": ["secretsmanager:GetSecretValue"],
/// "resources": ["*"],
/// }])
/// example_secret_policy = aws.secretsmanager.SecretPolicy("example",
/// secret_arn=example_secret.arn,
/// policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleSecret = new Aws.SecretsManager.Secret("example", new()
/// {
/// Name = "example",
/// });
///
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "EnableAnotherAWSAccountToReadTheSecret",
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// "arn:aws:iam::123456789012:root",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "secretsmanager:GetSecretValue",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var exampleSecretPolicy = new Aws.SecretsManager.SecretPolicy("example", new()
/// {
/// SecretArn = exampleSecret.Arn,
/// Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleSecret, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid:    pulumi.StringRef("EnableAnotherAWSAccountToReadTheSecret"),
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: []string{
/// "arn:aws:iam::123456789012:root",
/// },
/// },
/// },
/// Actions: []string{
/// "secretsmanager:GetSecretValue",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = secretsmanager.NewSecretPolicy(ctx, "example", &secretsmanager.SecretPolicyArgs{
/// SecretArn: exampleSecret.Arn,
/// Policy:    pulumi.String(example.Json),
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
/// import com.pulumi.aws.secretsmanager.Secret;
/// import com.pulumi.aws.secretsmanager.SecretArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.secretsmanager.SecretPolicy;
/// import com.pulumi.aws.secretsmanager.SecretPolicyArgs;
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
/// var exampleSecret = new Secret("exampleSecret", SecretArgs.builder()
/// .name("example")
/// .build());
///
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("EnableAnotherAWSAccountToReadTheSecret")
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers("arn:aws:iam::123456789012:root")
/// .build())
/// .actions("secretsmanager:GetSecretValue")
/// .resources("*")
/// .build())
/// .build());
///
/// var exampleSecretPolicy = new SecretPolicy("exampleSecretPolicy", SecretPolicyArgs.builder()
/// .secretArn(exampleSecret.arn())
/// .policy(example.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleSecret:
/// type: aws:secretsmanager:Secret
/// name: example
/// properties:
/// name: example
/// exampleSecretPolicy:
/// type: aws:secretsmanager:SecretPolicy
/// name: example
/// properties:
/// secretArn: ${exampleSecret.arn}
/// policy: ${example.json}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: EnableAnotherAWSAccountToReadTheSecret
/// effect: Allow
/// principals:
/// - type: AWS
/// identifiers:
/// - arn:aws:iam::123456789012:root
/// actions:
/// - secretsmanager:GetSecretValue
/// resources:
/// - '*'
/// ```
/// <!--End PulumiCodeChooser -->
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
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.secretsmanager.SecretPolicy`" pulumi-lang-dotnet="`aws.secretsmanager.SecretPolicy`" pulumi-lang-go="`secretsmanager.SecretPolicy`" pulumi-lang-python="`secretsmanager.SecretPolicy`" pulumi-lang-yaml="`aws.secretsmanager.SecretPolicy`" pulumi-lang-java="`aws.secretsmanager.SecretPolicy`">`aws.secretsmanager.SecretPolicy`</span> using the secret Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/secretPolicy:SecretPolicy example arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
class SecretPolicy extends CustomResource {
  /// Makes an optional API call to Zelkova to validate the Resource Policy to prevent broad access to your secret.
  late final Output<bool?> blockPublicPolicy;

  /// Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Unlike <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span>, where <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> can be set to `"{}"` to delete the policy, `"{}"` is not a valid policy since <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> is required.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Secret ARN.
  ///
  /// The following arguments are optional:
  late final Output<String> secretArn;

  SecretPolicy(
    String name, {
    SecretPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secretPolicy:SecretPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.blockPublicPolicy = Output.createUnknown<bool?>();
    this.policy = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.secretArn = Output.createUnknown<String>();
  }
}
