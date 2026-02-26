import 'package:pulumi/pulumi.dart';
import 'get_policy_document_args.dart';
import 'get_policy_document_result.dart';

/// Generates an IAM policy document in JSON format for use with resources that expect policy documents such as <span pulumi-lang-nodejs="`aws.iam.Policy`" pulumi-lang-dotnet="`aws.iam.Policy`" pulumi-lang-go="`iam.Policy`" pulumi-lang-python="`iam.Policy`" pulumi-lang-yaml="`aws.iam.Policy`" pulumi-lang-java="`aws.iam.Policy`">`aws.iam.Policy`</span>.
///
/// Using this data source to generate policy documents is *optional*. It is also valid to use literal JSON strings in your configuration or to use the <span pulumi-lang-nodejs="`file`" pulumi-lang-dotnet="`File`" pulumi-lang-go="`file`" pulumi-lang-python="`file`" pulumi-lang-yaml="`file`" pulumi-lang-java="`file`">`file`</span> interpolation function to read a raw JSON policy document from a file.
///
/// ## Example Usage
///
/// ### Basic Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicyDocument({
/// statements: [
/// {
/// sid: "1",
/// actions: [
/// "s3:ListAllMyBuckets",
/// "s3:GetBucketLocation",
/// ],
/// resources: ["arn:aws:s3:::*"],
/// },
/// {
/// actions: ["s3:ListBucket"],
/// resources: [`arn:aws:s3:::${s3BucketName}`],
/// conditions: [{
/// test: "StringLike",
/// variable: "s3:prefix",
/// values: [
/// "",
/// "home/",
/// "home/&{aws:username}/",
/// ],
/// }],
/// },
/// {
/// actions: ["s3:*"],
/// resources: [
/// `arn:aws:s3:::${s3BucketName}/home/&{aws:username}`,
/// `arn:aws:s3:::${s3BucketName}/home/&{aws:username}/*`,
/// ],
/// },
/// ],
/// });
/// const examplePolicy = new aws.iam.Policy("example", {
/// name: "example_policy",
/// path: "/",
/// policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[
/// {
/// "sid": "1",
/// "actions": [
/// "s3:ListAllMyBuckets",
/// "s3:GetBucketLocation",
/// ],
/// "resources": ["arn:aws:s3:::*"],
/// },
/// {
/// "actions": ["s3:ListBucket"],
/// "resources": [f"arn:aws:s3:::{s3_bucket_name}"],
/// "conditions": [{
/// "test": "StringLike",
/// "variable": "s3:prefix",
/// "values": [
/// "",
/// "home/",
/// "home/&{aws:username}/",
/// ],
/// }],
/// },
/// {
/// "actions": ["s3:*"],
/// "resources": [
/// f"arn:aws:s3:::{s3_bucket_name}/home/&{{aws:username}}",
/// f"arn:aws:s3:::{s3_bucket_name}/home/&{{aws:username}}/*",
/// ],
/// },
/// ])
/// example_policy = aws.iam.Policy("example",
/// name="example_policy",
/// path="/",
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
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "1",
/// Actions = new[]
/// {
/// "s3:ListAllMyBuckets",
/// "s3:GetBucketLocation",
/// },
/// Resources = new[]
/// {
/// "arn:aws:s3:::*",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "s3:ListBucket",
/// },
/// Resources = new[]
/// {
/// $"arn:aws:s3:::{s3BucketName}",
/// },
/// Conditions = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
/// {
/// Test = "StringLike",
/// Variable = "s3:prefix",
/// Values = new[]
/// {
/// "",
/// "home/",
/// "home/&{aws:username}/",
/// },
/// },
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "s3:*",
/// },
/// Resources = new[]
/// {
/// $"arn:aws:s3:::{s3BucketName}/home/&{{aws:username}}",
/// $"arn:aws:s3:::{s3BucketName}/home/&{{aws:username}}/*",
/// },
/// },
/// },
/// });
///
/// var examplePolicy = new Aws.Iam.Policy("example", new()
/// {
/// Name = "example_policy",
/// Path = "/",
/// PolicyDocument = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("1"),
/// Actions: []string{
/// "s3:ListAllMyBuckets",
/// "s3:GetBucketLocation",
/// },
/// Resources: []string{
/// "arn:aws:s3:::*",
/// },
/// },
/// {
/// Actions: []string{
/// "s3:ListBucket",
/// },
/// Resources: []string{
/// fmt.Sprintf("arn:aws:s3:::%v", s3BucketName),
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test:     "StringLike",
/// Variable: "s3:prefix",
/// Values: []string{
/// "",
/// "home/",
/// "home/&{aws:username}/",
/// },
/// },
/// },
/// },
/// {
/// Actions: []string{
/// "s3:*",
/// },
/// Resources: []string{
/// fmt.Sprintf("arn:aws:s3:::%v/home/&{aws:username}", s3BucketName),
/// fmt.Sprintf("arn:aws:s3:::%v/home/&{aws:username}/*", s3BucketName),
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewPolicy(ctx, "example", &iam.PolicyArgs{
/// Name:   pulumi.String("example_policy"),
/// Path:   pulumi.String("/"),
/// Policy: pulumi.String(example.Json),
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
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
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
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("1")
/// .actions(
/// "s3:ListAllMyBuckets",
/// "s3:GetBucketLocation")
/// .resources("arn:aws:s3:::*")
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .actions("s3:ListBucket")
/// .resources(String.format("arn:aws:s3:::%s", s3BucketName))
/// .conditions(GetPolicyDocumentStatementConditionArgs.builder()
/// .test("StringLike")
/// .variable("s3:prefix")
/// .values(
/// "",
/// "home/",
/// "home/&{aws:username}/")
/// .build())
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .actions("s3:*")
/// .resources(
/// String.format("arn:aws:s3:::%s/home/&{{aws:username}}", s3BucketName),
/// String.format("arn:aws:s3:::%s/home/&{{aws:username}}/*", s3BucketName))
/// .build())
/// .build());
///
/// var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
/// .name("example_policy")
/// .path("/")
/// .policy(example.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// examplePolicy:
/// type: aws:iam:Policy
/// name: example
/// properties:
/// name: example_policy
/// path: /
/// policy: ${example.json}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: '1'
/// actions:
/// - s3:ListAllMyBuckets
/// - s3:GetBucketLocation
/// resources:
/// - arn:aws:s3:::*
/// - actions:
/// - s3:ListBucket
/// resources:
/// - arn:aws:s3:::${s3BucketName}
/// conditions:
/// - test: StringLike
/// variable: s3:prefix
/// values:
/// - ""
/// - home/
/// - home/&{aws:username}/
/// - actions:
/// - s3:*
/// resources:
/// - arn:aws:s3:::${s3BucketName}/home/&{aws:username}
/// - arn:aws:s3:::${s3BucketName}/home/&{aws:username}/*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example Multiple Condition Keys and Values
///
/// You can specify a [condition with multiple keys and values](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_multi-value-conditions.html) by supplying multiple <span pulumi-lang-nodejs="`condition`" pulumi-lang-dotnet="`Condition`" pulumi-lang-go="`condition`" pulumi-lang-python="`condition`" pulumi-lang-yaml="`condition`" pulumi-lang-java="`condition`">`condition`</span> blocks with the same <span pulumi-lang-nodejs="`test`" pulumi-lang-dotnet="`Test`" pulumi-lang-go="`test`" pulumi-lang-python="`test`" pulumi-lang-yaml="`test`" pulumi-lang-java="`test`">`test`</span> value, but differing <span pulumi-lang-nodejs="`variable`" pulumi-lang-dotnet="`Variable`" pulumi-lang-go="`variable`" pulumi-lang-python="`variable`" pulumi-lang-yaml="`variable`" pulumi-lang-java="`variable`">`variable`</span> and <span pulumi-lang-nodejs="`values`" pulumi-lang-dotnet="`Values`" pulumi-lang-go="`values`" pulumi-lang-python="`values`" pulumi-lang-yaml="`values`" pulumi-lang-java="`values`">`values`</span> values.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleMultipleConditionKeysAndValues = aws.iam.getPolicyDocument({
/// statements: [{
/// actions: [
/// "kms:Decrypt",
/// "kms:GenerateDataKey",
/// ],
/// resources: ["*"],
/// conditions: [
/// {
/// test: "ForAnyValue:StringEquals",
/// variable: "kms:EncryptionContext:service",
/// values: ["pi"],
/// },
/// {
/// test: "ForAnyValue:StringEquals",
/// variable: "kms:EncryptionContext:aws:pi:service",
/// values: ["rds"],
/// },
/// {
/// test: "ForAnyValue:StringEquals",
/// variable: "kms:EncryptionContext:aws:rds:db-id",
/// values: [
/// "db-AAAAABBBBBCCCCCDDDDDEEEEE",
/// "db-EEEEEDDDDDCCCCCBBBBBAAAAA",
/// ],
/// },
/// ],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_multiple_condition_keys_and_values = aws.iam.get_policy_document(statements=[{
/// "actions": [
/// "kms:Decrypt",
/// "kms:GenerateDataKey",
/// ],
/// "resources": ["*"],
/// "conditions": [
/// {
/// "test": "ForAnyValue:StringEquals",
/// "variable": "kms:EncryptionContext:service",
/// "values": ["pi"],
/// },
/// {
/// "test": "ForAnyValue:StringEquals",
/// "variable": "kms:EncryptionContext:aws:pi:service",
/// "values": ["rds"],
/// },
/// {
/// "test": "ForAnyValue:StringEquals",
/// "variable": "kms:EncryptionContext:aws:rds:db-id",
/// "values": [
/// "db-AAAAABBBBBCCCCCDDDDDEEEEE",
/// "db-EEEEEDDDDDCCCCCBBBBBAAAAA",
/// ],
/// },
/// ],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleMultipleConditionKeysAndValues = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "kms:Decrypt",
/// "kms:GenerateDataKey",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// Conditions = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
/// {
/// Test = "ForAnyValue:StringEquals",
/// Variable = "kms:EncryptionContext:service",
/// Values = new[]
/// {
/// "pi",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
/// {
/// Test = "ForAnyValue:StringEquals",
/// Variable = "kms:EncryptionContext:aws:pi:service",
/// Values = new[]
/// {
/// "rds",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
/// {
/// Test = "ForAnyValue:StringEquals",
/// Variable = "kms:EncryptionContext:aws:rds:db-id",
/// Values = new[]
/// {
/// "db-AAAAABBBBBCCCCCDDDDDEEEEE",
/// "db-EEEEEDDDDDCCCCCBBBBBAAAAA",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "kms:Decrypt",
/// "kms:GenerateDataKey",
/// },
/// Resources: []string{
/// "*",
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test:     "ForAnyValue:StringEquals",
/// Variable: "kms:EncryptionContext:service",
/// Values: []string{
/// "pi",
/// },
/// },
/// {
/// Test:     "ForAnyValue:StringEquals",
/// Variable: "kms:EncryptionContext:aws:pi:service",
/// Values: []string{
/// "rds",
/// },
/// },
/// {
/// Test:     "ForAnyValue:StringEquals",
/// Variable: "kms:EncryptionContext:aws:rds:db-id",
/// Values: []string{
/// "db-AAAAABBBBBCCCCCDDDDDEEEEE",
/// "db-EEEEEDDDDDCCCCCBBBBBAAAAA",
/// },
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
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
/// final var exampleMultipleConditionKeysAndValues = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions(
/// "kms:Decrypt",
/// "kms:GenerateDataKey")
/// .resources("*")
/// .conditions(
/// GetPolicyDocumentStatementConditionArgs.builder()
/// .test("ForAnyValue:StringEquals")
/// .variable("kms:EncryptionContext:service")
/// .values("pi")
/// .build(),
/// GetPolicyDocumentStatementConditionArgs.builder()
/// .test("ForAnyValue:StringEquals")
/// .variable("kms:EncryptionContext:aws:pi:service")
/// .values("rds")
/// .build(),
/// GetPolicyDocumentStatementConditionArgs.builder()
/// .test("ForAnyValue:StringEquals")
/// .variable("kms:EncryptionContext:aws:rds:db-id")
/// .values(
/// "db-AAAAABBBBBCCCCCDDDDDEEEEE",
/// "db-EEEEEDDDDDCCCCCBBBBBAAAAA")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// exampleMultipleConditionKeysAndValues:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - kms:Decrypt
/// - kms:GenerateDataKey
/// resources:
/// - '*'
/// conditions:
/// - test: ForAnyValue:StringEquals
/// variable: kms:EncryptionContext:service
/// values:
/// - pi
/// - test: ForAnyValue:StringEquals
/// variable: kms:EncryptionContext:aws:pi:service
/// values:
/// - rds
/// - test: ForAnyValue:StringEquals
/// variable: kms:EncryptionContext:aws:rds:db-id
/// values:
/// - db-AAAAABBBBBCCCCCDDDDDEEEEE
/// - db-EEEEEDDDDDCCCCCBBBBBAAAAA
/// ```
/// <!--End PulumiCodeChooser -->
///
/// `data.aws_iam_policy_document.example_multiple_condition_keys_and_values.json` will evaluate to:
///
/// ```json
/// {
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Sid": "",
/// "Effect": "Allow",
/// "Action": [
/// "kms:GenerateDataKey",
/// "kms:Decrypt"
/// ],
/// "Resource": "*",
/// "Condition": {
/// "ForAnyValue:StringEquals": {
/// "kms:EncryptionContext:aws:pi:service": "rds",
/// "kms:EncryptionContext:aws:rds:db-id": [
/// "db-AAAAABBBBBCCCCCDDDDDEEEEE",
/// "db-EEEEEDDDDDCCCCCBBBBBAAAAA"
/// ],
/// "kms:EncryptionContext:service": "pi"
/// }
/// }
/// }
/// ]
/// }
/// ```
///
/// ### Example Assume-Role Policy with Multiple Principals
///
/// You can specify multiple principal blocks with different types. You can also use this data source to generate an assume-role policy.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const eventStreamBucketRoleAssumeRolePolicy = aws.iam.getPolicyDocument({
/// statements: [{
/// actions: ["sts:AssumeRole"],
/// principals: [
/// {
/// type: "Service",
/// identifiers: ["firehose.amazonaws.com"],
/// },
/// {
/// type: "AWS",
/// identifiers: [trustedRoleArn],
/// },
/// {
/// type: "Federated",
/// identifiers: [
/// `arn:aws:iam::${accountId}:saml-provider/${providerName}`,
/// "cognito-identity.amazonaws.com",
/// ],
/// },
/// ],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// event_stream_bucket_role_assume_role_policy = aws.iam.get_policy_document(statements=[{
/// "actions": ["sts:AssumeRole"],
/// "principals": [
/// {
/// "type": "Service",
/// "identifiers": ["firehose.amazonaws.com"],
/// },
/// {
/// "type": "AWS",
/// "identifiers": [trusted_role_arn],
/// },
/// {
/// "type": "Federated",
/// "identifiers": [
/// f"arn:aws:iam::{account_id}:saml-provider/{provider_name}",
/// "cognito-identity.amazonaws.com",
/// ],
/// },
/// ],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var eventStreamBucketRoleAssumeRolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "firehose.amazonaws.com",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// trustedRoleArn,
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Federated",
/// Identifiers = new[]
/// {
/// $"arn:aws:iam::{accountId}:saml-provider/{providerName}",
/// "cognito-identity.amazonaws.com",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "firehose.amazonaws.com",
/// },
/// },
/// {
/// Type: "AWS",
/// Identifiers: interface{}{
/// trustedRoleArn,
/// },
/// },
/// {
/// Type: "Federated",
/// Identifiers: []string{
/// fmt.Sprintf("arn:aws:iam::%v:saml-provider/%v", accountId, providerName),
/// "cognito-identity.amazonaws.com",
/// },
/// },
/// },
/// },
/// },
/// }, nil);
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
/// final var eventStreamBucketRoleAssumeRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("sts:AssumeRole")
/// .principals(
/// GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("firehose.amazonaws.com")
/// .build(),
/// GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers(trustedRoleArn)
/// .build(),
/// GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Federated")
/// .identifiers(
/// String.format("arn:aws:iam::%s:saml-provider/%s", accountId,providerName),
/// "cognito-identity.amazonaws.com")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// eventStreamBucketRoleAssumeRolePolicy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - sts:AssumeRole
/// principals:
/// - type: Service
/// identifiers:
/// - firehose.amazonaws.com
/// - type: AWS
/// identifiers:
/// - ${trustedRoleArn}
/// - type: Federated
/// identifiers:
/// - arn:aws:iam::${accountId}:saml-provider/${providerName}
/// - cognito-identity.amazonaws.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example Using A Source Document
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const source = aws.iam.getPolicyDocument({
/// statements: [
/// {
/// actions: ["ec2:*"],
/// resources: ["*"],
/// },
/// {
/// sid: "SidToOverride",
/// actions: ["s3:*"],
/// resources: ["*"],
/// },
/// ],
/// });
/// const sourceDocumentExample = source.then(source => aws.iam.getPolicyDocument({
/// sourcePolicyDocuments: [source.json],
/// statements: [{
/// sid: "SidToOverride",
/// actions: ["s3:*"],
/// resources: [
/// "arn:aws:s3:::somebucket",
/// "arn:aws:s3:::somebucket/*",
/// ],
/// }],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// source = aws.iam.get_policy_document(statements=[
/// {
/// "actions": ["ec2:*"],
/// "resources": ["*"],
/// },
/// {
/// "sid": "SidToOverride",
/// "actions": ["s3:*"],
/// "resources": ["*"],
/// },
/// ])
/// source_document_example = aws.iam.get_policy_document(source_policy_documents=[source.json],
/// statements=[{
/// "sid": "SidToOverride",
/// "actions": ["s3:*"],
/// "resources": [
/// "arn:aws:s3:::somebucket",
/// "arn:aws:s3:::somebucket/*",
/// ],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var source = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "ec2:*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "SidToOverride",
/// Actions = new[]
/// {
/// "s3:*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var sourceDocumentExample = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// SourcePolicyDocuments = new[]
/// {
/// source.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// },
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "SidToOverride",
/// Actions = new[]
/// {
/// "s3:*",
/// },
/// Resources = new[]
/// {
/// "arn:aws:s3:::somebucket",
/// "arn:aws:s3:::somebucket/*",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// source, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "ec2:*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// {
/// Sid: pulumi.StringRef("SidToOverride"),
/// Actions: []string{
/// "s3:*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// SourcePolicyDocuments: interface{}{
/// source.Json,
/// },
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("SidToOverride"),
/// Actions: []string{
/// "s3:*",
/// },
/// Resources: []string{
/// "arn:aws:s3:::somebucket",
/// "arn:aws:s3:::somebucket/*",
/// },
/// },
/// },
/// }, nil);
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
/// final var source = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .actions("ec2:*")
/// .resources("*")
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("SidToOverride")
/// .actions("s3:*")
/// .resources("*")
/// .build())
/// .build());
///
/// final var sourceDocumentExample = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .sourcePolicyDocuments(source.json())
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("SidToOverride")
/// .actions("s3:*")
/// .resources(
/// "arn:aws:s3:::somebucket",
/// "arn:aws:s3:::somebucket/*")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// source:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - ec2:*
/// resources:
/// - '*'
/// - sid: SidToOverride
/// actions:
/// - s3:*
/// resources:
/// - '*'
/// sourceDocumentExample:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// sourcePolicyDocuments:
/// - ${source.json}
/// statements:
/// - sid: SidToOverride
/// actions:
/// - s3:*
/// resources:
/// - arn:aws:s3:::somebucket
/// - arn:aws:s3:::somebucket/*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// `data.aws_iam_policy_document.source_document_example.json` will evaluate to:
///
/// ```json
/// {
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Sid": "",
/// "Effect": "Allow",
/// "Action": "ec2:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "SidToOverride",
/// "Effect": "Allow",
/// "Action": "s3:*",
/// "Resource": [
/// "arn:aws:s3:::somebucket/*",
/// "arn:aws:s3:::somebucket"
/// ]
/// }
/// ]
/// }
/// ```
///
/// ### Example Using An Override Document
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const override = aws.iam.getPolicyDocument({
/// statements: [{
/// sid: "SidToOverride",
/// actions: ["s3:*"],
/// resources: ["*"],
/// }],
/// });
/// const overridePolicyDocumentExample = override.then(override => aws.iam.getPolicyDocument({
/// overridePolicyDocuments: [override.json],
/// statements: [
/// {
/// actions: ["ec2:*"],
/// resources: ["*"],
/// },
/// {
/// sid: "SidToOverride",
/// actions: ["s3:*"],
/// resources: [
/// "arn:aws:s3:::somebucket",
/// "arn:aws:s3:::somebucket/*",
/// ],
/// },
/// ],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// override = aws.iam.get_policy_document(statements=[{
/// "sid": "SidToOverride",
/// "actions": ["s3:*"],
/// "resources": ["*"],
/// }])
/// override_policy_document_example = aws.iam.get_policy_document(override_policy_documents=[override.json],
/// statements=[
/// {
/// "actions": ["ec2:*"],
/// "resources": ["*"],
/// },
/// {
/// "sid": "SidToOverride",
/// "actions": ["s3:*"],
/// "resources": [
/// "arn:aws:s3:::somebucket",
/// "arn:aws:s3:::somebucket/*",
/// ],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @override = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "SidToOverride",
/// Actions = new[]
/// {
/// "s3:*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var overridePolicyDocumentExample = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// OverridePolicyDocuments = new[]
/// {
/// @override.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// },
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "ec2:*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "SidToOverride",
/// Actions = new[]
/// {
/// "s3:*",
/// },
/// Resources = new[]
/// {
/// "arn:aws:s3:::somebucket",
/// "arn:aws:s3:::somebucket/*",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// override, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("SidToOverride"),
/// Actions: []string{
/// "s3:*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// OverridePolicyDocuments: interface{}{
/// override.Json,
/// },
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "ec2:*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// {
/// Sid: pulumi.StringRef("SidToOverride"),
/// Actions: []string{
/// "s3:*",
/// },
/// Resources: []string{
/// "arn:aws:s3:::somebucket",
/// "arn:aws:s3:::somebucket/*",
/// },
/// },
/// },
/// }, nil);
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
/// final var override = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("SidToOverride")
/// .actions("s3:*")
/// .resources("*")
/// .build())
/// .build());
///
/// final var overridePolicyDocumentExample = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .overridePolicyDocuments(override.json())
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .actions("ec2:*")
/// .resources("*")
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("SidToOverride")
/// .actions("s3:*")
/// .resources(
/// "arn:aws:s3:::somebucket",
/// "arn:aws:s3:::somebucket/*")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// override:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: SidToOverride
/// actions:
/// - s3:*
/// resources:
/// - '*'
/// overridePolicyDocumentExample:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// overridePolicyDocuments:
/// - ${override.json}
/// statements:
/// - actions:
/// - ec2:*
/// resources:
/// - '*'
/// - sid: SidToOverride
/// actions:
/// - s3:*
/// resources:
/// - arn:aws:s3:::somebucket
/// - arn:aws:s3:::somebucket/*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// `data.aws_iam_policy_document.override_policy_document_example.json` will evaluate to:
///
/// ```json
/// {
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Sid": "",
/// "Effect": "Allow",
/// "Action": "ec2:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "SidToOverride",
/// "Effect": "Allow",
/// "Action": "s3:*",
/// "Resource": "*"
/// }
/// ]
/// }
/// ```
///
/// ### Example with Both Source and Override Documents
///
/// You can also combine <span pulumi-lang-nodejs="`sourcePolicyDocuments`" pulumi-lang-dotnet="`SourcePolicyDocuments`" pulumi-lang-go="`sourcePolicyDocuments`" pulumi-lang-python="`source_policy_documents`" pulumi-lang-yaml="`sourcePolicyDocuments`" pulumi-lang-java="`sourcePolicyDocuments`">`source_policy_documents`</span> and <span pulumi-lang-nodejs="`overridePolicyDocuments`" pulumi-lang-dotnet="`OverridePolicyDocuments`" pulumi-lang-go="`overridePolicyDocuments`" pulumi-lang-python="`override_policy_documents`" pulumi-lang-yaml="`overridePolicyDocuments`" pulumi-lang-java="`overridePolicyDocuments`">`override_policy_documents`</span> in the same document.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const source = aws.iam.getPolicyDocument({
/// statements: [{
/// sid: "OverridePlaceholder",
/// actions: ["ec2:DescribeAccountAttributes"],
/// resources: ["*"],
/// }],
/// });
/// const override = aws.iam.getPolicyDocument({
/// statements: [{
/// sid: "OverridePlaceholder",
/// actions: ["s3:GetObject"],
/// resources: ["*"],
/// }],
/// });
/// const politik = Promise.all([source, override]).then(([source, override]) => aws.iam.getPolicyDocument({
/// sourcePolicyDocuments: [source.json],
/// overridePolicyDocuments: [override.json],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// source = aws.iam.get_policy_document(statements=[{
/// "sid": "OverridePlaceholder",
/// "actions": ["ec2:DescribeAccountAttributes"],
/// "resources": ["*"],
/// }])
/// override = aws.iam.get_policy_document(statements=[{
/// "sid": "OverridePlaceholder",
/// "actions": ["s3:GetObject"],
/// "resources": ["*"],
/// }])
/// politik = aws.iam.get_policy_document(source_policy_documents=[source.json],
/// override_policy_documents=[override.json])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var source = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "OverridePlaceholder",
/// Actions = new[]
/// {
/// "ec2:DescribeAccountAttributes",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var @override = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "OverridePlaceholder",
/// Actions = new[]
/// {
/// "s3:GetObject",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var politik = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// SourcePolicyDocuments = new[]
/// {
/// source.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// },
/// OverridePolicyDocuments = new[]
/// {
/// @override.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// source, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("OverridePlaceholder"),
/// Actions: []string{
/// "ec2:DescribeAccountAttributes",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// override, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("OverridePlaceholder"),
/// Actions: []string{
/// "s3:GetObject",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// SourcePolicyDocuments: interface{}{
/// source.Json,
/// },
/// OverridePolicyDocuments: interface{}{
/// override.Json,
/// },
/// }, nil);
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
/// final var source = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("OverridePlaceholder")
/// .actions("ec2:DescribeAccountAttributes")
/// .resources("*")
/// .build())
/// .build());
///
/// final var override = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("OverridePlaceholder")
/// .actions("s3:GetObject")
/// .resources("*")
/// .build())
/// .build());
///
/// final var politik = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .sourcePolicyDocuments(source.json())
/// .overridePolicyDocuments(override.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// source:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: OverridePlaceholder
/// actions:
/// - ec2:DescribeAccountAttributes
/// resources:
/// - '*'
/// override:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: OverridePlaceholder
/// actions:
/// - s3:GetObject
/// resources:
/// - '*'
/// politik:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// sourcePolicyDocuments:
/// - ${source.json}
/// overridePolicyDocuments:
/// - ${override.json}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// `data.aws_iam_policy_document.politik.json` will evaluate to:
///
/// ```json
/// {
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Sid": "OverridePlaceholder",
/// "Effect": "Allow",
/// "Action": "s3:GetObject",
/// "Resource": "*"
/// }
/// ]
/// }
/// ```
///
/// ### Example of Merging Source Documents
///
/// Multiple documents can be combined using the <span pulumi-lang-nodejs="`sourcePolicyDocuments`" pulumi-lang-dotnet="`SourcePolicyDocuments`" pulumi-lang-go="`sourcePolicyDocuments`" pulumi-lang-python="`source_policy_documents`" pulumi-lang-yaml="`sourcePolicyDocuments`" pulumi-lang-java="`sourcePolicyDocuments`">`source_policy_documents`</span> or <span pulumi-lang-nodejs="`overridePolicyDocuments`" pulumi-lang-dotnet="`OverridePolicyDocuments`" pulumi-lang-go="`overridePolicyDocuments`" pulumi-lang-python="`override_policy_documents`" pulumi-lang-yaml="`overridePolicyDocuments`" pulumi-lang-java="`overridePolicyDocuments`">`override_policy_documents`</span> attributes. <span pulumi-lang-nodejs="`sourcePolicyDocuments`" pulumi-lang-dotnet="`SourcePolicyDocuments`" pulumi-lang-go="`sourcePolicyDocuments`" pulumi-lang-python="`source_policy_documents`" pulumi-lang-yaml="`sourcePolicyDocuments`" pulumi-lang-java="`sourcePolicyDocuments`">`source_policy_documents`</span> requires that all documents have unique Sids, while <span pulumi-lang-nodejs="`overridePolicyDocuments`" pulumi-lang-dotnet="`OverridePolicyDocuments`" pulumi-lang-go="`overridePolicyDocuments`" pulumi-lang-python="`override_policy_documents`" pulumi-lang-yaml="`overridePolicyDocuments`" pulumi-lang-java="`overridePolicyDocuments`">`override_policy_documents`</span> will iteratively override matching Sids.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sourceOne = aws.iam.getPolicyDocument({
/// statements: [
/// {
/// actions: ["ec2:*"],
/// resources: ["*"],
/// },
/// {
/// sid: "UniqueSidOne",
/// actions: ["s3:*"],
/// resources: ["*"],
/// },
/// ],
/// });
/// const sourceTwo = aws.iam.getPolicyDocument({
/// statements: [
/// {
/// sid: "UniqueSidTwo",
/// actions: ["iam:*"],
/// resources: ["*"],
/// },
/// {
/// actions: ["lambda:*"],
/// resources: ["*"],
/// },
/// ],
/// });
/// const combined = Promise.all([sourceOne, sourceTwo]).then(([sourceOne, sourceTwo]) => aws.iam.getPolicyDocument({
/// sourcePolicyDocuments: [
/// sourceOne.json,
/// sourceTwo.json,
/// ],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// source_one = aws.iam.get_policy_document(statements=[
/// {
/// "actions": ["ec2:*"],
/// "resources": ["*"],
/// },
/// {
/// "sid": "UniqueSidOne",
/// "actions": ["s3:*"],
/// "resources": ["*"],
/// },
/// ])
/// source_two = aws.iam.get_policy_document(statements=[
/// {
/// "sid": "UniqueSidTwo",
/// "actions": ["iam:*"],
/// "resources": ["*"],
/// },
/// {
/// "actions": ["lambda:*"],
/// "resources": ["*"],
/// },
/// ])
/// combined = aws.iam.get_policy_document(source_policy_documents=[
/// source_one.json,
/// source_two.json,
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var sourceOne = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "ec2:*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "UniqueSidOne",
/// Actions = new[]
/// {
/// "s3:*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var sourceTwo = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "UniqueSidTwo",
/// Actions = new[]
/// {
/// "iam:*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "lambda:*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var combined = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// SourcePolicyDocuments = new[]
/// {
/// sourceOne.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// sourceTwo.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// sourceOne, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "ec2:*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// {
/// Sid: pulumi.StringRef("UniqueSidOne"),
/// Actions: []string{
/// "s3:*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// sourceTwo, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("UniqueSidTwo"),
/// Actions: []string{
/// "iam:*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// {
/// Actions: []string{
/// "lambda:*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// SourcePolicyDocuments: interface{}{
/// sourceOne.Json,
/// sourceTwo.Json,
/// },
/// }, nil);
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
/// final var sourceOne = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .actions("ec2:*")
/// .resources("*")
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("UniqueSidOne")
/// .actions("s3:*")
/// .resources("*")
/// .build())
/// .build());
///
/// final var sourceTwo = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("UniqueSidTwo")
/// .actions("iam:*")
/// .resources("*")
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .actions("lambda:*")
/// .resources("*")
/// .build())
/// .build());
///
/// final var combined = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .sourcePolicyDocuments(
/// sourceOne.json(),
/// sourceTwo.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// sourceOne:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - ec2:*
/// resources:
/// - '*'
/// - sid: UniqueSidOne
/// actions:
/// - s3:*
/// resources:
/// - '*'
/// sourceTwo:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: UniqueSidTwo
/// actions:
/// - iam:*
/// resources:
/// - '*'
/// - actions:
/// - lambda:*
/// resources:
/// - '*'
/// combined:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// sourcePolicyDocuments:
/// - ${sourceOne.json}
/// - ${sourceTwo.json}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// `data.aws_iam_policy_document.combined.json` will evaluate to:
///
/// ```json
/// {
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Sid": "",
/// "Effect": "Allow",
/// "Action": "ec2:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "UniqueSidOne",
/// "Effect": "Allow",
/// "Action": "s3:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "UniqueSidTwo",
/// "Effect": "Allow",
/// "Action": "iam:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "",
/// "Effect": "Allow",
/// "Action": "lambda:*",
/// "Resource": "*"
/// }
/// ]
/// }
/// ```
///
/// ### Example of Merging Override Documents
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const policyOne = aws.iam.getPolicyDocument({
/// statements: [{
/// sid: "OverridePlaceHolderOne",
/// effect: "Allow",
/// actions: ["s3:*"],
/// resources: ["*"],
/// }],
/// });
/// const policyTwo = aws.iam.getPolicyDocument({
/// statements: [
/// {
/// effect: "Allow",
/// actions: ["ec2:*"],
/// resources: ["*"],
/// },
/// {
/// sid: "OverridePlaceHolderTwo",
/// effect: "Allow",
/// actions: ["iam:*"],
/// resources: ["*"],
/// },
/// ],
/// });
/// const policyThree = aws.iam.getPolicyDocument({
/// statements: [{
/// sid: "OverridePlaceHolderOne",
/// effect: "Deny",
/// actions: ["logs:*"],
/// resources: ["*"],
/// }],
/// });
/// const combined = Promise.all([policyOne, policyTwo, policyThree]).then(([policyOne, policyTwo, policyThree]) => aws.iam.getPolicyDocument({
/// overridePolicyDocuments: [
/// policyOne.json,
/// policyTwo.json,
/// policyThree.json,
/// ],
/// statements: [{
/// sid: "OverridePlaceHolderTwo",
/// effect: "Deny",
/// actions: ["*"],
/// resources: ["*"],
/// }],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// policy_one = aws.iam.get_policy_document(statements=[{
/// "sid": "OverridePlaceHolderOne",
/// "effect": "Allow",
/// "actions": ["s3:*"],
/// "resources": ["*"],
/// }])
/// policy_two = aws.iam.get_policy_document(statements=[
/// {
/// "effect": "Allow",
/// "actions": ["ec2:*"],
/// "resources": ["*"],
/// },
/// {
/// "sid": "OverridePlaceHolderTwo",
/// "effect": "Allow",
/// "actions": ["iam:*"],
/// "resources": ["*"],
/// },
/// ])
/// policy_three = aws.iam.get_policy_document(statements=[{
/// "sid": "OverridePlaceHolderOne",
/// "effect": "Deny",
/// "actions": ["logs:*"],
/// "resources": ["*"],
/// }])
/// combined = aws.iam.get_policy_document(override_policy_documents=[
/// policy_one.json,
/// policy_two.json,
/// policy_three.json,
/// ],
/// statements=[{
/// "sid": "OverridePlaceHolderTwo",
/// "effect": "Deny",
/// "actions": ["*"],
/// "resources": ["*"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policyOne = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "OverridePlaceHolderOne",
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "s3:*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var policyTwo = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "ec2:*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "OverridePlaceHolderTwo",
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "iam:*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var policyThree = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "OverridePlaceHolderOne",
/// Effect = "Deny",
/// Actions = new[]
/// {
/// "logs:*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var combined = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// OverridePolicyDocuments = new[]
/// {
/// policyOne.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// policyTwo.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// policyThree.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// },
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "OverridePlaceHolderTwo",
/// Effect = "Deny",
/// Actions = new[]
/// {
/// "*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// policyOne, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("OverridePlaceHolderOne"),
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "s3:*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// policyTwo, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "ec2:*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// {
/// Sid: pulumi.StringRef("OverridePlaceHolderTwo"),
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "iam:*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// policyThree, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("OverridePlaceHolderOne"),
/// Effect: pulumi.StringRef("Deny"),
/// Actions: []string{
/// "logs:*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// OverridePolicyDocuments: interface{}{
/// policyOne.Json,
/// policyTwo.Json,
/// policyThree.Json,
/// },
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("OverridePlaceHolderTwo"),
/// Effect: pulumi.StringRef("Deny"),
/// Actions: []string{
/// "*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil);
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
/// final var policyOne = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("OverridePlaceHolderOne")
/// .effect("Allow")
/// .actions("s3:*")
/// .resources("*")
/// .build())
/// .build());
///
/// final var policyTwo = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("ec2:*")
/// .resources("*")
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("OverridePlaceHolderTwo")
/// .effect("Allow")
/// .actions("iam:*")
/// .resources("*")
/// .build())
/// .build());
///
/// final var policyThree = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("OverridePlaceHolderOne")
/// .effect("Deny")
/// .actions("logs:*")
/// .resources("*")
/// .build())
/// .build());
///
/// final var combined = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .overridePolicyDocuments(
/// policyOne.json(),
/// policyTwo.json(),
/// policyThree.json())
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("OverridePlaceHolderTwo")
/// .effect("Deny")
/// .actions("*")
/// .resources("*")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policyOne:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: OverridePlaceHolderOne
/// effect: Allow
/// actions:
/// - s3:*
/// resources:
/// - '*'
/// policyTwo:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - ec2:*
/// resources:
/// - '*'
/// - sid: OverridePlaceHolderTwo
/// effect: Allow
/// actions:
/// - iam:*
/// resources:
/// - '*'
/// policyThree:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: OverridePlaceHolderOne
/// effect: Deny
/// actions:
/// - logs:*
/// resources:
/// - '*'
/// combined:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// overridePolicyDocuments:
/// - ${policyOne.json}
/// - ${policyTwo.json}
/// - ${policyThree.json}
/// statements:
/// - sid: OverridePlaceHolderTwo
/// effect: Deny
/// actions:
/// - '*'
/// resources:
/// - '*'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// `data.aws_iam_policy_document.combined.json` will evaluate to:
///
/// ```json
/// {
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Sid": "OverridePlaceholderTwo",
/// "Effect": "Allow",
/// "Action": "iam:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "OverridePlaceholderOne",
/// "Effect": "Deny",
/// "Action": "logs:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "",
/// "Effect": "Allow",
/// "Action": "ec2:*",
/// "Resource": "*"
/// },
/// ]
/// }
/// ```
Future<GetPolicyDocumentResult> getPolicyDocument(
  GetPolicyDocumentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getPolicyDocument:getPolicyDocument',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyDocumentResult.fromMap(result);
}
