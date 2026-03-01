import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_args.dart';
import 'vault_notification.dart';

/// Provides a Glacier Vault Resource. You can refer to the [Glacier Developer Guide](https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-vaults.html) for a full explanation of the Glacier Vault functionality
///
/// > **NOTE:** When removing a Glacier Vault, the Vault must be empty.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const awsSnsTopic = new aws.sns.Topic("aws_sns_topic", {name: "glacier-sns-topic"});
/// const myArchive = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "add-read-only-perm",
///         effect: "Allow",
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         actions: [
///             "glacier:InitiateJob",
///             "glacier:GetJobOutput",
///         ],
///         resources: ["arn:aws:glacier:eu-west-1:432981146916:vaults/MyArchive"],
///     }],
/// });
/// const myArchiveVault = new aws.glacier.Vault("my_archive", {
///     name: "MyArchive",
///     notification: {
///         snsTopic: awsSnsTopic.arn,
///         events: [
///             "ArchiveRetrievalCompleted",
///             "InventoryRetrievalCompleted",
///         ],
///     },
///     accessPolicy: myArchive.then(myArchive => myArchive.json),
///     tags: {
///         Test: "MyArchive",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// aws_sns_topic = aws.sns.Topic("aws_sns_topic", name="glacier-sns-topic")
/// my_archive = aws.iam.get_policy_document(statements=[{
///     "sid": "add-read-only-perm",
///     "effect": "Allow",
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "actions": [
///         "glacier:InitiateJob",
///         "glacier:GetJobOutput",
///     ],
///     "resources": ["arn:aws:glacier:eu-west-1:432981146916:vaults/MyArchive"],
/// }])
/// my_archive_vault = aws.glacier.Vault("my_archive",
///     name="MyArchive",
///     notification={
///         "sns_topic": aws_sns_topic.arn,
///         "events": [
///             "ArchiveRetrievalCompleted",
///             "InventoryRetrievalCompleted",
///         ],
///     },
///     access_policy=my_archive.json,
///     tags={
///         "Test": "MyArchive",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var awsSnsTopic = new Aws.Sns.Topic("aws_sns_topic", new()
///     {
///         Name = "glacier-sns-topic",
///     });
///
///     var myArchive = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "add-read-only-perm",
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "*",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "glacier:InitiateJob",
///                     "glacier:GetJobOutput",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:glacier:eu-west-1:432981146916:vaults/MyArchive",
///                 },
///             },
///         },
///     });
///
///     var myArchiveVault = new Aws.Glacier.Vault("my_archive", new()
///     {
///         Name = "MyArchive",
///         Notification = new Aws.Glacier.Inputs.VaultNotificationArgs
///         {
///             SnsTopic = awsSnsTopic.Arn,
///             Events = new[]
///             {
///                 "ArchiveRetrievalCompleted",
///                 "InventoryRetrievalCompleted",
///             },
///         },
///         AccessPolicy = myArchive.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         Tags =
///         {
///             { "Test", "MyArchive" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glacier"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		awsSnsTopic, err := sns.NewTopic(ctx, "aws_sns_topic", &sns.TopicArgs{
/// 			Name: pulumi.String("glacier-sns-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myArchive, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("add-read-only-perm"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "*",
/// 							Identifiers: []string{
/// 								"*",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"glacier:InitiateJob",
/// 						"glacier:GetJobOutput",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:glacier:eu-west-1:432981146916:vaults/MyArchive",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glacier.NewVault(ctx, "my_archive", &glacier.VaultArgs{
/// 			Name: pulumi.String("MyArchive"),
/// 			Notification: &glacier.VaultNotificationArgs{
/// 				SnsTopic: awsSnsTopic.Arn,
/// 				Events: pulumi.StringArray{
/// 					pulumi.String("ArchiveRetrievalCompleted"),
/// 					pulumi.String("InventoryRetrievalCompleted"),
/// 				},
/// 			},
/// 			AccessPolicy: pulumi.String(myArchive.Json),
/// 			Tags: pulumi.StringMap{
/// 				"Test": pulumi.String("MyArchive"),
/// 			},
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
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.glacier.Vault;
/// import com.pulumi.aws.glacier.VaultArgs;
/// import com.pulumi.aws.glacier.inputs.VaultNotificationArgs;
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
///         var awsSnsTopic = new Topic("awsSnsTopic", TopicArgs.builder()
///             .name("glacier-sns-topic")
///             .build());
///
///         final var myArchive = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("add-read-only-perm")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .actions(
///                     "glacier:InitiateJob",
///                     "glacier:GetJobOutput")
///                 .resources("arn:aws:glacier:eu-west-1:432981146916:vaults/MyArchive")
///                 .build())
///             .build());
///
///         var myArchiveVault = new Vault("myArchiveVault", VaultArgs.builder()
///             .name("MyArchive")
///             .notification(VaultNotificationArgs.builder()
///                 .snsTopic(awsSnsTopic.arn())
///                 .events(
///                     "ArchiveRetrievalCompleted",
///                     "InventoryRetrievalCompleted")
///                 .build())
///             .accessPolicy(myArchive.json())
///             .tags(Map.of("Test", "MyArchive"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   awsSnsTopic:
///     type: aws:sns:Topic
///     name: aws_sns_topic
///     properties:
///       name: glacier-sns-topic
///   myArchiveVault:
///     type: aws:glacier:Vault
///     name: my_archive
///     properties:
///       name: MyArchive
///       notification:
///         snsTopic: ${awsSnsTopic.arn}
///         events:
///           - ArchiveRetrievalCompleted
///           - InventoryRetrievalCompleted
///       accessPolicy: ${myArchive.json}
///       tags:
///         Test: MyArchive
/// variables:
///   myArchive:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: add-read-only-perm
///             effect: Allow
///             principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             actions:
///               - glacier:InitiateJob
///               - glacier:GetJobOutput
///             resources:
///               - arn:aws:glacier:eu-west-1:432981146916:vaults/MyArchive
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glacier Vaults using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glacier/vault:Vault archive my_archive
/// ```
class Vault extends pulumi.CustomResource {
  /// The policy document. This is a JSON formatted string.
  /// The heredoc syntax or `file` function is helpful here. Use the [Glacier Developer Guide](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html) for more information on Glacier Vault Policy
  late final pulumi.Output<String?> accessPolicy;

  /// The ARN of the vault.
  late final pulumi.Output<String> arn;

  /// The URI of the vault that was created.
  late final pulumi.Output<String> location;

  /// The name of the Vault. Names can be between 1 and 255 characters long and the valid characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), and '.' (period).
  late final pulumi.Output<String> name;

  /// The notifications for the Vault. Fields documented below.
  late final pulumi.Output<VaultNotification?> notification;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Vault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vault]. {@macro pulumi_glacier_vault_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vault(String name, {VaultArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:glacier/vault:Vault',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.accessPolicy = registerOutput<String?>('accessPolicy');
    this.arn = registerOutput<String>('arn');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notification = registerOutput<VaultNotification?>('notification');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
