import 'package:pulumi/pulumi.dart';
import 'permission_set_inline_policy_args.dart';

/// Provides an IAM inline policy for a Single Sign-On (SSO) Permission Set resource
///
/// > **NOTE:** AWS Single Sign-On (SSO) only supports one IAM inline policy per <span pulumi-lang-nodejs="`aws.ssoadmin.PermissionSet`" pulumi-lang-dotnet="`aws.ssoadmin.PermissionSet`" pulumi-lang-go="`ssoadmin.PermissionSet`" pulumi-lang-python="`ssoadmin.PermissionSet`" pulumi-lang-yaml="`aws.ssoadmin.PermissionSet`" pulumi-lang-java="`aws.ssoadmin.PermissionSet`">`aws.ssoadmin.PermissionSet`</span> resource.
/// Creating or updating this resource will automatically [Provision the Permission Set](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ProvisionPermissionSet.html) to apply the corresponding updates to all assigned accounts.
///
/// > **NOTE:** We suggest using `jsonencode()` or <span pulumi-lang-nodejs="`aws.iam.getPolicyDocument`" pulumi-lang-dotnet="`aws.iam.getPolicyDocument`" pulumi-lang-go="`iam.getPolicyDocument`" pulumi-lang-python="`iam_get_policy_document`" pulumi-lang-yaml="`aws.iam.getPolicyDocument`" pulumi-lang-java="`aws.iam.getPolicyDocument`">`aws.iam.getPolicyDocument`</span> when assigning a value to <span pulumi-lang-nodejs="`inlinePolicy`" pulumi-lang-dotnet="`InlinePolicy`" pulumi-lang-go="`inlinePolicy`" pulumi-lang-python="`inline_policy`" pulumi-lang-yaml="`inlinePolicy`" pulumi-lang-java="`inlinePolicy`">`inline_policy`</span>. They seamlessly translate Terraform language into JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const examplePermissionSet = new aws.ssoadmin.PermissionSet("example", {
/// name: "Example",
/// instanceArn: example.then(example => example.arns?.[0]),
/// });
/// const exampleGetPolicyDocument = aws.iam.getPolicyDocument({
/// statements: [{
/// sid: "1",
/// actions: [
/// "s3:ListAllMyBuckets",
/// "s3:GetBucketLocation",
/// ],
/// resources: ["arn:aws:s3:::*"],
/// }],
/// });
/// const examplePermissionSetInlinePolicy = new aws.ssoadmin.PermissionSetInlinePolicy("example", {
/// inlinePolicy: exampleGetPolicyDocument.then(exampleGetPolicyDocument => exampleGetPolicyDocument.json),
/// instanceArn: example.then(example => example.arns?.[0]),
/// permissionSetArn: examplePermissionSet.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_permission_set = aws.ssoadmin.PermissionSet("example",
/// name="Example",
/// instance_arn=example.arns[0])
/// example_get_policy_document = aws.iam.get_policy_document(statements=[{
/// "sid": "1",
/// "actions": [
/// "s3:ListAllMyBuckets",
/// "s3:GetBucketLocation",
/// ],
/// "resources": ["arn:aws:s3:::*"],
/// }])
/// example_permission_set_inline_policy = aws.ssoadmin.PermissionSetInlinePolicy("example",
/// inline_policy=example_get_policy_document.json,
/// instance_arn=example.arns[0],
/// permission_set_arn=example_permission_set.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SsoAdmin.GetInstances.Invoke();
///
/// var examplePermissionSet = new Aws.SsoAdmin.PermissionSet("example", new()
/// {
/// Name = "Example",
/// InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
/// });
///
/// var exampleGetPolicyDocument = Aws.Iam.GetPolicyDocument.Invoke(new()
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
/// },
/// });
///
/// var examplePermissionSetInlinePolicy = new Aws.SsoAdmin.PermissionSetInlinePolicy("example", new()
/// {
/// InlinePolicy = exampleGetPolicyDocument.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
/// PermissionSetArn = examplePermissionSet.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// examplePermissionSet, err := ssoadmin.NewPermissionSet(ctx, "example", &ssoadmin.PermissionSetArgs{
/// Name:        pulumi.String("Example"),
/// InstanceArn: pulumi.String(example.Arns[0]),
/// })
/// if err != nil {
/// return err
/// }
/// exampleGetPolicyDocument, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
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
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ssoadmin.NewPermissionSetInlinePolicy(ctx, "example", &ssoadmin.PermissionSetInlinePolicyArgs{
/// InlinePolicy:     pulumi.String(exampleGetPolicyDocument.Json),
/// InstanceArn:      pulumi.String(example.Arns[0]),
/// PermissionSetArn: examplePermissionSet.Arn,
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.PermissionSet;
/// import com.pulumi.aws.ssoadmin.PermissionSetArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.ssoadmin.PermissionSetInlinePolicy;
/// import com.pulumi.aws.ssoadmin.PermissionSetInlinePolicyArgs;
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
/// final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
/// .build());
///
/// var examplePermissionSet = new PermissionSet("examplePermissionSet", PermissionSetArgs.builder()
/// .name("Example")
/// .instanceArn(example.arns()[0])
/// .build());
///
/// final var exampleGetPolicyDocument = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("1")
/// .actions(
/// "s3:ListAllMyBuckets",
/// "s3:GetBucketLocation")
/// .resources("arn:aws:s3:::*")
/// .build())
/// .build());
///
/// var examplePermissionSetInlinePolicy = new PermissionSetInlinePolicy("examplePermissionSetInlinePolicy", PermissionSetInlinePolicyArgs.builder()
/// .inlinePolicy(exampleGetPolicyDocument.json())
/// .instanceArn(example.arns()[0])
/// .permissionSetArn(examplePermissionSet.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// examplePermissionSet:
/// type: aws:ssoadmin:PermissionSet
/// name: example
/// properties:
/// name: Example
/// instanceArn: ${example.arns[0]}
/// examplePermissionSetInlinePolicy:
/// type: aws:ssoadmin:PermissionSetInlinePolicy
/// name: example
/// properties:
/// inlinePolicy: ${exampleGetPolicyDocument.json}
/// instanceArn: ${example.arns[0]}
/// permissionSetArn: ${examplePermissionSet.arn}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// exampleGetPolicyDocument:
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
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SSO Permission Set Inline Policies using the <span pulumi-lang-nodejs="`permissionSetArn`" pulumi-lang-dotnet="`PermissionSetArn`" pulumi-lang-go="`permissionSetArn`" pulumi-lang-python="`permission_set_arn`" pulumi-lang-yaml="`permissionSetArn`" pulumi-lang-java="`permissionSetArn`">`permission_set_arn`</span> and <span pulumi-lang-nodejs="`instanceArn`" pulumi-lang-dotnet="`InstanceArn`" pulumi-lang-go="`instanceArn`" pulumi-lang-python="`instance_arn`" pulumi-lang-yaml="`instanceArn`" pulumi-lang-java="`instanceArn`">`instance_arn`</span> separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/permissionSetInlinePolicy:PermissionSetInlinePolicy example arn:aws:sso:::permissionSet/ssoins-2938j0x8920sbj72/ps-80383020jr9302rk,arn:aws:sso:::instance/ssoins-2938j0x8920sbj72
/// ```
class PermissionSetInlinePolicy extends CustomResource {
  /// The IAM inline policy to attach to a Permission Set.
  late final Output<String> inlinePolicy;

  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  late final Output<String> instanceArn;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  late final Output<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  PermissionSetInlinePolicy(
    String name, {
    PermissionSetInlinePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/permissionSetInlinePolicy:PermissionSetInlinePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.inlinePolicy = Output.createUnknown<String>();
    this.instanceArn = Output.createUnknown<String>();
    this.permissionSetArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
