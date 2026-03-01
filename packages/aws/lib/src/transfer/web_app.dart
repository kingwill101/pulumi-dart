import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_args.dart';
import 'web_app_endpoint_details.dart';
import 'web_app_identity_provider_details.dart';
import 'web_app_web_app_unit.dart';

/// Resource for managing an AWS Transfer Family Web App.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetRegion = aws.getRegion({});
/// const currentGetPartition = aws.getPartition({});
/// const example = aws.ssoadmin.getInstances({});
/// const assumeRoleTransfer = current.then(current => aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: [
///             "sts:AssumeRole",
///             "sts:SetContext",
///         ],
///         principals: [{
///             type: "Service",
///             identifiers: ["transfer.amazonaws.com"],
///         }],
///         conditions: [{
///             test: "StringEquals",
///             values: [current.accountId],
///             variable: "aws:SourceAccount",
///         }],
///     }],
/// }));
/// const exampleRole = new aws.iam.Role("example", {
///     name: "example",
///     assumeRolePolicy: assumeRoleTransfer.then(assumeRoleTransfer => assumeRoleTransfer.json),
/// });
/// const exampleGetPolicyDocument = Promise.all([currentGetPartition, currentGetRegion, current, current, current]).then(([currentGetPartition, currentGetRegion, current, current1, current2]) => aws.iam.getPolicyDocument({
///     statements: [
///         {
///             effect: "Allow",
///             actions: [
///                 "s3:GetDataAccess",
///                 "s3:ListCallerAccessGrants",
///             ],
///             resources: [`arn:${currentGetPartition.partition}:s3:${currentGetRegion.name}:${current.accountId}:access-grants/*`],
///             conditions: [{
///                 test: "StringEquals",
///                 values: [current1.accountId],
///                 variable: "s3:ResourceAccount",
///             }],
///         },
///         {
///             effect: "Allow",
///             actions: ["s3:ListAccessGrantsInstances"],
///             resources: ["*"],
///             conditions: [{
///                 test: "StringEquals",
///                 values: [current2.accountId],
///                 variable: "s3:ResourceAccount",
///             }],
///         },
///     ],
/// }));
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     policy: exampleGetPolicyDocument.then(exampleGetPolicyDocument => exampleGetPolicyDocument.json),
///     role: exampleRole.name,
/// });
/// const exampleWebApp = new aws.transfer.WebApp("example", {
///     identityProviderDetails: {
///         identityCenterConfig: {
///             instanceArn: example.then(example => example.arns?.[0]),
///             role: exampleRole.arn,
///         },
///     },
///     webAppUnits: [{
///         provisioned: 1,
///     }],
///     tags: {
///         Name: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_region = aws.get_region()
/// current_get_partition = aws.get_partition()
/// example = aws.ssoadmin.get_instances()
/// assume_role_transfer = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": [
///         "sts:AssumeRole",
///         "sts:SetContext",
///     ],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["transfer.amazonaws.com"],
///     }],
///     "conditions": [{
///         "test": "StringEquals",
///         "values": [current.account_id],
///         "variable": "aws:SourceAccount",
///     }],
/// }])
/// example_role = aws.iam.Role("example",
///     name="example",
///     assume_role_policy=assume_role_transfer.json)
/// example_get_policy_document = aws.iam.get_policy_document(statements=[
///     {
///         "effect": "Allow",
///         "actions": [
///             "s3:GetDataAccess",
///             "s3:ListCallerAccessGrants",
///         ],
///         "resources": [f"arn:{current_get_partition.partition}:s3:{current_get_region.name}:{current.account_id}:access-grants/*"],
///         "conditions": [{
///             "test": "StringEquals",
///             "values": [current.account_id],
///             "variable": "s3:ResourceAccount",
///         }],
///     },
///     {
///         "effect": "Allow",
///         "actions": ["s3:ListAccessGrantsInstances"],
///         "resources": ["*"],
///         "conditions": [{
///             "test": "StringEquals",
///             "values": [current.account_id],
///             "variable": "s3:ResourceAccount",
///         }],
///     },
/// ])
/// example_role_policy = aws.iam.RolePolicy("example",
///     policy=example_get_policy_document.json,
///     role=example_role.name)
/// example_web_app = aws.transfer.WebApp("example",
///     identity_provider_details={
///         "identity_center_config": {
///             "instance_arn": example.arns[0],
///             "role": example_role.arn,
///         },
///     },
///     web_app_units=[{
///         "provisioned": 1,
///     }],
///     tags={
///         "Name": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetRegion = Aws.GetRegion.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var assumeRoleTransfer = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                     "sts:SetContext",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "transfer.amazonaws.com",
///                         },
///                     },
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Values = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                         Variable = "aws:SourceAccount",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "example",
///         AssumeRolePolicy = assumeRoleTransfer.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleGetPolicyDocument = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:GetDataAccess",
///                     "s3:ListCallerAccessGrants",
///                 },
///                 Resources = new[]
///                 {
///                     $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:s3:{currentGetRegion.Apply(getRegionResult => getRegionResult.Name)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:access-grants/*",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Values = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                         Variable = "s3:ResourceAccount",
///                     },
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:ListAccessGrantsInstances",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Values = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                         Variable = "s3:ResourceAccount",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Policy = exampleGetPolicyDocument.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         Role = exampleRole.Name,
///     });
///
///     var exampleWebApp = new Aws.Transfer.WebApp("example", new()
///     {
///         IdentityProviderDetails = new Aws.Transfer.Inputs.WebAppIdentityProviderDetailsArgs
///         {
///             IdentityCenterConfig = new Aws.Transfer.Inputs.WebAppIdentityProviderDetailsIdentityCenterConfigArgs
///             {
///                 InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///                 Role = exampleRole.Arn,
///             },
///         },
///         WebAppUnits = new[]
///         {
///             new Aws.Transfer.Inputs.WebAppWebAppUnitArgs
///             {
///                 Provisioned = 1,
///             },
///         },
///         Tags =
///         {
///             { "Name", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// assumeRoleTransfer, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "sts:AssumeRole",
/// "sts:SetContext",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "transfer.amazonaws.com",
/// },
/// },
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "StringEquals",
/// Values: interface{}{
/// current.AccountId,
/// },
/// Variable: "aws:SourceAccount",
/// },
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name: pulumi.String("example"),
/// AssumeRolePolicy: pulumi.String(assumeRoleTransfer.Json),
/// })
/// if err != nil {
/// return err
/// }
/// exampleGetPolicyDocument, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "s3:GetDataAccess",
/// "s3:ListCallerAccessGrants",
/// },
/// Resources: []string{
/// fmt.Sprintf("arn:%v:s3:%v:%v:access-grants/*", currentGetPartition.Partition, currentGetRegion.Name, current.AccountId),
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "StringEquals",
/// Values: interface{}{
/// current.AccountId,
/// },
/// Variable: "s3:ResourceAccount",
/// },
/// },
/// },
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "s3:ListAccessGrantsInstances",
/// },
/// Resources: []string{
/// "*",
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "StringEquals",
/// Values: interface{}{
/// current.AccountId,
/// },
/// Variable: "s3:ResourceAccount",
/// },
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// Policy: pulumi.String(exampleGetPolicyDocument.Json),
/// Role: exampleRole.Name,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = transfer.NewWebApp(ctx, "example", &transfer.WebAppArgs{
/// IdentityProviderDetails: &transfer.WebAppIdentityProviderDetailsArgs{
/// IdentityCenterConfig: &transfer.WebAppIdentityProviderDetailsIdentityCenterConfigArgs{
/// InstanceArn: pulumi.String(example.Arns[0]),
/// Role: exampleRole.Arn,
/// },
/// },
/// WebAppUnits: transfer.WebAppWebAppUnitArray{
/// &transfer.WebAppWebAppUnitArgs{
/// Provisioned: pulumi.Int(1),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("test"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.transfer.WebApp;
/// import com.pulumi.aws.transfer.WebAppArgs;
/// import com.pulumi.aws.transfer.inputs.WebAppIdentityProviderDetailsArgs;
/// import com.pulumi.aws.transfer.inputs.WebAppIdentityProviderDetailsIdentityCenterConfigArgs;
/// import com.pulumi.aws.transfer.inputs.WebAppWebAppUnitArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         final var assumeRoleTransfer = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions(
///                     "sts:AssumeRole",
///                     "sts:SetContext")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("transfer.amazonaws.com")
///                     .build())
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("StringEquals")
///                     .values(current.accountId())
///                     .variable("aws:SourceAccount")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(assumeRoleTransfer.json())
///             .build());
///
///         final var exampleGetPolicyDocument = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "s3:GetDataAccess",
///                         "s3:ListCallerAccessGrants")
///                     .resources(String.format("arn:%s:s3:%s:%s:access-grants/*", currentGetPartition.partition(),currentGetRegion.name(),current.accountId()))
///                     .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .values(current.accountId())
///                         .variable("s3:ResourceAccount")
///                         .build())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions("s3:ListAccessGrantsInstances")
///                     .resources("*")
///                     .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .values(current.accountId())
///                         .variable("s3:ResourceAccount")
///                         .build())
///                     .build())
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .policy(exampleGetPolicyDocument.json())
///             .role(exampleRole.name())
///             .build());
///
///         var exampleWebApp = new WebApp("exampleWebApp", WebAppArgs.builder()
///             .identityProviderDetails(WebAppIdentityProviderDetailsArgs.builder()
///                 .identityCenterConfig(WebAppIdentityProviderDetailsIdentityCenterConfigArgs.builder()
///                     .instanceArn(example.arns()[0])
///                     .role(exampleRole.arn())
///                     .build())
///                 .build())
///             .webAppUnits(WebAppWebAppUnitArgs.builder()
///                 .provisioned(1)
///                 .build())
///             .tags(Map.of("Name", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: example
///       assumeRolePolicy: ${assumeRoleTransfer.json}
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       policy: ${exampleGetPolicyDocument.json}
///       role: ${exampleRole.name}
///   exampleWebApp:
///     type: aws:transfer:WebApp
///     name: example
///     properties:
///       identityProviderDetails:
///         identityCenterConfig:
///           instanceArn: ${example.arns[0]}
///           role: ${exampleRole.arn}
///       webAppUnits:
///         - provisioned: 1
///       tags:
///         Name: test
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetRegion:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
///   assumeRoleTransfer:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - sts:AssumeRole
///               - sts:SetContext
///             principals:
///               - type: Service
///                 identifiers:
///                   - transfer.amazonaws.com
///             conditions:
///               - test: StringEquals
///                 values:
///                   - ${current.accountId}
///                 variable: aws:SourceAccount
///   exampleGetPolicyDocument:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - s3:GetDataAccess
///               - s3:ListCallerAccessGrants
///             resources:
///               - arn:${currentGetPartition.partition}:s3:${currentGetRegion.name}:${current.accountId}:access-grants/*
///             conditions:
///               - test: StringEquals
///                 values:
///                   - ${current.accountId}
///                 variable: s3:ResourceAccount
///           - effect: Allow
///             actions:
///               - s3:ListAccessGrantsInstances
///             resources:
///               - '*'
///             conditions:
///               - test: StringEquals
///                 values:
///                   - ${current.accountId}
///                 variable: s3:ResourceAccount
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer Family Web App using the `web_app_id`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/webApp:WebApp example web_app-id-12345678
/// ```
class WebApp extends pulumi.CustomResource {
  /// URL provided to interact with the Transfer Family web app. If `endpoint_details.vpc` block is specified, `access_endpoint` must not be provided.
  late final pulumi.Output<String> accessEndpoint;

  /// ARN of the Web App.
  late final pulumi.Output<String> arn;

  /// Block for the endpoint configuration for the web app. If not specified, the web app will be created with a public endpoint.
  late final pulumi.Output<WebAppEndpointDetails?> endpointDetails;

  /// Block for details of the identity provider to use with the web app. See Identity provider details below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<WebAppIdentityProviderDetails>
  identityProviderDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value pairs that can be used to group and search for web apps.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Type of endpoint policy for the web app. Valid values are: `STANDARD`(default) or `FIPS`.
  late final pulumi.Output<String> webAppEndpointPolicy;

  /// ID of the Wep App resource.
  late final pulumi.Output<String> webAppId;

  /// Block for number of concurrent connections or the user sessions on the web app.
  /// * provisioned - (Optional) Number of units of concurrent connections.
  late final pulumi.Output<List<WebAppWebAppUnit>> webAppUnits;

  /// Creates a new [WebApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebApp]. {@macro pulumi_transfer_web_app_web_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebApp(String name, {WebAppArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:transfer/webApp:WebApp',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.accessEndpoint = registerOutput<String>('accessEndpoint');
    this.arn = registerOutput<String>('arn');
    this.endpointDetails = registerOutput<WebAppEndpointDetails?>(
      'endpointDetails',
    );
    this.identityProviderDetails =
        registerOutput<WebAppIdentityProviderDetails>(
          'identityProviderDetails',
        );
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.webAppEndpointPolicy = registerOutput<String>('webAppEndpointPolicy');
    this.webAppId = registerOutput<String>('webAppId');
    this.webAppUnits = registerOutput<List<WebAppWebAppUnit>>('webAppUnits');
  }
}
