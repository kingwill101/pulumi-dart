import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_state.dart';

/// Attaches a resource based policy to a private CA.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicyDocument({
///     statements: [
///         {
///             sid: "1",
///             effect: "Allow",
///             principals: [{
///                 type: "AWS",
///                 identifiers: [current.accountId],
///             }],
///             actions: [
///                 "acm-pca:DescribeCertificateAuthority",
///                 "acm-pca:GetCertificate",
///                 "acm-pca:GetCertificateAuthorityCertificate",
///                 "acm-pca:ListPermissions",
///                 "acm-pca:ListTags",
///             ],
///             resources: [exampleAwsAcmpcaCertificateAuthority.arn],
///         },
///         {
///             sid: "2",
///             effect: allow,
///             principals: [{
///                 type: "AWS",
///                 identifiers: [current.accountId],
///             }],
///             actions: ["acm-pca:IssueCertificate"],
///             resources: [exampleAwsAcmpcaCertificateAuthority.arn],
///             conditions: [{
///                 test: "StringEquals",
///                 variable: "acm-pca:TemplateArn",
///                 values: ["arn:aws:acm-pca:::template/EndEntityCertificate/V1"],
///             }],
///         },
///     ],
/// });
/// const examplePolicy = new aws.acmpca.Policy("example", {
///     resourceArn: exampleAwsAcmpcaCertificateAuthority.arn,
///     policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[
///     {
///         "sid": "1",
///         "effect": "Allow",
///         "principals": [{
///             "type": "AWS",
///             "identifiers": [current["accountId"]],
///         }],
///         "actions": [
///             "acm-pca:DescribeCertificateAuthority",
///             "acm-pca:GetCertificate",
///             "acm-pca:GetCertificateAuthorityCertificate",
///             "acm-pca:ListPermissions",
///             "acm-pca:ListTags",
///         ],
///         "resources": [example_aws_acmpca_certificate_authority["arn"]],
///     },
///     {
///         "sid": "2",
///         "effect": allow,
///         "principals": [{
///             "type": "AWS",
///             "identifiers": [current["accountId"]],
///         }],
///         "actions": ["acm-pca:IssueCertificate"],
///         "resources": [example_aws_acmpca_certificate_authority["arn"]],
///         "conditions": [{
///             "test": "StringEquals",
///             "variable": "acm-pca:TemplateArn",
///             "values": ["arn:aws:acm-pca:::template/EndEntityCertificate/V1"],
///         }],
///     },
/// ])
/// example_policy = aws.acmpca.Policy("example",
///     resource_arn=example_aws_acmpca_certificate_authority["arn"],
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
///                 Sid = "1",
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             current.AccountId,
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "acm-pca:DescribeCertificateAuthority",
///                     "acm-pca:GetCertificate",
///                     "acm-pca:GetCertificateAuthorityCertificate",
///                     "acm-pca:ListPermissions",
///                     "acm-pca:ListTags",
///                 },
///                 Resources = new[]
///                 {
///                     exampleAwsAcmpcaCertificateAuthority.Arn,
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "2",
///                 Effect = allow,
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             current.AccountId,
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "acm-pca:IssueCertificate",
///                 },
///                 Resources = new[]
///                 {
///                     exampleAwsAcmpcaCertificateAuthority.Arn,
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "acm-pca:TemplateArn",
///                         Values = new[]
///                         {
///                             "arn:aws:acm-pca:::template/EndEntityCertificate/V1",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var examplePolicy = new Aws.Acmpca.Policy("example", new()
///     {
///         ResourceArn = exampleAwsAcmpcaCertificateAuthority.Arn,
///         PolicyDetails = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acmpca"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("1"),
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: interface{}{
/// current.AccountId,
/// },
/// },
/// },
/// Actions: []string{
/// "acm-pca:DescribeCertificateAuthority",
/// "acm-pca:GetCertificate",
/// "acm-pca:GetCertificateAuthorityCertificate",
/// "acm-pca:ListPermissions",
/// "acm-pca:ListTags",
/// },
/// Resources: interface{}{
/// exampleAwsAcmpcaCertificateAuthority.Arn,
/// },
/// },
/// {
/// Sid: pulumi.StringRef("2"),
/// Effect: pulumi.StringRef(allow),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: interface{}{
/// current.AccountId,
/// },
/// },
/// },
/// Actions: []string{
/// "acm-pca:IssueCertificate",
/// },
/// Resources: interface{}{
/// exampleAwsAcmpcaCertificateAuthority.Arn,
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "StringEquals",
/// Variable: "acm-pca:TemplateArn",
/// Values: []string{
/// "arn:aws:acm-pca:::template/EndEntityCertificate/V1",
/// },
/// },
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = acmpca.NewPolicy(ctx, "example", &acmpca.PolicyArgs{
/// ResourceArn: pulumi.Any(exampleAwsAcmpcaCertificateAuthority.Arn),
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
/// import com.pulumi.aws.acmpca.Policy;
/// import com.pulumi.aws.acmpca.PolicyArgs;
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
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("1")
///                     .effect("Allow")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers(current.accountId())
///                         .build())
///                     .actions(
///                         "acm-pca:DescribeCertificateAuthority",
///                         "acm-pca:GetCertificate",
///                         "acm-pca:GetCertificateAuthorityCertificate",
///                         "acm-pca:ListPermissions",
///                         "acm-pca:ListTags")
///                     .resources(exampleAwsAcmpcaCertificateAuthority.arn())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("2")
///                     .effect(allow)
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers(current.accountId())
///                         .build())
///                     .actions("acm-pca:IssueCertificate")
///                     .resources(exampleAwsAcmpcaCertificateAuthority.arn())
///                     .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .variable("acm-pca:TemplateArn")
///                         .values("arn:aws:acm-pca:::template/EndEntityCertificate/V1")
///                         .build())
///                     .build())
///             .build());
///
///         var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
///             .resourceArn(exampleAwsAcmpcaCertificateAuthority.arn())
///             .policy(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePolicy:
///     type: aws:acmpca:Policy
///     name: example
///     properties:
///       resourceArn: ${exampleAwsAcmpcaCertificateAuthority.arn}
///       policy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: '1'
///             effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - ${current.accountId}
///             actions:
///               - acm-pca:DescribeCertificateAuthority
///               - acm-pca:GetCertificate
///               - acm-pca:GetCertificateAuthorityCertificate
///               - acm-pca:ListPermissions
///               - acm-pca:ListTags
///             resources:
///               - ${exampleAwsAcmpcaCertificateAuthority.arn}
///           - sid: '2'
///             effect: ${allow}
///             principals:
///               - type: AWS
///                 identifiers:
///                   - ${current.accountId}
///             actions:
///               - acm-pca:IssueCertificate
///             resources:
///               - ${exampleAwsAcmpcaCertificateAuthority.arn}
///             conditions:
///               - test: StringEquals
///                 variable: acm-pca:TemplateArn
///                 values:
///                   - arn:aws:acm-pca:::template/EndEntityCertificate/V1
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the ACM PCA certificate authority.
///
///
/// Using `pulumi import`, import `aws.acmpca.Policy` using the `resource_arn` value. For example:
///
/// ```sh
/// $ pulumi import aws:acmpca/policy:Policy example arn:aws:acm-pca:us-east-1:123456789012:certificate-authority/12345678-1234-1234-1234-123456789012
/// ```
class Policy extends pulumi.CustomResource {
  /// JSON-formatted IAM policy to attach to the specified private CA resource.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the private CA to associate with the policy.
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_acmpca_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/policy:Policy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }
}
