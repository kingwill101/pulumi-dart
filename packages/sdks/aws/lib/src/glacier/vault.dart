import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_args.dart';
import 'vault_notification.dart';
import 'vault_state.dart';

/// Provides a Glacier Vault Resource. You can refer to the [Glacier Developer Guide](https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-vaults.html) for a full explanation of the Glacier Vault functionality
///
/// &gt; **NOTE:** When removing a Glacier Vault, the Vault must be empty.
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
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         sid: "add-read-only-perm",
///         effect: "Allow",
///         actions: [
///             "glacier:InitiateJob",
///             "glacier:GetJobOutput",
///         ],
///         resources: ["arn:aws:glacier:eu-west-1:432981146916:vaults/MyArchive"],
///     }],
/// });
/// const myArchiveVault = new aws.glacier.Vault("my_archive", {
///     notification: {
///         snsTopic: awsSnsTopic.arn,
///         events: [
///             "ArchiveRetrievalCompleted",
///             "InventoryRetrievalCompleted",
///         ],
///     },
///     name: "MyArchive",
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
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "sid": "add-read-only-perm",
///     "effect": "Allow",
///     "actions": [
///         "glacier:InitiateJob",
///         "glacier:GetJobOutput",
///     ],
///     "resources": ["arn:aws:glacier:eu-west-1:432981146916:vaults/MyArchive"],
/// }])
/// my_archive_vault = aws.glacier.Vault("my_archive",
///     notification={
///         "sns_topic": aws_sns_topic.arn,
///         "events": [
///             "ArchiveRetrievalCompleted",
///             "InventoryRetrievalCompleted",
///         ],
///     },
///     name="MyArchive",
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
///                 Sid = "add-read-only-perm",
///                 Effect = "Allow",
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
///         Notification = new Aws.Glacier.Inputs.VaultNotificationArgs
///         {
///             SnsTopic = awsSnsTopic.Arn,
///             Events = new[]
///             {
///                 "ArchiveRetrievalCompleted",
///                 "InventoryRetrievalCompleted",
///             },
///         },
///         Name = "MyArchive",
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
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "*",
/// 							Identifiers: []string{
/// 								"*",
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.StringRef("add-read-only-perm"),
/// 					Effect: pulumi.StringRef("Allow"),
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
/// 			Notification: &glacier.VaultNotificationArgs{
/// 				SnsTopic: awsSnsTopic.Arn,
/// 				Events: pulumi.StringArray{
/// 					pulumi.String("ArchiveRetrievalCompleted"),
/// 					pulumi.String("InventoryRetrievalCompleted"),
/// 				},
/// 			},
/// 			Name:         pulumi.String("MyArchive"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "myArchive" {
///   statements {
///     principals {
///       type        = "*"
///       identifiers = ["*"]
///     }
///     sid       = "add-read-only-perm"
///     effect    = "Allow"
///     actions   = ["glacier:InitiateJob", "glacier:GetJobOutput"]
///     resources = ["arn:aws:glacier:eu-west-1:432981146916:vaults/MyArchive"]
///   }
/// }
///
/// resource "aws_sns_topic" "aws_sns_topic" {
///   name = "glacier-sns-topic"
/// }
/// resource "aws_glacier_vault" "my_archive" {
///   notification = {
///     sns_topic = aws_sns_topic.aws_sns_topic.arn
///     events    = ["ArchiveRetrievalCompleted", "InventoryRetrievalCompleted"]
///   }
///   name          = "MyArchive"
///   access_policy = data.aws_iam_getpolicydocument.myArchive.json
///   tags = {
///     "Test" = "MyArchive"
///   }
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.glacier.Vault;
/// import com.pulumi.aws.glacier.VaultArgs;
/// import com.pulumi.aws.glacier.inputs.VaultNotificationArgs;
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
///         var awsSnsTopic = new Topic("awsSnsTopic", TopicArgs.builder()
///             .name("glacier-sns-topic")
///             .build());
///
///         final var myArchive = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .sid("add-read-only-perm")
///                 .effect("Allow")
///                 .actions(
///                     "glacier:InitiateJob",
///                     "glacier:GetJobOutput")
///                 .resources("arn:aws:glacier:eu-west-1:432981146916:vaults/MyArchive")
///                 .build())
///             .build());
///
///         var myArchiveVault = new Vault("myArchiveVault", VaultArgs.builder()
///             .notification(VaultNotificationArgs.builder()
///                 .snsTopic(awsSnsTopic.arn())
///                 .events(
///                     "ArchiveRetrievalCompleted",
///                     "InventoryRetrievalCompleted")
///                 .build())
///             .name("MyArchive")
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
///       notification:
///         snsTopic: ${awsSnsTopic.arn}
///         events:
///           - ArchiveRetrievalCompleted
///           - InventoryRetrievalCompleted
///       name: MyArchive
///       accessPolicy: ${myArchive.json}
///       tags:
///         Test: MyArchive
/// variables:
///   myArchive:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             sid: add-read-only-perm
///             effect: Allow
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
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Vault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vault]. {@macro pulumi_glacier_vault_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vault(
    String name, {
    VaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glacier/vault:Vault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accessPolicy = registerOutput<String?>('accessPolicy');
    arn = registerOutput<String>('arn');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notification = registerOutput<VaultNotification?>('notification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VaultNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Vault] resource's state with the given [name] and [id].
  static Vault get(
    String name,
    pulumi.Input<String> id, {
    VaultState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Vault._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Vault._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glacier/vault:Vault',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicy = registerOutput<String?>('accessPolicy');
    arn = registerOutput<String>('arn');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notification = registerOutput<VaultNotification?>('notification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VaultNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Vault] resource.
  Vault.reference(String urn)
    : super(
        'aws:glacier/vault:Vault',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessPolicy = registerOutput<String?>('accessPolicy');
    arn = registerOutput<String>('arn');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notification = registerOutput<VaultNotification?>('notification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VaultNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
