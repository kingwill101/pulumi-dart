import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_delegated_administrators_args.dart';
import 'get_delegated_administrators_result.dart';
import 'get_delegated_services_args.dart';
import 'get_delegated_services_result.dart';
import 'get_entity_path_args.dart';
import 'get_entity_path_result.dart';
import 'get_organization_args.dart';
import 'get_organization_result.dart';
import 'get_organizational_unit_args.dart';
import 'get_organizational_unit_child_accounts_args.dart';
import 'get_organizational_unit_child_accounts_result.dart';
import 'get_organizational_unit_descendant_accounts_args.dart';
import 'get_organizational_unit_descendant_accounts_result.dart';
import 'get_organizational_unit_descendant_organizational_units_args.dart';
import 'get_organizational_unit_descendant_organizational_units_result.dart';
import 'get_organizational_unit_result.dart';
import 'get_organizational_units_args.dart';
import 'get_organizational_units_result.dart';
import 'get_policies_args.dart';
import 'get_policies_for_target_args.dart';
import 'get_policies_for_target_result.dart';
import 'get_policies_result.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';
import 'get_resource_tags_args.dart';
import 'get_resource_tags_result.dart';

/// Get information about an account in an organization.
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
/// const example = aws.organizations.getAccount({
///     accountId: "AWS ACCOUNT ID",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.get_account(account_id="AWS ACCOUNT ID")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Organizations.GetAccount.Invoke(new()
///     {
///         AccountId = "AWS ACCOUNT ID",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupAccount(ctx, &organizations.LookupAccountArgs{
/// 			AccountId: "AWS ACCOUNT ID",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetAccountArgs;
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
///         final var example = OrganizationsFunctions.getAccount(GetAccountArgs.builder()
///             .accountId("AWS ACCOUNT ID")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:organizations:getAccount
///       arguments:
///         accountId: AWS ACCOUNT ID
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_account_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Get a list of AWS accounts that are designated as delegated administrators in this organization
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.organizations.getDelegatedAdministrators({
///     servicePrincipal: "SERVICE PRINCIPAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.get_delegated_administrators(service_principal="SERVICE PRINCIPAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Organizations.GetDelegatedAdministrators.Invoke(new()
///     {
///         ServicePrincipal = "SERVICE PRINCIPAL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.GetDelegatedAdministrators(ctx, &organizations.GetDelegatedAdministratorsArgs{
/// 			ServicePrincipal: pulumi.StringRef("SERVICE PRINCIPAL"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetDelegatedAdministratorsArgs;
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
///         final var example = OrganizationsFunctions.getDelegatedAdministrators(GetDelegatedAdministratorsArgs.builder()
///             .servicePrincipal("SERVICE PRINCIPAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:organizations:getDelegatedAdministrators
///       arguments:
///         servicePrincipal: SERVICE PRINCIPAL
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_delegated_administrators_get_delegated_administrators_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDelegatedAdministratorsResult> getDelegatedAdministrators(
  GetDelegatedAdministratorsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getDelegatedAdministrators:getDelegatedAdministrators',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDelegatedAdministratorsResult.fromMap(result);
}

/// Get a list the AWS services for which the specified account is a delegated administrator
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.organizations.getDelegatedServices({
///     accountId: "AWS ACCOUNT ID",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.get_delegated_services(account_id="AWS ACCOUNT ID")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Organizations.GetDelegatedServices.Invoke(new()
///     {
///         AccountId = "AWS ACCOUNT ID",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.GetDelegatedServices(ctx, &organizations.GetDelegatedServicesArgs{
/// 			AccountId: "AWS ACCOUNT ID",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetDelegatedServicesArgs;
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
///         final var example = OrganizationsFunctions.getDelegatedServices(GetDelegatedServicesArgs.builder()
///             .accountId("AWS ACCOUNT ID")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:organizations:getDelegatedServices
///       arguments:
///         accountId: AWS ACCOUNT ID
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_delegated_services_get_delegated_services_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDelegatedServicesResult> getDelegatedServices(
  GetDelegatedServicesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getDelegatedServices:getDelegatedServices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDelegatedServicesResult.fromMap(result);
}

/// Get the [entity path](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_last-accessed-view-data-orgs.html#access_policies_last-accessed-viewing-orgs-entity-path) for an entity. An entity's path is the text representation of the structure of that AWS Organizations entity.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.organizations.getEntityPath({
///     entityId: "ou-ghi0-awsccccc",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.get_entity_path(entity_id="ou-ghi0-awsccccc")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Organizations.GetEntityPath.Invoke(new()
///     {
///         EntityId = "ou-ghi0-awsccccc",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.GetEntityPath(ctx, &organizations.GetEntityPathArgs{
/// 			EntityId: "ou-ghi0-awsccccc",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetEntityPathArgs;
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
///         final var example = OrganizationsFunctions.getEntityPath(GetEntityPathArgs.builder()
///             .entityId("ou-ghi0-awsccccc")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:organizations:getEntityPath
///       arguments:
///         entityId: ou-ghi0-awsccccc
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_entity_path_get_entity_path_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityPathResult> getEntityPath(
  GetEntityPathArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getEntityPath:getEntityPath',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityPathResult.fromMap(result);
}

/// Get information about the organization that the users account belongs to.
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
///     var example = Aws.Organizations.GetOrganization.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["accountIds"] = example.Apply(getOrganizationResult => getOrganizationResult.Accounts).Select(__item => __item.Id).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         ctx.export("accountIds", example.accounts().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ### Limit SNS Topic Access to an Organization
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.organizations.getOrganization({});
/// const snsTopic = new aws.sns.Topic("sns_topic", {name: "my-sns-topic"});
/// const snsTopicPolicy = pulumi.all([example, snsTopic.arn]).apply(([example, arn]) => aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         actions: [
///             "SNS:Subscribe",
///             "SNS:Publish",
///         ],
///         conditions: [{
///             test: "StringEquals",
///             variable: "aws:PrincipalOrgID",
///             values: [example.id],
///         }],
///         principals: [{
///             type: "AWS",
///             identifiers: ["*"],
///         }],
///         resources: [arn],
///     }],
/// }));
/// const snsTopicPolicyTopicPolicy = new aws.sns.TopicPolicy("sns_topic_policy", {
///     arn: snsTopic.arn,
///     policy: snsTopicPolicy.apply(snsTopicPolicy => snsTopicPolicy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.get_organization()
/// sns_topic = aws.sns.Topic("sns_topic", name="my-sns-topic")
/// sns_topic_policy = sns_topic.arn.apply(lambda arn: aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": [
///         "SNS:Subscribe",
///         "SNS:Publish",
///     ],
///     "conditions": [{
///         "test": "StringEquals",
///         "variable": "aws:PrincipalOrgID",
///         "values": [example.id],
///     }],
///     "principals": [{
///         "type": "AWS",
///         "identifiers": ["*"],
///     }],
///     "resources": [arn],
/// }]))
/// sns_topic_policy_topic_policy = aws.sns.TopicPolicy("sns_topic_policy",
///     arn=sns_topic.arn,
///     policy=sns_topic_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Organizations.GetOrganization.Invoke();
///
///     var snsTopic = new Aws.Sns.Topic("sns_topic", new()
///     {
///         Name = "my-sns-topic",
///     });
///
///     var snsTopicPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "SNS:Subscribe",
///                     "SNS:Publish",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "aws:PrincipalOrgID",
///                         Values = new[]
///                         {
///                             example.Apply(getOrganizationResult => getOrganizationResult.Id),
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Resources = new[]
///                 {
///                     snsTopic.Arn,
///                 },
///             },
///         },
///     });
///
///     var snsTopicPolicyTopicPolicy = new Aws.Sns.TopicPolicy("sns_topic_policy", new()
///     {
///         Arn = snsTopic.Arn,
///         Policy = snsTopicPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         var snsTopic = new Topic("snsTopic", TopicArgs.builder()
///             .name("my-sns-topic")
///             .build());
///
///         final var snsTopicPolicy = snsTopic.arn().applyValue(_arn -> IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions(
///                     "SNS:Subscribe",
///                     "SNS:Publish")
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("StringEquals")
///                     .variable("aws:PrincipalOrgID")
///                     .values(example.id())
///                     .build())
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("*")
///                     .build())
///                 .resources(_arn)
///                 .build())
///             .build()));
///
///         var snsTopicPolicyTopicPolicy = new TopicPolicy("snsTopicPolicyTopicPolicy", TopicPolicyArgs.builder()
///             .arn(snsTopic.arn())
///             .policy(snsTopicPolicy.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snsTopic:
///     type: aws:sns:Topic
///     name: sns_topic
///     properties:
///       name: my-sns-topic
///   snsTopicPolicyTopicPolicy:
///     type: aws:sns:TopicPolicy
///     name: sns_topic_policy
///     properties:
///       arn: ${snsTopic.arn}
///       policy: ${snsTopicPolicy.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:organizations:getOrganization
///       arguments: {}
///   snsTopicPolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - SNS:Subscribe
///               - SNS:Publish
///             conditions:
///               - test: StringEquals
///                 variable: aws:PrincipalOrgID
///                 values:
///                   - ${example.id}
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '*'
///             resources:
///               - ${snsTopic.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_organization_get_organization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationResult> getOrganization(
  GetOrganizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganization:getOrganization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationResult.fromMap(result);
}

/// Data source for getting an AWS Organizations Organizational Unit.
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
/// const org = aws.organizations.getOrganization({});
/// const ou = org.then(org => aws.organizations.getOrganizationalUnit({
///     parentId: org.roots?.[0]?.id,
///     name: "dev",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// org = aws.organizations.get_organization()
/// ou = aws.organizations.get_organizational_unit(parent_id=org.roots[0].id,
///     name="dev")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var org = Aws.Organizations.GetOrganization.Invoke();
///
///     var ou = Aws.Organizations.GetOrganizationalUnit.Invoke(new()
///     {
///         ParentId = org.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
///         Name = "dev",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		org, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupOrganizationalUnit(ctx, &organizations.LookupOrganizationalUnitArgs{
/// 			ParentId: org.Roots[0].Id,
/// 			Name:     "dev",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.organizations.inputs.GetOrganizationalUnitArgs;
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
///         final var org = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         final var ou = OrganizationsFunctions.getOrganizationalUnit(GetOrganizationalUnitArgs.builder()
///             .parentId(org.roots()[0].id())
///             .name("dev")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   org:
///     fn::invoke:
///       function: aws:organizations:getOrganization
///       arguments: {}
///   ou:
///     fn::invoke:
///       function: aws:organizations:getOrganizationalUnit
///       arguments:
///         parentId: ${org.roots[0].id}
///         name: dev
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_organizational_unit_get_organizational_unit_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationalUnitResult> getOrganizationalUnit(
  GetOrganizationalUnitArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnit:getOrganizationalUnit',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitResult.fromMap(result);
}

/// Get all direct child accounts under a parent organizational unit. This only provides immediate children, not all children.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const org = aws.organizations.getOrganization({});
/// const accounts = org.then(org => aws.organizations.getOrganizationalUnitChildAccounts({
///     parentId: org.roots?.[0]?.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// org = aws.organizations.get_organization()
/// accounts = aws.organizations.get_organizational_unit_child_accounts(parent_id=org.roots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var org = Aws.Organizations.GetOrganization.Invoke();
///
///     var accounts = Aws.Organizations.GetOrganizationalUnitChildAccounts.Invoke(new()
///     {
///         ParentId = org.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		org, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.GetOrganizationalUnitChildAccounts(ctx, &organizations.GetOrganizationalUnitChildAccountsArgs{
/// 			ParentId: org.Roots[0].Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.organizations.inputs.GetOrganizationalUnitChildAccountsArgs;
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
///         final var org = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         final var accounts = OrganizationsFunctions.getOrganizationalUnitChildAccounts(GetOrganizationalUnitChildAccountsArgs.builder()
///             .parentId(org.roots()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   org:
///     fn::invoke:
///       function: aws:organizations:getOrganization
///       arguments: {}
///   accounts:
///     fn::invoke:
///       function: aws:organizations:getOrganizationalUnitChildAccounts
///       arguments:
///         parentId: ${org.roots[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_organizational_unit_child_accounts_get_organizational_unit_child_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationalUnitChildAccountsResult>
    getOrganizationalUnitChildAccounts(
  GetOrganizationalUnitChildAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnitChildAccounts:getOrganizationalUnitChildAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitChildAccountsResult.fromMap(result);
}

/// Get all direct child accounts under a parent organizational unit. This provides all children.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const org = aws.organizations.getOrganization({});
/// const accounts = org.then(org => aws.organizations.getOrganizationalUnitDescendantAccounts({
///     parentId: org.roots?.[0]?.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// org = aws.organizations.get_organization()
/// accounts = aws.organizations.get_organizational_unit_descendant_accounts(parent_id=org.roots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var org = Aws.Organizations.GetOrganization.Invoke();
///
///     var accounts = Aws.Organizations.GetOrganizationalUnitDescendantAccounts.Invoke(new()
///     {
///         ParentId = org.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		org, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.GetOrganizationalUnitDescendantAccounts(ctx, &organizations.GetOrganizationalUnitDescendantAccountsArgs{
/// 			ParentId: org.Roots[0].Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.organizations.inputs.GetOrganizationalUnitDescendantAccountsArgs;
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
///         final var org = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         final var accounts = OrganizationsFunctions.getOrganizationalUnitDescendantAccounts(GetOrganizationalUnitDescendantAccountsArgs.builder()
///             .parentId(org.roots()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   org:
///     fn::invoke:
///       function: aws:organizations:getOrganization
///       arguments: {}
///   accounts:
///     fn::invoke:
///       function: aws:organizations:getOrganizationalUnitDescendantAccounts
///       arguments:
///         parentId: ${org.roots[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_organizational_unit_descendant_accounts_get_organizational_unit_descendant_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationalUnitDescendantAccountsResult>
    getOrganizationalUnitDescendantAccounts(
  GetOrganizationalUnitDescendantAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnitDescendantAccounts:getOrganizationalUnitDescendantAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitDescendantAccountsResult.fromMap(result);
}

/// Get all direct child organizational units under a parent organizational unit. This provides all children.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const org = aws.organizations.getOrganization({});
/// const ous = org.then(org => aws.organizations.getOrganizationalUnitDescendantOrganizationalUnits({
///     parentId: org.roots?.[0]?.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// org = aws.organizations.get_organization()
/// ous = aws.organizations.get_organizational_unit_descendant_organizational_units(parent_id=org.roots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var org = Aws.Organizations.GetOrganization.Invoke();
///
///     var ous = Aws.Organizations.GetOrganizationalUnitDescendantOrganizationalUnits.Invoke(new()
///     {
///         ParentId = org.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		org, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.GetOrganizationalUnitDescendantOrganizationalUnits(ctx, &organizations.GetOrganizationalUnitDescendantOrganizationalUnitsArgs{
/// 			ParentId: org.Roots[0].Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.organizations.inputs.GetOrganizationalUnitDescendantOrganizationalUnitsArgs;
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
///         final var org = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         final var ous = OrganizationsFunctions.getOrganizationalUnitDescendantOrganizationalUnits(GetOrganizationalUnitDescendantOrganizationalUnitsArgs.builder()
///             .parentId(org.roots()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   org:
///     fn::invoke:
///       function: aws:organizations:getOrganization
///       arguments: {}
///   ous:
///     fn::invoke:
///       function: aws:organizations:getOrganizationalUnitDescendantOrganizationalUnits
///       arguments:
///         parentId: ${org.roots[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_organizational_unit_descendant_organizational_units_get_organizational_unit_descendant_organizational_units_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationalUnitDescendantOrganizationalUnitsResult>
    getOrganizationalUnitDescendantOrganizationalUnits(
  GetOrganizationalUnitDescendantOrganizationalUnitsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnitDescendantOrganizationalUnits:getOrganizationalUnitDescendantOrganizationalUnits',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitDescendantOrganizationalUnitsResult.fromMap(
      result);
}

/// Get all direct child organizational units under a parent organizational unit. This only provides immediate children, not all children.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const org = aws.organizations.getOrganization({});
/// const ou = org.then(org => aws.organizations.getOrganizationalUnits({
///     parentId: org.roots?.[0]?.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// org = aws.organizations.get_organization()
/// ou = aws.organizations.get_organizational_units(parent_id=org.roots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var org = Aws.Organizations.GetOrganization.Invoke();
///
///     var ou = Aws.Organizations.GetOrganizationalUnits.Invoke(new()
///     {
///         ParentId = org.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		org, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.GetOrganizationalUnits(ctx, &organizations.GetOrganizationalUnitsArgs{
/// 			ParentId: org.Roots[0].Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.organizations.inputs.GetOrganizationalUnitsArgs;
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
///         final var org = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         final var ou = OrganizationsFunctions.getOrganizationalUnits(GetOrganizationalUnitsArgs.builder()
///             .parentId(org.roots()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   org:
///     fn::invoke:
///       function: aws:organizations:getOrganization
///       arguments: {}
///   ou:
///     fn::invoke:
///       function: aws:organizations:getOrganizationalUnits
///       arguments:
///         parentId: ${org.roots[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_organizational_units_get_organizational_units_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationalUnitsResult> getOrganizationalUnits(
  GetOrganizationalUnitsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnits:getOrganizationalUnits',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitsResult.fromMap(result);
}

/// Data source for managing an AWS Organizations Policies.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.organizations.getPolicies({
///     filter: "SERVICE_CONTROL_POLICY",
/// });
/// const exampleGetPolicy = example.then(example => std.toset({
///     input: example.ids,
/// })).then(invoke => .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: aws.organizations.getPolicy({
///     policyId: __value,
/// }) })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.organizations.get_policies(filter="SERVICE_CONTROL_POLICY")
/// example_get_policy = {__key: aws.organizations.get_policy(policy_id=__value) for __key, __value in std.toset(input=example.ids).result}
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Organizations.GetPolicies.Invoke(new()
///     {
///         Filter = "SERVICE_CONTROL_POLICY",
///     });
///
///     var exampleGetPolicy = Std.Toset.Invoke(new()
///     {
///         Input = example.Apply(getPoliciesResult => getPoliciesResult.Ids),
///     }).Apply(invoke => );
///
/// });
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_policies_get_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoliciesResult> getPolicies(
  GetPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getPolicies:getPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoliciesResult.fromMap(result);
}

/// Data source for managing an AWS Organizations Policies For Target.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.organizations.getOrganization({});
/// const exampleGetPoliciesForTarget = example.then(example => aws.organizations.getPoliciesForTarget({
///     targetId: example.roots?.[0]?.id,
///     filter: "SERVICE_CONTROL_POLICY",
/// }));
/// const exampleGetPolicy = exampleGetPoliciesForTarget.then(exampleGetPoliciesForTarget => std.toset({
///     input: exampleGetPoliciesForTarget.ids,
/// })).then(invoke => .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: aws.organizations.getPolicy({
///     policyId: __value,
/// }) })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.organizations.get_organization()
/// example_get_policies_for_target = aws.organizations.get_policies_for_target(target_id=example.roots[0].id,
///     filter="SERVICE_CONTROL_POLICY")
/// example_get_policy = {__key: aws.organizations.get_policy(policy_id=__value) for __key, __value in std.toset(input=example_get_policies_for_target.ids).result}
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Organizations.GetOrganization.Invoke();
///
///     var exampleGetPoliciesForTarget = Aws.Organizations.GetPoliciesForTarget.Invoke(new()
///     {
///         TargetId = example.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
///         Filter = "SERVICE_CONTROL_POLICY",
///     });
///
///     var exampleGetPolicy = Std.Toset.Invoke(new()
///     {
///         Input = exampleGetPoliciesForTarget.Apply(getPoliciesForTargetResult => getPoliciesForTargetResult.Ids),
///     }).Apply(invoke => );
///
/// });
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_policies_for_target_get_policies_for_target_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoliciesForTargetResult> getPoliciesForTarget(
  GetPoliciesForTargetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getPoliciesForTarget:getPoliciesForTarget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoliciesForTargetResult.fromMap(result);
}

/// Data source for managing an AWS Organizations Policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_policy_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getPolicy:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

/// Get tags attached to the specified AWS Organizations resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const account = aws.organizations.getResourceTags({
///     resourceId: "123456123846",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// account = aws.organizations.get_resource_tags(resource_id="123456123846")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = Aws.Organizations.GetResourceTags.Invoke(new()
///     {
///         ResourceId = "123456123846",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.GetResourceTags(ctx, &organizations.GetResourceTagsArgs{
/// 			ResourceId: "123456123846",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetResourceTagsArgs;
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
///         final var account = OrganizationsFunctions.getResourceTags(GetResourceTagsArgs.builder()
///             .resourceId("123456123846")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   account:
///     fn::invoke:
///       function: aws:organizations:getResourceTags
///       arguments:
///         resourceId: '123456123846'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_resource_tags_get_resource_tags_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceTagsResult> getResourceTags(
  GetResourceTagsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getResourceTags:getResourceTags',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceTagsResult.fromMap(result);
}
