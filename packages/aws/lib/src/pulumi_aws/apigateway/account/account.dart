import 'package:pulumi/pulumi.dart';
import '../account_throttle_setting/account_throttle_setting.dart';
import 'account_args.dart';

/// Provides a settings of an API Gateway Account. Settings is applied region-wide per <span pulumi-lang-nodejs="`provider`" pulumi-lang-dotnet="`Provider`" pulumi-lang-go="`provider`" pulumi-lang-python="`provider`" pulumi-lang-yaml="`provider`" pulumi-lang-java="`provider`">`provider`</span> block.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["apigateway.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const cloudwatchRole = new aws.iam.Role("cloudwatch", {
/// name: "api_gateway_cloudwatch_global",
/// assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const demo = new aws.apigateway.Account("demo", {cloudwatchRoleArn: cloudwatchRole.arn});
/// const cloudwatch = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// actions: [
/// "logs:CreateLogGroup",
/// "logs:CreateLogStream",
/// "logs:DescribeLogGroups",
/// "logs:DescribeLogStreams",
/// "logs:PutLogEvents",
/// "logs:GetLogEvents",
/// "logs:FilterLogEvents",
/// ],
/// resources: ["*"],
/// }],
/// });
/// const cloudwatchRolePolicy = new aws.iam.RolePolicy("cloudwatch", {
/// name: "default",
/// role: cloudwatchRole.id,
/// policy: cloudwatch.then(cloudwatch => cloudwatch.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["apigateway.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// cloudwatch_role = aws.iam.Role("cloudwatch",
/// name="api_gateway_cloudwatch_global",
/// assume_role_policy=assume_role.json)
/// demo = aws.apigateway.Account("demo", cloudwatch_role_arn=cloudwatch_role.arn)
/// cloudwatch = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "actions": [
/// "logs:CreateLogGroup",
/// "logs:CreateLogStream",
/// "logs:DescribeLogGroups",
/// "logs:DescribeLogStreams",
/// "logs:PutLogEvents",
/// "logs:GetLogEvents",
/// "logs:FilterLogEvents",
/// ],
/// "resources": ["*"],
/// }])
/// cloudwatch_role_policy = aws.iam.RolePolicy("cloudwatch",
/// name="default",
/// role=cloudwatch_role.id,
/// policy=cloudwatch.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "apigateway.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// },
/// },
/// });
///
/// var cloudwatchRole = new Aws.Iam.Role("cloudwatch", new()
/// {
/// Name = "api_gateway_cloudwatch_global",
/// AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var demo = new Aws.ApiGateway.Account("demo", new()
/// {
/// CloudwatchRoleArn = cloudwatchRole.Arn,
/// });
///
/// var cloudwatch = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "logs:CreateLogGroup",
/// "logs:CreateLogStream",
/// "logs:DescribeLogGroups",
/// "logs:DescribeLogStreams",
/// "logs:PutLogEvents",
/// "logs:GetLogEvents",
/// "logs:FilterLogEvents",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var cloudwatchRolePolicy = new Aws.Iam.RolePolicy("cloudwatch", new()
/// {
/// Name = "default",
/// Role = cloudwatchRole.Id,
/// Policy = cloudwatch.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "apigateway.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// cloudwatchRole, err := iam.NewRole(ctx, "cloudwatch", &iam.RoleArgs{
/// Name:             pulumi.String("api_gateway_cloudwatch_global"),
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = apigateway.NewAccount(ctx, "demo", &apigateway.AccountArgs{
/// CloudwatchRoleArn: cloudwatchRole.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// cloudwatch, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "logs:CreateLogGroup",
/// "logs:CreateLogStream",
/// "logs:DescribeLogGroups",
/// "logs:DescribeLogStreams",
/// "logs:PutLogEvents",
/// "logs:GetLogEvents",
/// "logs:FilterLogEvents",
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
/// _, err = iam.NewRolePolicy(ctx, "cloudwatch", &iam.RolePolicyArgs{
/// Name:   pulumi.String("default"),
/// Role:   cloudwatchRole.ID(),
/// Policy: pulumi.String(cloudwatch.Json),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.apigateway.Account;
/// import com.pulumi.aws.apigateway.AccountArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
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
/// final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("apigateway.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var cloudwatchRole = new Role("cloudwatchRole", RoleArgs.builder()
/// .name("api_gateway_cloudwatch_global")
/// .assumeRolePolicy(assumeRole.json())
/// .build());
///
/// var demo = new Account("demo", AccountArgs.builder()
/// .cloudwatchRoleArn(cloudwatchRole.arn())
/// .build());
///
/// final var cloudwatch = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions(
/// "logs:CreateLogGroup",
/// "logs:CreateLogStream",
/// "logs:DescribeLogGroups",
/// "logs:DescribeLogStreams",
/// "logs:PutLogEvents",
/// "logs:GetLogEvents",
/// "logs:FilterLogEvents")
/// .resources("*")
/// .build())
/// .build());
///
/// var cloudwatchRolePolicy = new RolePolicy("cloudwatchRolePolicy", RolePolicyArgs.builder()
/// .name("default")
/// .role(cloudwatchRole.id())
/// .policy(cloudwatch.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// demo:
/// type: aws:apigateway:Account
/// properties:
/// cloudwatchRoleArn: ${cloudwatchRole.arn}
/// cloudwatchRole:
/// type: aws:iam:Role
/// name: cloudwatch
/// properties:
/// name: api_gateway_cloudwatch_global
/// assumeRolePolicy: ${assumeRole.json}
/// cloudwatchRolePolicy:
/// type: aws:iam:RolePolicy
/// name: cloudwatch
/// properties:
/// name: default
/// role: ${cloudwatchRole.id}
/// policy: ${cloudwatch.json}
/// variables:
/// assumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - apigateway.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// cloudwatch:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - logs:CreateLogGroup
/// - logs:CreateLogStream
/// - logs:DescribeLogGroups
/// - logs:DescribeLogStreams
/// - logs:PutLogEvents
/// - logs:GetLogEvents
/// - logs:FilterLogEvents
/// resources:
/// - '*'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway Accounts using the account ID. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/account:Account demo 123456789012
/// ```
class Account extends CustomResource {
  /// The version of the API keys used for the account.
  late final Output<String> apiKeyVersion;

  /// ARN of an IAM role for CloudWatch (to allow logging & monitoring). See more [in AWS Docs](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-stage-settings.html#how-to-stage-settings-console). Logging & monitoring can be enabled/disabled and otherwise tuned on the API Gateway Stage level.
  late final Output<String> cloudwatchRoleArn;

  /// A list of features supported for the account.
  late final Output<List<String>> features;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Account-Level throttle settings. See exported fields below.
  late final Output<List<AccountThrottleSetting>> throttleSettings;

  Account(
    String name, {
    AccountArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/account:Account',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiKeyVersion = registerOutput<String>('apiKeyVersion');
    this.cloudwatchRoleArn = registerOutput<String>('cloudwatchRoleArn');
    this.features = registerOutput<List<String>>('features');
    this.region = registerOutput<String>('region');
    this.throttleSettings =
        registerOutput<List<AccountThrottleSetting>>('throttleSettings');
  }
}
