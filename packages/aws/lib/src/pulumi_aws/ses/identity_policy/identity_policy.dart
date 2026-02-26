import 'package:pulumi/pulumi.dart';
import 'identity_policy_args.dart';

/// Manages a SES Identity Policy. More information about SES Sending Authorization Policies can be found in the [SES Developer Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleDomainIdentity = new aws.ses.DomainIdentity("example", {domain: "example.com"});
/// const example = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// actions: [
/// "SES:SendEmail",
/// "SES:SendRawEmail",
/// ],
/// resources: [exampleDomainIdentity.arn],
/// principals: [{
/// identifiers: ["*"],
/// type: "AWS",
/// }],
/// }],
/// });
/// const exampleIdentityPolicy = new aws.ses.IdentityPolicy("example", {
/// identity: exampleDomainIdentity.arn,
/// name: "example",
/// policy: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_domain_identity = aws.ses.DomainIdentity("example", domain="example.com")
/// example = aws.iam.get_policy_document_output(statements=[{
/// "actions": [
/// "SES:SendEmail",
/// "SES:SendRawEmail",
/// ],
/// "resources": [example_domain_identity.arn],
/// "principals": [{
/// "identifiers": ["*"],
/// "type": "AWS",
/// }],
/// }])
/// example_identity_policy = aws.ses.IdentityPolicy("example",
/// identity=example_domain_identity.arn,
/// name="example",
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
/// var exampleDomainIdentity = new Aws.Ses.DomainIdentity("example", new()
/// {
/// Domain = "example.com",
/// });
///
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "SES:SendEmail",
/// "SES:SendRawEmail",
/// },
/// Resources = new[]
/// {
/// exampleDomainIdentity.Arn,
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Identifiers = new[]
/// {
/// "*",
/// },
/// Type = "AWS",
/// },
/// },
/// },
/// },
/// });
///
/// var exampleIdentityPolicy = new Aws.Ses.IdentityPolicy("example", new()
/// {
/// Identity = exampleDomainIdentity.Arn,
/// Name = "example",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleDomainIdentity, err := ses.NewDomainIdentity(ctx, "example", &ses.DomainIdentityArgs{
/// Domain: pulumi.String("example.com"),
/// })
/// if err != nil {
/// return err
/// }
/// example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Actions: pulumi.StringArray{
/// pulumi.String("SES:SendEmail"),
/// pulumi.String("SES:SendRawEmail"),
/// },
/// Resources: pulumi.StringArray{
/// exampleDomainIdentity.Arn,
/// },
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Identifiers: pulumi.StringArray{
/// pulumi.String("*"),
/// },
/// Type: pulumi.String("AWS"),
/// },
/// },
/// },
/// },
/// }, nil)
/// _, err = ses.NewIdentityPolicy(ctx, "example", &ses.IdentityPolicyArgs{
/// Identity: exampleDomainIdentity.Arn,
/// Name:     pulumi.String("example"),
/// Policy: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
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
/// import com.pulumi.aws.ses.DomainIdentity;
/// import com.pulumi.aws.ses.DomainIdentityArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.ses.IdentityPolicy;
/// import com.pulumi.aws.ses.IdentityPolicyArgs;
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
/// var exampleDomainIdentity = new DomainIdentity("exampleDomainIdentity", DomainIdentityArgs.builder()
/// .domain("example.com")
/// .build());
///
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions(
/// "SES:SendEmail",
/// "SES:SendRawEmail")
/// .resources(exampleDomainIdentity.arn())
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .identifiers("*")
/// .type("AWS")
/// .build())
/// .build())
/// .build());
///
/// var exampleIdentityPolicy = new IdentityPolicy("exampleIdentityPolicy", IdentityPolicyArgs.builder()
/// .identity(exampleDomainIdentity.arn())
/// .name("example")
/// .policy(example.applyValue(_example -> _example.json()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleDomainIdentity:
/// type: aws:ses:DomainIdentity
/// name: example
/// properties:
/// domain: example.com
/// exampleIdentityPolicy:
/// type: aws:ses:IdentityPolicy
/// name: example
/// properties:
/// identity: ${exampleDomainIdentity.arn}
/// name: example
/// policy: ${example.json}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - SES:SendEmail
/// - SES:SendRawEmail
/// resources:
/// - ${exampleDomainIdentity.arn}
/// principals:
/// - identifiers:
/// - '*'
/// type: AWS
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SES Identity Policies using the identity and policy name, separated by a pipe character (`|`). For example:
///
/// ```sh
/// $ pulumi import aws:ses/identityPolicy:IdentityPolicy example 'example.com|example'
/// ```
class IdentityPolicy extends CustomResource {
  /// Name or Amazon Resource Name (ARN) of the SES Identity.
  late final Output<String> identity;

  /// Name of the policy.
  late final Output<String> name;

  /// JSON string of the policy.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  IdentityPolicy(
    String name, {
    IdentityPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ses/identityPolicy:IdentityPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.identity = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policy = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
