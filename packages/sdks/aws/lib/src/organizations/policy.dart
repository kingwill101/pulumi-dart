import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_state.dart';

/// Provides a resource to manage an [AWS Organizations policy](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["*"],
///         resources: ["*"],
///     }],
/// });
/// const examplePolicy = new aws.organizations.Policy("example", {
///     name: "example",
///     content: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["*"],
///     "resources": ["*"],
/// }])
/// example_policy = aws.organizations.Policy("example",
///     name="example",
///     content=example.json)
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
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var examplePolicy = new Aws.Organizations.Policy("example", new()
///     {
///         Name = "example",
///         Content = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.NewPolicy(ctx, "example", &organizations.PolicyArgs{
/// 			Name:    pulumi.String("example"),
/// 			Content: pulumi.String(example.Json),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
///             .name("example")
///             .content(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePolicy:
///     type: aws:organizations:Policy
///     name: example
///     properties:
///       name: example
///       content: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - '*'
///             resources:
///               - '*'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.organizations.Policy` using the policy ID. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/policy:Policy example p-12345678
/// ```
class Policy extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the policy.
  late final pulumi.Output<String> arn;
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
  late final pulumi.Output<String> content;
  /// A description to assign to the policy.
  late final pulumi.Output<String?> description;
  /// The friendly name to assign to the policy.
  late final pulumi.Output<String> name;
  /// If set to `true`, destroy will **not** delete the policy and instead just remove the resource from state. This can be useful in situations where the policies (and the associated attachment) must be preserved to meet the AWS minimum requirement of 1 attached policy.
  late final pulumi.Output<bool?> skipDestroy;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The type of policy to create. Valid values are `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY` (RCP), `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY` (SCP), `TAG_POLICY`, and `UPGRADE_ROLLOUT_POLICY`. Defaults to `SERVICE_CONTROL_POLICY`.
  late final pulumi.Output<String?> type;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_organizations_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.content = registerOutput<String>('content');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
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
          'aws:organizations/policy:Policy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.content = registerOutput<String>('content');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
  }
}
