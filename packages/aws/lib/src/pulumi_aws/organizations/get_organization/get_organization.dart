import 'package:pulumi/pulumi.dart';
import 'get_organization_args.dart';
import 'get_organization_result.dart';

/// Get information about the organization that the users account belongs to.
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
/// const example = aws.organizations.getOrganization({});
/// export const accountIds = example.then(example => example.accounts.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.get_organization()
/// pulumi.export("accountIds", [__item.id for __item in example.accounts])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Organizations.GetOrganization.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["accountIds"] = example.Apply(getOrganizationResult => getOrganizationResult.Accounts).Select(__item => __item.Id).ToList(),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("accountIds", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,11-33)))
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
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
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
/// final var example = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
/// .build());
///
/// ctx.export("accountIds", example.accounts().stream().map(element -> element.id()).collect(toList()));
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Limit SNS Topic Access to an Organization
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.organizations.getOrganization({});
/// const snsTopic = new aws.sns.Topic("sns_topic", {name: "my-sns-topic"});
/// const snsTopicPolicy = pulumi.all([example, snsTopic.arn]).apply(([example, arn]) => aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// effect: "Allow",
/// actions: [
/// "SNS:Subscribe",
/// "SNS:Publish",
/// ],
/// conditions: [{
/// test: "StringEquals",
/// variable: "aws:PrincipalOrgID",
/// values: [example.id],
/// }],
/// principals: [{
/// type: "AWS",
/// identifiers: ["*"],
/// }],
/// resources: [arn],
/// }],
/// }));
/// const snsTopicPolicyTopicPolicy = new aws.sns.TopicPolicy("sns_topic_policy", {
/// arn: snsTopic.arn,
/// policy: snsTopicPolicy.apply(snsTopicPolicy => snsTopicPolicy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.get_organization()
/// sns_topic = aws.sns.Topic("sns_topic", name="my-sns-topic")
/// sns_topic_policy = sns_topic.arn.apply(lambda arn: aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "actions": [
/// "SNS:Subscribe",
/// "SNS:Publish",
/// ],
/// "conditions": [{
/// "test": "StringEquals",
/// "variable": "aws:PrincipalOrgID",
/// "values": [example.id],
/// }],
/// "principals": [{
/// "type": "AWS",
/// "identifiers": ["*"],
/// }],
/// "resources": [arn],
/// }]))
/// sns_topic_policy_topic_policy = aws.sns.TopicPolicy("sns_topic_policy",
/// arn=sns_topic.arn,
/// policy=sns_topic_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Organizations.GetOrganization.Invoke();
///
/// var snsTopic = new Aws.Sns.Topic("sns_topic", new()
/// {
/// Name = "my-sns-topic",
/// });
///
/// var snsTopicPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "SNS:Subscribe",
/// "SNS:Publish",
/// },
/// Conditions = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionArgs
/// {
/// Test = "StringEquals",
/// Variable = "aws:PrincipalOrgID",
/// Values = new[]
/// {
/// example.Apply(getOrganizationResult => getOrganizationResult.Id),
/// },
/// },
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// "*",
/// },
/// },
/// },
/// Resources = new[]
/// {
/// snsTopic.Arn,
/// },
/// },
/// },
/// });
///
/// var snsTopicPolicyTopicPolicy = new Aws.Sns.TopicPolicy("sns_topic_policy", new()
/// {
/// Arn = snsTopic.Arn,
/// Policy = snsTopicPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// snsTopic, err := sns.NewTopic(ctx, "sns_topic", &sns.TopicArgs{
/// Name: pulumi.String("my-sns-topic"),
/// })
/// if err != nil {
/// return err
/// }
/// snsTopicPolicy := snsTopic.Arn.ApplyT(func(arn string) (iam.GetPolicyDocumentResult, error) {
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement([]iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef(pulumi.String(pulumi.StringRef("Allow"))),
/// Actions: []string{
/// "SNS:Subscribe",
/// "SNS:Publish",
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "StringEquals",
/// Variable: "aws:PrincipalOrgID",
/// Values: interface{}{
/// example.Id,
/// },
/// },
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: []string{
/// "*",
/// },
/// },
/// },
/// Resources: []string{
/// arn,
/// },
/// },
/// }),
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// _, err = sns.NewTopicPolicy(ctx, "sns_topic_policy", &sns.TopicPolicyArgs{
/// Arn: snsTopic.Arn,
/// Policy: pulumi.String(snsTopicPolicy.ApplyT(func(snsTopicPolicy iam.GetPolicyDocumentResult) (*string, error) {
/// return &snsTopicPolicy.Json, nil
/// }).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.sns.TopicPolicy;
/// import com.pulumi.aws.sns.TopicPolicyArgs;
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
/// final var example = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
/// .build());
///
/// var snsTopic = new Topic("snsTopic", TopicArgs.builder()
/// .name("my-sns-topic")
/// .build());
///
/// final var snsTopicPolicy = snsTopic.arn().applyValue(_arn -> IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions(
/// "SNS:Subscribe",
/// "SNS:Publish")
/// .conditions(GetPolicyDocumentStatementConditionArgs.builder()
/// .test("StringEquals")
/// .variable("aws:PrincipalOrgID")
/// .values(example.id())
/// .build())
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers("*")
/// .build())
/// .resources(_arn)
/// .build())
/// .build()));
///
/// var snsTopicPolicyTopicPolicy = new TopicPolicy("snsTopicPolicyTopicPolicy", TopicPolicyArgs.builder()
/// .arn(snsTopic.arn())
/// .policy(snsTopicPolicy.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// snsTopic:
/// type: aws:sns:Topic
/// name: sns_topic
/// properties:
/// name: my-sns-topic
/// snsTopicPolicyTopicPolicy:
/// type: aws:sns:TopicPolicy
/// name: sns_topic_policy
/// properties:
/// arn: ${snsTopic.arn}
/// policy: ${snsTopicPolicy.json}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:organizations:getOrganization
/// arguments: {}
/// snsTopicPolicy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - SNS:Subscribe
/// - SNS:Publish
/// conditions:
/// - test: StringEquals
/// variable: aws:PrincipalOrgID
/// values:
/// - ${example.id}
/// principals:
/// - type: AWS
/// identifiers:
/// - '*'
/// resources:
/// - ${snsTopic.arn}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOrganizationResult> getOrganization(
  GetOrganizationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganization:getOrganization',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationResult.fromMap(result);
}
