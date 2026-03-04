import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_bus_policy_args.dart';
import 'event_bus_policy_state.dart';

/// Provides a resource to create an EventBridge resource policy to support cross-account events.
///
/// &gt; **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// &gt; **Note:** The EventBridge bus policy resource  (`aws.cloudwatch.EventBusPolicy`) is incompatible with the EventBridge permission resource (`aws.cloudwatch.EventPermission`) and will overwrite permissions.
///
/// ## Example Usage
///
/// ### Account Access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "DevAccountAccess",
///         effect: "Allow",
///         actions: ["events:PutEvents"],
///         resources: ["arn:aws:events:eu-west-1:123456789012:event-bus/default"],
///         principals: [{
///             type: "AWS",
///             identifiers: ["123456789012"],
///         }],
///     }],
/// });
/// const testEventBusPolicy = new aws.cloudwatch.EventBusPolicy("test", {
///     policy: test.then(test => test.json),
///     eventBusName: testAwsCloudwatchEventBus.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.iam.get_policy_document(statements=[{
///     "sid": "DevAccountAccess",
///     "effect": "Allow",
///     "actions": ["events:PutEvents"],
///     "resources": ["arn:aws:events:eu-west-1:123456789012:event-bus/default"],
///     "principals": [{
///         "type": "AWS",
///         "identifiers": ["123456789012"],
///     }],
/// }])
/// test_event_bus_policy = aws.cloudwatch.EventBusPolicy("test",
///     policy=test.json,
///     event_bus_name=test_aws_cloudwatch_event_bus["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "DevAccountAccess",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "events:PutEvents",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:events:eu-west-1:123456789012:event-bus/default",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "123456789012",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var testEventBusPolicy = new Aws.CloudWatch.EventBusPolicy("test", new()
///     {
///         Policy = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         EventBusName = testAwsCloudwatchEventBus.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("DevAccountAccess"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"events:PutEvents",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:events:eu-west-1:123456789012:event-bus/default",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								"123456789012",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewEventBusPolicy(ctx, "test", &cloudwatch.EventBusPolicyArgs{
/// 			Policy:       pulumi.String(test.Json),
/// 			EventBusName: pulumi.Any(testAwsCloudwatchEventBus.Name),
/// 		})
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.cloudwatch.EventBusPolicy;
/// import com.pulumi.aws.cloudwatch.EventBusPolicyArgs;
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
///         final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("DevAccountAccess")
///                 .effect("Allow")
///                 .actions("events:PutEvents")
///                 .resources("arn:aws:events:eu-west-1:123456789012:event-bus/default")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("123456789012")
///                     .build())
///                 .build())
///             .build());
///
///         var testEventBusPolicy = new EventBusPolicy("testEventBusPolicy", EventBusPolicyArgs.builder()
///             .policy(test.json())
///             .eventBusName(testAwsCloudwatchEventBus.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testEventBusPolicy:
///     type: aws:cloudwatch:EventBusPolicy
///     name: test
///     properties:
///       policy: ${test.json}
///       eventBusName: ${testAwsCloudwatchEventBus.name}
/// variables:
///   test:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: DevAccountAccess
///             effect: Allow
///             actions:
///               - events:PutEvents
///             resources:
///               - arn:aws:events:eu-west-1:123456789012:event-bus/default
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '123456789012'
/// ```
///
///
/// ### Organization Access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "OrganizationAccess",
///         effect: "Allow",
///         actions: [
///             "events:DescribeRule",
///             "events:ListRules",
///             "events:ListTargetsByRule",
///             "events:ListTagsForResource",
///         ],
///         resources: [
///             "arn:aws:events:eu-west-1:123456789012:rule/*",
///             "arn:aws:events:eu-west-1:123456789012:event-bus/default",
///         ],
///         principals: [{
///             type: "AWS",
///             identifiers: ["*"],
///         }],
///         conditions: [{
///             test: "StringEquals",
///             variable: "aws:PrincipalOrgID",
///             values: [example.id],
///         }],
///     }],
/// });
/// const testEventBusPolicy = new aws.cloudwatch.EventBusPolicy("test", {
///     policy: test.then(test => test.json),
///     eventBusName: testAwsCloudwatchEventBus.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.iam.get_policy_document(statements=[{
///     "sid": "OrganizationAccess",
///     "effect": "Allow",
///     "actions": [
///         "events:DescribeRule",
///         "events:ListRules",
///         "events:ListTargetsByRule",
///         "events:ListTagsForResource",
///     ],
///     "resources": [
///         "arn:aws:events:eu-west-1:123456789012:rule/*",
///         "arn:aws:events:eu-west-1:123456789012:event-bus/default",
///     ],
///     "principals": [{
///         "type": "AWS",
///         "identifiers": ["*"],
///     }],
///     "conditions": [{
///         "test": "StringEquals",
///         "variable": "aws:PrincipalOrgID",
///         "values": [example["id"]],
///     }],
/// }])
/// test_event_bus_policy = aws.cloudwatch.EventBusPolicy("test",
///     policy=test.json,
///     event_bus_name=test_aws_cloudwatch_event_bus["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "OrganizationAccess",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "events:DescribeRule",
///                     "events:ListRules",
///                     "events:ListTargetsByRule",
///                     "events:ListTagsForResource",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:events:eu-west-1:123456789012:rule/*",
///                     "arn:aws:events:eu-west-1:123456789012:event-bus/default",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "aws:PrincipalOrgID",
///                         Values = new[]
///                         {
///                             example.Id,
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var testEventBusPolicy = new Aws.CloudWatch.EventBusPolicy("test", new()
///     {
///         Policy = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         EventBusName = testAwsCloudwatchEventBus.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("OrganizationAccess"),
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "events:DescribeRule",
/// "events:ListRules",
/// "events:ListTargetsByRule",
/// "events:ListTagsForResource",
/// },
/// Resources: []string{
/// "arn:aws:events:eu-west-1:123456789012:rule/*",
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: []string{
/// "*",
/// },
/// },
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
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventBusPolicy(ctx, "test", &cloudwatch.EventBusPolicyArgs{
/// Policy: pulumi.String(test.Json),
/// EventBusName: pulumi.Any(testAwsCloudwatchEventBus.Name),
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
/// import com.pulumi.aws.cloudwatch.EventBusPolicy;
/// import com.pulumi.aws.cloudwatch.EventBusPolicyArgs;
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
///         final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("OrganizationAccess")
///                 .effect("Allow")
///                 .actions(
///                     "events:DescribeRule",
///                     "events:ListRules",
///                     "events:ListTargetsByRule",
///                     "events:ListTagsForResource")
///                 .resources(
///                     "arn:aws:events:eu-west-1:123456789012:rule/*",
///                     "arn:aws:events:eu-west-1:123456789012:event-bus/default")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("*")
///                     .build())
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("StringEquals")
///                     .variable("aws:PrincipalOrgID")
///                     .values(example.id())
///                     .build())
///                 .build())
///             .build());
///
///         var testEventBusPolicy = new EventBusPolicy("testEventBusPolicy", EventBusPolicyArgs.builder()
///             .policy(test.json())
///             .eventBusName(testAwsCloudwatchEventBus.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testEventBusPolicy:
///     type: aws:cloudwatch:EventBusPolicy
///     name: test
///     properties:
///       policy: ${test.json}
///       eventBusName: ${testAwsCloudwatchEventBus.name}
/// variables:
///   test:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: OrganizationAccess
///             effect: Allow
///             actions:
///               - events:DescribeRule
///               - events:ListRules
///               - events:ListTargetsByRule
///               - events:ListTagsForResource
///             resources:
///               - arn:aws:events:eu-west-1:123456789012:rule/*
///               - arn:aws:events:eu-west-1:123456789012:event-bus/default
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '*'
///             conditions:
///               - test: StringEquals
///                 variable: aws:PrincipalOrgID
///                 values:
///                   - ${example.id}
/// ```
///
///
/// ### Multiple Statements
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.iam.getPolicyDocument({
///     statements: [
///         {
///             sid: "DevAccountAccess",
///             effect: "Allow",
///             actions: ["events:PutEvents"],
///             resources: ["arn:aws:events:eu-west-1:123456789012:event-bus/default"],
///             principals: [{
///                 type: "AWS",
///                 identifiers: ["123456789012"],
///             }],
///         },
///         {
///             sid: "OrganizationAccess",
///             effect: "Allow",
///             actions: [
///                 "events:DescribeRule",
///                 "events:ListRules",
///                 "events:ListTargetsByRule",
///                 "events:ListTagsForResource",
///             ],
///             resources: [
///                 "arn:aws:events:eu-west-1:123456789012:rule/*",
///                 "arn:aws:events:eu-west-1:123456789012:event-bus/default",
///             ],
///             principals: [{
///                 type: "AWS",
///                 identifiers: ["*"],
///             }],
///             conditions: [{
///                 test: "StringEquals",
///                 variable: "aws:PrincipalOrgID",
///                 values: [example.id],
///             }],
///         },
///     ],
/// });
/// const testEventBusPolicy = new aws.cloudwatch.EventBusPolicy("test", {
///     policy: test.then(test => test.json),
///     eventBusName: testAwsCloudwatchEventBus.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.iam.get_policy_document(statements=[
///     {
///         "sid": "DevAccountAccess",
///         "effect": "Allow",
///         "actions": ["events:PutEvents"],
///         "resources": ["arn:aws:events:eu-west-1:123456789012:event-bus/default"],
///         "principals": [{
///             "type": "AWS",
///             "identifiers": ["123456789012"],
///         }],
///     },
///     {
///         "sid": "OrganizationAccess",
///         "effect": "Allow",
///         "actions": [
///             "events:DescribeRule",
///             "events:ListRules",
///             "events:ListTargetsByRule",
///             "events:ListTagsForResource",
///         ],
///         "resources": [
///             "arn:aws:events:eu-west-1:123456789012:rule/*",
///             "arn:aws:events:eu-west-1:123456789012:event-bus/default",
///         ],
///         "principals": [{
///             "type": "AWS",
///             "identifiers": ["*"],
///         }],
///         "conditions": [{
///             "test": "StringEquals",
///             "variable": "aws:PrincipalOrgID",
///             "values": [example["id"]],
///         }],
///     },
/// ])
/// test_event_bus_policy = aws.cloudwatch.EventBusPolicy("test",
///     policy=test.json,
///     event_bus_name=test_aws_cloudwatch_event_bus["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "DevAccountAccess",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "events:PutEvents",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:events:eu-west-1:123456789012:event-bus/default",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "123456789012",
///                         },
///                     },
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "OrganizationAccess",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "events:DescribeRule",
///                     "events:ListRules",
///                     "events:ListTargetsByRule",
///                     "events:ListTagsForResource",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:events:eu-west-1:123456789012:rule/*",
///                     "arn:aws:events:eu-west-1:123456789012:event-bus/default",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "aws:PrincipalOrgID",
///                         Values = new[]
///                         {
///                             example.Id,
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var testEventBusPolicy = new Aws.CloudWatch.EventBusPolicy("test", new()
///     {
///         Policy = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         EventBusName = testAwsCloudwatchEventBus.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("DevAccountAccess"),
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "events:PutEvents",
/// },
/// Resources: []string{
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: []string{
/// "123456789012",
/// },
/// },
/// },
/// },
/// {
/// Sid: pulumi.StringRef("OrganizationAccess"),
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "events:DescribeRule",
/// "events:ListRules",
/// "events:ListTargetsByRule",
/// "events:ListTagsForResource",
/// },
/// Resources: []string{
/// "arn:aws:events:eu-west-1:123456789012:rule/*",
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: []string{
/// "*",
/// },
/// },
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
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventBusPolicy(ctx, "test", &cloudwatch.EventBusPolicyArgs{
/// Policy: pulumi.String(test.Json),
/// EventBusName: pulumi.Any(testAwsCloudwatchEventBus.Name),
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
/// import com.pulumi.aws.cloudwatch.EventBusPolicy;
/// import com.pulumi.aws.cloudwatch.EventBusPolicyArgs;
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
///         final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("DevAccountAccess")
///                     .effect("Allow")
///                     .actions("events:PutEvents")
///                     .resources("arn:aws:events:eu-west-1:123456789012:event-bus/default")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers("123456789012")
///                         .build())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("OrganizationAccess")
///                     .effect("Allow")
///                     .actions(
///                         "events:DescribeRule",
///                         "events:ListRules",
///                         "events:ListTargetsByRule",
///                         "events:ListTagsForResource")
///                     .resources(
///                         "arn:aws:events:eu-west-1:123456789012:rule/*",
///                         "arn:aws:events:eu-west-1:123456789012:event-bus/default")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers("*")
///                         .build())
///                     .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .variable("aws:PrincipalOrgID")
///                         .values(example.id())
///                         .build())
///                     .build())
///             .build());
///
///         var testEventBusPolicy = new EventBusPolicy("testEventBusPolicy", EventBusPolicyArgs.builder()
///             .policy(test.json())
///             .eventBusName(testAwsCloudwatchEventBus.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testEventBusPolicy:
///     type: aws:cloudwatch:EventBusPolicy
///     name: test
///     properties:
///       policy: ${test.json}
///       eventBusName: ${testAwsCloudwatchEventBus.name}
/// variables:
///   test:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: DevAccountAccess
///             effect: Allow
///             actions:
///               - events:PutEvents
///             resources:
///               - arn:aws:events:eu-west-1:123456789012:event-bus/default
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '123456789012'
///           - sid: OrganizationAccess
///             effect: Allow
///             actions:
///               - events:DescribeRule
///               - events:ListRules
///               - events:ListTargetsByRule
///               - events:ListTagsForResource
///             resources:
///               - arn:aws:events:eu-west-1:123456789012:rule/*
///               - arn:aws:events:eu-west-1:123456789012:event-bus/default
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '*'
///             conditions:
///               - test: StringEquals
///                 variable: aws:PrincipalOrgID
///                 values:
///                   - ${example.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an EventBridge policy using the `event_bus_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventBusPolicy:EventBusPolicy DevAccountAccess example-event-bus
/// ```
class EventBusPolicy extends pulumi.CustomResource {
  /// The name of the event bus to set the permissions on.
  /// If you omit this, the permissions are set on the `default` event bus.
  late final pulumi.Output<String?> eventBusName;

  /// The text of the policy.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [EventBusPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventBusPolicy]. {@macro pulumi_cloudwatch_event_bus_policy_event_bus_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventBusPolicy(
    String name, {
    EventBusPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudwatch/eventBusPolicy:EventBusPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    eventBusName = registerOutput<String?>('eventBusName');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [EventBusPolicy] resource's state with the given [name] and [id].
  static EventBusPolicy get(
    String name,
    pulumi.Input<String> id, {
    EventBusPolicyState? state,
  }) {
    return EventBusPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventBusPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudwatch/eventBusPolicy:EventBusPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    eventBusName = registerOutput<String?>('eventBusName');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }
}
