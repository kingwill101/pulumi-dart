import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_args.dart';
import 'resource_policy_state.dart';

/// Manages the complete IAM resource-based policy document for an AWS Lambda function, function version, or alias.
///
/// &gt; **Note:** `PutResourcePolicy` (used by this resource) replaces the *entire* resource-based policy on the Lambda resource, including any statements added with `aws.lambda.Permission`. Do not use `aws.lambda.ResourcePolicy` and `aws.lambda.Permission` on the same Lambda function, version, or alias — every apply of one will overwrite statements managed by the other.
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
/// const example = current.then(current => aws.iam.getPolicyDocument({
///     statements: [{
///         conditions: [{
///             test: "StringEquals",
///             variable: "aws:SourceAccount",
///             values: [current.accountId],
///         }],
///         principals: [{
///             type: "Service",
///             identifiers: ["s3.amazonaws.com"],
///         }],
///         sid: "AllowInvokeFromS3",
///         effect: "Allow",
///         actions: ["lambda:InvokeFunction"],
///         resources: [exampleAwsLambdaFunction.arn],
///     }],
/// }));
/// const exampleResourcePolicy = new aws.lambda.ResourcePolicy("example", {
///     resourceArn: exampleAwsLambdaFunction.arn,
///     policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.iam.get_policy_document(statements=[{
///     "conditions": [{
///         "test": "StringEquals",
///         "variable": "aws:SourceAccount",
///         "values": [current.account_id],
///     }],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["s3.amazonaws.com"],
///     }],
///     "sid": "AllowInvokeFromS3",
///     "effect": "Allow",
///     "actions": ["lambda:InvokeFunction"],
///     "resources": [example_aws_lambda_function["arn"]],
/// }])
/// example_resource_policy = aws.lambda_.ResourcePolicy("example",
///     resource_arn=example_aws_lambda_function["arn"],
///     policy=example.json)
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
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "aws:SourceAccount",
///                         Values = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "s3.amazonaws.com",
///                         },
///                     },
///                 },
///                 Sid = "AllowInvokeFromS3",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "lambda:InvokeFunction",
///                 },
///                 Resources = new[]
///                 {
///                     exampleAwsLambdaFunction.Arn,
///                 },
///             },
///         },
///     });
///
///     var exampleResourcePolicy = new Aws.Lambda.ResourcePolicy("example", new()
///     {
///         ResourceArn = exampleAwsLambdaFunction.Arn,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Conditions: []iam.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Test:     "StringEquals",
/// 							Variable: "aws:SourceAccount",
/// 							Values: pulumi.StringArray{
/// 								current.AccountId,
/// 							},
/// 						},
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"s3.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.StringRef("AllowInvokeFromS3"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"lambda:InvokeFunction",
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleAwsLambdaFunction.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewResourcePolicy(ctx, "example", &lambda.ResourcePolicyArgs{
/// 			ResourceArn: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			Policy:      pulumi.String(example.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     conditions {
///       test     = "StringEquals"
///       variable = "aws:SourceAccount"
///       values   = [data.aws_getcalleridentity.current.account_id]
///     }
///     principals {
///       type        = "Service"
///       identifiers = ["s3.amazonaws.com"]
///     }
///     sid       = "AllowInvokeFromS3"
///     effect    = "Allow"
///     actions   = ["lambda:InvokeFunction"]
///     resources = [exampleAwsLambdaFunction.arn]
///   }
/// }
/// data "aws_getcalleridentity" "current" {
/// }
///
/// resource "aws_lambda_resourcepolicy" "example" {
///   resource_arn = exampleAwsLambdaFunction.arn
///   policy       = data.aws_iam_getpolicydocument.example.json
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.lambda.ResourcePolicy;
/// import com.pulumi.aws.lambda.ResourcePolicyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("StringEquals")
///                     .variable("aws:SourceAccount")
///                     .values(current.accountId())
///                     .build())
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("s3.amazonaws.com")
///                     .build())
///                 .sid("AllowInvokeFromS3")
///                 .effect("Allow")
///                 .actions("lambda:InvokeFunction")
///                 .resources(exampleAwsLambdaFunction.arn())
///                 .build())
///             .build());
///
///         var exampleResourcePolicy = new ResourcePolicy("exampleResourcePolicy", ResourcePolicyArgs.builder()
///             .resourceArn(exampleAwsLambdaFunction.arn())
///             .policy(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourcePolicy:
///     type: aws:lambda:ResourcePolicy
///     name: example
///     properties:
///       resourceArn: ${exampleAwsLambdaFunction.arn}
///       policy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - conditions:
///               - test: StringEquals
///                 variable: aws:SourceAccount
///                 values:
///                   - ${current.accountId}
///             principals:
///               - type: Service
///                 identifiers:
///                   - s3.amazonaws.com
///             sid: AllowInvokeFromS3
///             effect: Allow
///             actions:
///               - lambda:InvokeFunction
///             resources:
///               - ${exampleAwsLambdaFunction.arn}
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ### Multiple Principals
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicyDocument({
///     statements: [
///         {
///             principals: [{
///                 type: "AWS",
///                 identifiers: [
///                     "123456789012",
///                     "210987654321",
///                 ],
///             }],
///             sid: "AllowCrossAccountInvoke",
///             effect: "Allow",
///             actions: ["lambda:InvokeFunction"],
///             resources: [exampleAwsLambdaFunction.arn],
///         },
///         {
///             conditions: [{
///                 test: "StringEquals",
///                 variable: "aws:PrincipalOrgID",
///                 values: ["o-1234567890"],
///             }],
///             principals: [{
///                 type: "AWS",
///                 identifiers: ["*"],
///             }],
///             sid: "AllowOrganizationInvoke",
///             effect: "Allow",
///             actions: ["lambda:InvokeFunction"],
///             resources: [exampleAwsLambdaFunction.arn],
///         },
///     ],
/// });
/// const exampleResourcePolicy = new aws.lambda.ResourcePolicy("example", {
///     resourceArn: exampleAwsLambdaFunction.arn,
///     policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[
///     {
///         "principals": [{
///             "type": "AWS",
///             "identifiers": [
///                 "123456789012",
///                 "210987654321",
///             ],
///         }],
///         "sid": "AllowCrossAccountInvoke",
///         "effect": "Allow",
///         "actions": ["lambda:InvokeFunction"],
///         "resources": [example_aws_lambda_function["arn"]],
///     },
///     {
///         "conditions": [{
///             "test": "StringEquals",
///             "variable": "aws:PrincipalOrgID",
///             "values": ["o-1234567890"],
///         }],
///         "principals": [{
///             "type": "AWS",
///             "identifiers": ["*"],
///         }],
///         "sid": "AllowOrganizationInvoke",
///         "effect": "Allow",
///         "actions": ["lambda:InvokeFunction"],
///         "resources": [example_aws_lambda_function["arn"]],
///     },
/// ])
/// example_resource_policy = aws.lambda_.ResourcePolicy("example",
///     resource_arn=example_aws_lambda_function["arn"],
///     policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "123456789012",
///                             "210987654321",
///                         },
///                     },
///                 },
///                 Sid = "AllowCrossAccountInvoke",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "lambda:InvokeFunction",
///                 },
///                 Resources = new[]
///                 {
///                     exampleAwsLambdaFunction.Arn,
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "aws:PrincipalOrgID",
///                         Values = new[]
///                         {
///                             "o-1234567890",
///                         },
///                     },
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
///                 Sid = "AllowOrganizationInvoke",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "lambda:InvokeFunction",
///                 },
///                 Resources = new[]
///                 {
///                     exampleAwsLambdaFunction.Arn,
///                 },
///             },
///         },
///     });
///
///     var exampleResourcePolicy = new Aws.Lambda.ResourcePolicy("example", new()
///     {
///         ResourceArn = exampleAwsLambdaFunction.Arn,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								"123456789012",
/// 								"210987654321",
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.StringRef("AllowCrossAccountInvoke"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"lambda:InvokeFunction",
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleAwsLambdaFunction.Arn,
/// 					},
/// 				},
/// 				{
/// 					Conditions: []iam.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Test:     "StringEquals",
/// 							Variable: "aws:PrincipalOrgID",
/// 							Values: []string{
/// 								"o-1234567890",
/// 							},
/// 						},
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								"*",
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.StringRef("AllowOrganizationInvoke"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"lambda:InvokeFunction",
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleAwsLambdaFunction.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewResourcePolicy(ctx, "example", &lambda.ResourcePolicyArgs{
/// 			ResourceArn: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			Policy:      pulumi.String(example.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     principals {
///       type        = "AWS"
///       identifiers = ["123456789012", "210987654321"]
///     }
///     sid       = "AllowCrossAccountInvoke"
///     effect    = "Allow"
///     actions   = ["lambda:InvokeFunction"]
///     resources = [exampleAwsLambdaFunction.arn]
///   }
///   statements {
///     conditions {
///       test     = "StringEquals"
///       variable = "aws:PrincipalOrgID"
///       values   = ["o-1234567890"]
///     }
///     principals {
///       type        = "AWS"
///       identifiers = ["*"]
///     }
///     sid       = "AllowOrganizationInvoke"
///     effect    = "Allow"
///     actions   = ["lambda:InvokeFunction"]
///     resources = [exampleAwsLambdaFunction.arn]
///   }
/// }
///
/// resource "aws_lambda_resourcepolicy" "example" {
///   resource_arn = exampleAwsLambdaFunction.arn
///   policy       = data.aws_iam_getpolicydocument.example.json
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.lambda.ResourcePolicy;
/// import com.pulumi.aws.lambda.ResourcePolicyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers(
///                             "123456789012",
///                             "210987654321")
///                         .build())
///                     .sid("AllowCrossAccountInvoke")
///                     .effect("Allow")
///                     .actions("lambda:InvokeFunction")
///                     .resources(exampleAwsLambdaFunction.arn())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .variable("aws:PrincipalOrgID")
///                         .values("o-1234567890")
///                         .build())
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers("*")
///                         .build())
///                     .sid("AllowOrganizationInvoke")
///                     .effect("Allow")
///                     .actions("lambda:InvokeFunction")
///                     .resources(exampleAwsLambdaFunction.arn())
///                     .build())
///             .build());
///
///         var exampleResourcePolicy = new ResourcePolicy("exampleResourcePolicy", ResourcePolicyArgs.builder()
///             .resourceArn(exampleAwsLambdaFunction.arn())
///             .policy(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourcePolicy:
///     type: aws:lambda:ResourcePolicy
///     name: example
///     properties:
///       resourceArn: ${exampleAwsLambdaFunction.arn}
///       policy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: AWS
///                 identifiers:
///                   - '123456789012'
///                   - '210987654321'
///             sid: AllowCrossAccountInvoke
///             effect: Allow
///             actions:
///               - lambda:InvokeFunction
///             resources:
///               - ${exampleAwsLambdaFunction.arn}
///           - conditions:
///               - test: StringEquals
///                 variable: aws:PrincipalOrgID
///                 values:
///                   - o-1234567890
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '*'
///             sid: AllowOrganizationInvoke
///             effect: Allow
///             actions:
///               - lambda:InvokeFunction
///             resources:
///               - ${exampleAwsLambdaFunction.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `resourceArn` (String) ARN of the Lambda function, function version, or function alias.
///
///
/// Using `pulumi import`, import Lambda policies using the `resourceArn`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/resourcePolicy:ResourcePolicy example arn:aws:lambda:us-east-1:123456789012:function:example
/// ```
class ResourcePolicy extends pulumi.CustomResource {
  /// JSON-formatted resource-based policy document to attach to the Lambda resource. This replaces the entire policy on the resource. Maximum 20,480 characters.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the Lambda function, function version, or function alias to attach the policy to. Can be a qualified or unqualified ARN.
  late final pulumi.Output<String> resourceArn;
  /// Unique identifier for the current revision of the policy.
  late final pulumi.Output<String> revisionId;

  /// Creates a new [ResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicy]. {@macro pulumi_lambda_resource_policy_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    revisionId = registerOutput<String>('revisionId');
  }

  /// Gets an existing [ResourcePolicy] resource's state with the given [name] and [id].
  static ResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    ResourcePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    revisionId = registerOutput<String>('revisionId');
  }

  /// Creates a typed reference to an existing [ResourcePolicy] resource.
  ResourcePolicy.reference(String urn)
    : super(
        'aws:lambda/resourcePolicy:ResourcePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    revisionId = registerOutput<String>('revisionId');
  }
}
