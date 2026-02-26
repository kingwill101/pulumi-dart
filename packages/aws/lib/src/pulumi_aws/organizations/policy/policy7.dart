import 'package:pulumi/pulumi.dart';
import 'policy_args7.dart';

/// Provides a resource to manage an [AWS Organizations policy](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// actions: ["*"],
/// resources: ["*"],
/// }],
/// });
/// const examplePolicy = new aws.organizations.Policy("example", {
/// name: "example",
/// content: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "actions": ["*"],
/// "resources": ["*"],
/// }])
/// example_policy = aws.organizations.Policy("example",
/// name="example",
/// content=example.json)
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
/// Effect = "Allow",
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
/// var examplePolicy = new Aws.Organizations.Policy("example", new()
/// {
/// Name = "example",
/// Content = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = organizations.NewPolicy(ctx, "example", &organizations.PolicyArgs{
/// Name:    pulumi.String("example"),
/// Content: pulumi.String(example.Json),
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
/// import com.pulumi.aws.organizations.Policy;
/// import com.pulumi.aws.organizations.PolicyArgs;
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
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("*")
/// .resources("*")
/// .build())
/// .build());
///
/// var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
/// .name("example")
/// .content(example.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// examplePolicy:
/// type: aws:organizations:Policy
/// name: example
/// properties:
/// name: example
/// content: ${example.json}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - '*'
/// resources:
/// - '*'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.organizations.Policy`" pulumi-lang-dotnet="`aws.organizations.Policy`" pulumi-lang-go="`organizations.Policy`" pulumi-lang-python="`organizations.Policy`" pulumi-lang-yaml="`aws.organizations.Policy`" pulumi-lang-java="`aws.organizations.Policy`">`aws.organizations.Policy`</span> using the policy ID. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/policy:Policy example p-12345678
/// ```
class Policy7 extends CustomResource {
  /// Amazon Resource Name (ARN) of the policy.
  late final Output<String> arn;

  /// The policy content to add to the new policy.
  /// For example, if you create a [service control policy (SCP)](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html), this string must be JSON text that specifies the permissions that admins in attached accounts can delegate to their users, groups, and roles.
  /// For more information about the AI Services opt-out Policy syntax, see the [AI Services opt-out Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out_syntax.html).
  /// For more information about the Backup Policy syntax, see the [Backup Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup_syntax.html).
  /// For more information about the Bedrock Policy syntax, see the [Bedrock Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_bedrock_syntax.html).
  /// For more information about the Chatbot Policy syntax, see the [Chatbot Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot_syntax.html).
  /// For more information about the Declarative Policy syntax, see the [Declarative Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative_syntax.html).
  /// For more information about the Inspector Policy syntax, see the [Inspector Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_inspector_syntax.html).
  /// For more information about the RCP syntax, see the [Resource Control Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps_syntax.html).
  /// For more information about the S3 Policy syntax, see the [S3 Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_s3_syntax.html).
  /// For more information about the Security Hub Policy syntax, see the [Security Hub Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub_syntax.html). For more information about the SCP syntax, see the [Service Control Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html).
  /// For more information on the Tag Policy syntax, see the [Tag Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_example-tag-policies.html).
  /// For more information about the Upgrade Rollout Policy syntax, see the [Upgrade Rollout Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_upgrade_syntax.html).
  late final Output<String> content;

  /// A description to assign to the policy.
  late final Output<String?> description;

  /// The friendly name to assign to the policy.
  late final Output<String> name;

  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, destroy will **not** delete the policy and instead just remove the resource from state. This can be useful in situations where the policies (and the associated attachment) must be preserved to meet the AWS minimum requirement of 1 attached policy.
  late final Output<bool?> skipDestroy;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of policy to create. Valid values are `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY` (RCP), `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY` (SCP), `TAG_POLICY`, and `UPGRADE_ROLLOUT_POLICY`. Defaults to `SERVICE_CONTROL_POLICY`.
  late final Output<String?> type;

  Policy7(
    String name, {
    PolicyArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:organizations/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.content = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.skipDestroy = Output.createUnknown<bool?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.type = Output.createUnknown<String?>();
  }
}
