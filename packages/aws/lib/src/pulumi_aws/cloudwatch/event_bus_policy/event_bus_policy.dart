import 'package:pulumi/pulumi.dart';
import 'event_bus_policy_args.dart';

/// Provides a resource to create an EventBridge resource policy to support cross-account events.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// > **Note:** The EventBridge bus policy resource  (<span pulumi-lang-nodejs="`aws.cloudwatch.EventBusPolicy`" pulumi-lang-dotnet="`aws.cloudwatch.EventBusPolicy`" pulumi-lang-go="`cloudwatch.EventBusPolicy`" pulumi-lang-python="`cloudwatch.EventBusPolicy`" pulumi-lang-yaml="`aws.cloudwatch.EventBusPolicy`" pulumi-lang-java="`aws.cloudwatch.EventBusPolicy`">`aws.cloudwatch.EventBusPolicy`</span>) is incompatible with the EventBridge permission resource (<span pulumi-lang-nodejs="`aws.cloudwatch.EventPermission`" pulumi-lang-dotnet="`aws.cloudwatch.EventPermission`" pulumi-lang-go="`cloudwatch.EventPermission`" pulumi-lang-python="`cloudwatch.EventPermission`" pulumi-lang-yaml="`aws.cloudwatch.EventPermission`" pulumi-lang-java="`aws.cloudwatch.EventPermission`">`aws.cloudwatch.EventPermission`</span>) and will overwrite permissions.
///
/// ## Example Usage
///
/// ### Account Access
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.iam.getPolicyDocument({
/// statements: [{
/// sid: "DevAccountAccess",
/// effect: "Allow",
/// actions: ["events:PutEvents"],
/// resources: ["arn:aws:events:eu-west-1:123456789012:event-bus/default"],
/// principals: [{
/// type: "AWS",
/// identifiers: ["123456789012"],
/// }],
/// }],
/// });
/// const testEventBusPolicy = new aws.cloudwatch.EventBusPolicy("test", {
/// policy: test.then(test => test.json),
/// eventBusName: testAwsCloudwatchEventBus.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.iam.get_policy_document(statements=[{
/// "sid": "DevAccountAccess",
/// "effect": "Allow",
/// "actions": ["events:PutEvents"],
/// "resources": ["arn:aws:events:eu-west-1:123456789012:event-bus/default"],
/// "principals": [{
/// "type": "AWS",
/// "identifiers": ["123456789012"],
/// }],
/// }])
/// test_event_bus_policy = aws.cloudwatch.EventBusPolicy("test",
/// policy=test.json,
/// event_bus_name=test_aws_cloudwatch_event_bus["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "DevAccountAccess",
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "events:PutEvents",
/// },
/// Resources = new[]
/// {
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// "123456789012",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var testEventBusPolicy = new Aws.CloudWatch.EventBusPolicy("test", new()
/// {
/// Policy = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// EventBusName = testAwsCloudwatchEventBus.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid:    pulumi.StringRef("DevAccountAccess"),
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
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventBusPolicy(ctx, "test", &cloudwatch.EventBusPolicyArgs{
/// Policy:       pulumi.String(test.Json),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("DevAccountAccess")
/// .effect("Allow")
/// .actions("events:PutEvents")
/// .resources("arn:aws:events:eu-west-1:123456789012:event-bus/default")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers("123456789012")
/// .build())
/// .build())
/// .build());
///
/// var testEventBusPolicy = new EventBusPolicy("testEventBusPolicy", EventBusPolicyArgs.builder()
/// .policy(test.json())
/// .eventBusName(testAwsCloudwatchEventBus.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testEventBusPolicy:
/// type: aws:cloudwatch:EventBusPolicy
/// name: test
/// properties:
/// policy: ${test.json}
/// eventBusName: ${testAwsCloudwatchEventBus.name}
/// variables:
/// test:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: DevAccountAccess
/// effect: Allow
/// actions:
/// - events:PutEvents
/// resources:
/// - arn:aws:events:eu-west-1:123456789012:event-bus/default
/// principals:
/// - type: AWS
/// identifiers:
/// - '123456789012'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Organization Access
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.iam.getPolicyDocument({
/// statements: [{
/// sid: "OrganizationAccess",
/// effect: "Allow",
/// actions: [
/// "events:DescribeRule",
/// "events:ListRules",
/// "events:ListTargetsByRule",
/// "events:ListTagsForResource",
/// ],
/// resources: [
/// "arn:aws:events:eu-west-1:123456789012:rule/*",
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default",
/// ],
/// principals: [{
/// type: "AWS",
/// identifiers: ["*"],
/// }],
/// conditions: [{
/// test: "StringEquals",
/// variable: "aws:PrincipalOrgID",
/// values: [example.id],
/// }],
/// }],
/// });
/// const testEventBusPolicy = new aws.cloudwatch.EventBusPolicy("test", {
/// policy: test.then(test => test.json),
/// eventBusName: testAwsCloudwatchEventBus.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.iam.get_policy_document(statements=[{
/// "sid": "OrganizationAccess",
/// "effect": "Allow",
/// "actions": [
/// "events:DescribeRule",
/// "events:ListRules",
/// "events:ListTargetsByRule",
/// "events:ListTagsForResource",
/// ],
/// "resources": [
/// "arn:aws:events:eu-west-1:123456789012:rule/*",
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default",
/// ],
/// "principals": [{
/// "type": "AWS",
/// "identifiers": ["*"],
/// }],
/// "conditions": [{
/// "test": "StringEquals",
/// "variable": "aws:PrincipalOrgID",
/// "values": [example["id"]],
/// }],
/// }])
/// test_event_bus_policy = aws.cloudwatch.EventBusPolicy("test",
/// policy=test.json,
/// event_bus_name=test_aws_cloudwatch_event_bus["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "OrganizationAccess",
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "events:DescribeRule",
/// "events:ListRules",
/// "events:ListTargetsByRule",
/// "events:ListTagsForResource",
/// },
/// Resources = new[]
/// {
/// "arn:aws:events:eu-west-1:123456789012:rule/*",
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// "*",
/// },
/// },
/// },
/// Conditions = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
/// {
/// Test = "StringEquals",
/// Variable = "aws:PrincipalOrgID",
/// Values = new[]
/// {
/// example.Id,
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var testEventBusPolicy = new Aws.CloudWatch.EventBusPolicy("test", new()
/// {
/// Policy = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// EventBusName = testAwsCloudwatchEventBus.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("OrganizationAccess")
/// .effect("Allow")
/// .actions(
/// "events:DescribeRule",
/// "events:ListRules",
/// "events:ListTargetsByRule",
/// "events:ListTagsForResource")
/// .resources(
/// "arn:aws:events:eu-west-1:123456789012:rule/*",
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers("*")
/// .build())
/// .conditions(GetPolicyDocumentStatementConditionArgs.builder()
/// .test("StringEquals")
/// .variable("aws:PrincipalOrgID")
/// .values(example.id())
/// .build())
/// .build())
/// .build());
///
/// var testEventBusPolicy = new EventBusPolicy("testEventBusPolicy", EventBusPolicyArgs.builder()
/// .policy(test.json())
/// .eventBusName(testAwsCloudwatchEventBus.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testEventBusPolicy:
/// type: aws:cloudwatch:EventBusPolicy
/// name: test
/// properties:
/// policy: ${test.json}
/// eventBusName: ${testAwsCloudwatchEventBus.name}
/// variables:
/// test:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: OrganizationAccess
/// effect: Allow
/// actions:
/// - events:DescribeRule
/// - events:ListRules
/// - events:ListTargetsByRule
/// - events:ListTagsForResource
/// resources:
/// - arn:aws:events:eu-west-1:123456789012:rule/*
/// - arn:aws:events:eu-west-1:123456789012:event-bus/default
/// principals:
/// - type: AWS
/// identifiers:
/// - '*'
/// conditions:
/// - test: StringEquals
/// variable: aws:PrincipalOrgID
/// values:
/// - ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Multiple Statements
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.iam.getPolicyDocument({
/// statements: [
/// {
/// sid: "DevAccountAccess",
/// effect: "Allow",
/// actions: ["events:PutEvents"],
/// resources: ["arn:aws:events:eu-west-1:123456789012:event-bus/default"],
/// principals: [{
/// type: "AWS",
/// identifiers: ["123456789012"],
/// }],
/// },
/// {
/// sid: "OrganizationAccess",
/// effect: "Allow",
/// actions: [
/// "events:DescribeRule",
/// "events:ListRules",
/// "events:ListTargetsByRule",
/// "events:ListTagsForResource",
/// ],
/// resources: [
/// "arn:aws:events:eu-west-1:123456789012:rule/*",
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default",
/// ],
/// principals: [{
/// type: "AWS",
/// identifiers: ["*"],
/// }],
/// conditions: [{
/// test: "StringEquals",
/// variable: "aws:PrincipalOrgID",
/// values: [example.id],
/// }],
/// },
/// ],
/// });
/// const testEventBusPolicy = new aws.cloudwatch.EventBusPolicy("test", {
/// policy: test.then(test => test.json),
/// eventBusName: testAwsCloudwatchEventBus.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.iam.get_policy_document(statements=[
/// {
/// "sid": "DevAccountAccess",
/// "effect": "Allow",
/// "actions": ["events:PutEvents"],
/// "resources": ["arn:aws:events:eu-west-1:123456789012:event-bus/default"],
/// "principals": [{
/// "type": "AWS",
/// "identifiers": ["123456789012"],
/// }],
/// },
/// {
/// "sid": "OrganizationAccess",
/// "effect": "Allow",
/// "actions": [
/// "events:DescribeRule",
/// "events:ListRules",
/// "events:ListTargetsByRule",
/// "events:ListTagsForResource",
/// ],
/// "resources": [
/// "arn:aws:events:eu-west-1:123456789012:rule/*",
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default",
/// ],
/// "principals": [{
/// "type": "AWS",
/// "identifiers": ["*"],
/// }],
/// "conditions": [{
/// "test": "StringEquals",
/// "variable": "aws:PrincipalOrgID",
/// "values": [example["id"]],
/// }],
/// },
/// ])
/// test_event_bus_policy = aws.cloudwatch.EventBusPolicy("test",
/// policy=test.json,
/// event_bus_name=test_aws_cloudwatch_event_bus["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "DevAccountAccess",
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "events:PutEvents",
/// },
/// Resources = new[]
/// {
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// "123456789012",
/// },
/// },
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "OrganizationAccess",
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "events:DescribeRule",
/// "events:ListRules",
/// "events:ListTargetsByRule",
/// "events:ListTagsForResource",
/// },
/// Resources = new[]
/// {
/// "arn:aws:events:eu-west-1:123456789012:rule/*",
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// "*",
/// },
/// },
/// },
/// Conditions = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
/// {
/// Test = "StringEquals",
/// Variable = "aws:PrincipalOrgID",
/// Values = new[]
/// {
/// example.Id,
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var testEventBusPolicy = new Aws.CloudWatch.EventBusPolicy("test", new()
/// {
/// Policy = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// EventBusName = testAwsCloudwatchEventBus.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("DevAccountAccess")
/// .effect("Allow")
/// .actions("events:PutEvents")
/// .resources("arn:aws:events:eu-west-1:123456789012:event-bus/default")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers("123456789012")
/// .build())
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("OrganizationAccess")
/// .effect("Allow")
/// .actions(
/// "events:DescribeRule",
/// "events:ListRules",
/// "events:ListTargetsByRule",
/// "events:ListTagsForResource")
/// .resources(
/// "arn:aws:events:eu-west-1:123456789012:rule/*",
/// "arn:aws:events:eu-west-1:123456789012:event-bus/default")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers("*")
/// .build())
/// .conditions(GetPolicyDocumentStatementConditionArgs.builder()
/// .test("StringEquals")
/// .variable("aws:PrincipalOrgID")
/// .values(example.id())
/// .build())
/// .build())
/// .build());
///
/// var testEventBusPolicy = new EventBusPolicy("testEventBusPolicy", EventBusPolicyArgs.builder()
/// .policy(test.json())
/// .eventBusName(testAwsCloudwatchEventBus.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testEventBusPolicy:
/// type: aws:cloudwatch:EventBusPolicy
/// name: test
/// properties:
/// policy: ${test.json}
/// eventBusName: ${testAwsCloudwatchEventBus.name}
/// variables:
/// test:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: DevAccountAccess
/// effect: Allow
/// actions:
/// - events:PutEvents
/// resources:
/// - arn:aws:events:eu-west-1:123456789012:event-bus/default
/// principals:
/// - type: AWS
/// identifiers:
/// - '123456789012'
/// - sid: OrganizationAccess
/// effect: Allow
/// actions:
/// - events:DescribeRule
/// - events:ListRules
/// - events:ListTargetsByRule
/// - events:ListTagsForResource
/// resources:
/// - arn:aws:events:eu-west-1:123456789012:rule/*
/// - arn:aws:events:eu-west-1:123456789012:event-bus/default
/// principals:
/// - type: AWS
/// identifiers:
/// - '*'
/// conditions:
/// - test: StringEquals
/// variable: aws:PrincipalOrgID
/// values:
/// - ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import an EventBridge policy using the <span pulumi-lang-nodejs="`eventBusName`" pulumi-lang-dotnet="`EventBusName`" pulumi-lang-go="`eventBusName`" pulumi-lang-python="`event_bus_name`" pulumi-lang-yaml="`eventBusName`" pulumi-lang-java="`eventBusName`">`event_bus_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventBusPolicy:EventBusPolicy DevAccountAccess example-event-bus
/// ```
class EventBusPolicy extends CustomResource {
  /// The name of the event bus to set the permissions on.
  /// If you omit this, the permissions are set on the <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> event bus.
  late final Output<String?> eventBusName;

  /// The text of the policy.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  EventBusPolicy(
    String name, {
    EventBusPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventBusPolicy:EventBusPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.eventBusName = Output.createUnknown<String?>();
    this.policy = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
