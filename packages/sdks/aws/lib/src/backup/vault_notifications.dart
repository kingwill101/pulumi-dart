import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_notifications_args.dart';
import 'vault_notifications_state.dart';

/// Provides an AWS Backup vault notifications resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testTopic = new aws.sns.Topic("test", {name: "backup-vault-events"});
/// const test = aws.iam.getPolicyDocumentOutput({
///     policyId: "__default_policy_ID",
///     statements: [{
///         actions: ["SNS:Publish"],
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["backup.amazonaws.com"],
///         }],
///         resources: [testTopic.arn],
///         sid: "__default_statement_ID",
///     }],
/// });
/// const testTopicPolicy = new aws.sns.TopicPolicy("test", {
///     arn: testTopic.arn,
///     policy: test.apply(test => test.json),
/// });
/// const testVaultNotifications = new aws.backup.VaultNotifications("test", {
///     backupVaultName: "example_backup_vault",
///     snsTopicArn: testTopic.arn,
///     backupVaultEvents: [
///         "BACKUP_JOB_STARTED",
///         "RESTORE_JOB_COMPLETED",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_topic = aws.sns.Topic("test", name="backup-vault-events")
/// test = aws.iam.get_policy_document_output(policy_id="__default_policy_ID",
///     statements=[{
///         "actions": ["SNS:Publish"],
///         "effect": "Allow",
///         "principals": [{
///             "type": "Service",
///             "identifiers": ["backup.amazonaws.com"],
///         }],
///         "resources": [test_topic.arn],
///         "sid": "__default_statement_ID",
///     }])
/// test_topic_policy = aws.sns.TopicPolicy("test",
///     arn=test_topic.arn,
///     policy=test.json)
/// test_vault_notifications = aws.backup.VaultNotifications("test",
///     backup_vault_name="example_backup_vault",
///     sns_topic_arn=test_topic.arn,
///     backup_vault_events=[
///         "BACKUP_JOB_STARTED",
///         "RESTORE_JOB_COMPLETED",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testTopic = new Aws.Sns.Topic("test", new()
///     {
///         Name = "backup-vault-events",
///     });
///
///     var test = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         PolicyId = "__default_policy_ID",
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "SNS:Publish",
///                 },
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "backup.amazonaws.com",
///                         },
///                     },
///                 },
///                 Resources = new[]
///                 {
///                     testTopic.Arn,
///                 },
///                 Sid = "__default_statement_ID",
///             },
///         },
///     });
///
///     var testTopicPolicy = new Aws.Sns.TopicPolicy("test", new()
///     {
///         Arn = testTopic.Arn,
///         Policy = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var testVaultNotifications = new Aws.Backup.VaultNotifications("test", new()
///     {
///         BackupVaultName = "example_backup_vault",
///         SnsTopicArn = testTopic.Arn,
///         BackupVaultEvents = new[]
///         {
///             "BACKUP_JOB_STARTED",
///             "RESTORE_JOB_COMPLETED",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testTopic, err := sns.NewTopic(ctx, "test", &sns.TopicArgs{
/// 			Name: pulumi.String("backup-vault-events"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			PolicyId: pulumi.String("__default_policy_ID"),
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("SNS:Publish"),
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("backup.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						testTopic.Arn,
/// 					},
/// 					Sid: pulumi.String("__default_statement_ID"),
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = sns.NewTopicPolicy(ctx, "test", &sns.TopicPolicyArgs{
/// 			Arn: testTopic.Arn,
/// 			Policy: pulumi.String(test.ApplyT(func(test iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &test.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backup.NewVaultNotifications(ctx, "test", &backup.VaultNotificationsArgs{
/// 			BackupVaultName: pulumi.String("example_backup_vault"),
/// 			SnsTopicArn:     testTopic.Arn,
/// 			BackupVaultEvents: pulumi.StringArray{
/// 				pulumi.String("BACKUP_JOB_STARTED"),
/// 				pulumi.String("RESTORE_JOB_COMPLETED"),
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
/// import com.pulumi.aws.sns.TopicPolicy;
/// import com.pulumi.aws.sns.TopicPolicyArgs;
/// import com.pulumi.aws.backup.VaultNotifications;
/// import com.pulumi.aws.backup.VaultNotificationsArgs;
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
///         var testTopic = new Topic("testTopic", TopicArgs.builder()
///             .name("backup-vault-events")
///             .build());
///
///         final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .policyId("__default_policy_ID")
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("SNS:Publish")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("backup.amazonaws.com")
///                     .build())
///                 .resources(testTopic.arn())
///                 .sid("__default_statement_ID")
///                 .build())
///             .build());
///
///         var testTopicPolicy = new TopicPolicy("testTopicPolicy", TopicPolicyArgs.builder()
///             .arn(testTopic.arn())
///             .policy(test.applyValue(_test -> _test.json()))
///             .build());
///
///         var testVaultNotifications = new VaultNotifications("testVaultNotifications", VaultNotificationsArgs.builder()
///             .backupVaultName("example_backup_vault")
///             .snsTopicArn(testTopic.arn())
///             .backupVaultEvents(
///                 "BACKUP_JOB_STARTED",
///                 "RESTORE_JOB_COMPLETED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testTopic:
///     type: aws:sns:Topic
///     name: test
///     properties:
///       name: backup-vault-events
///   testTopicPolicy:
///     type: aws:sns:TopicPolicy
///     name: test
///     properties:
///       arn: ${testTopic.arn}
///       policy: ${test.json}
///   testVaultNotifications:
///     type: aws:backup:VaultNotifications
///     name: test
///     properties:
///       backupVaultName: example_backup_vault
///       snsTopicArn: ${testTopic.arn}
///       backupVaultEvents:
///         - BACKUP_JOB_STARTED
///         - RESTORE_JOB_COMPLETED
/// variables:
///   test:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         policyId: __default_policy_ID
///         statements:
///           - actions:
///               - SNS:Publish
///             effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - backup.amazonaws.com
///             resources:
///               - ${testTopic.arn}
///             sid: __default_statement_ID
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup vault notifications using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/vaultNotifications:VaultNotifications test TestVault
/// ```
class VaultNotifications extends pulumi.CustomResource {
  /// The ARN of the vault.
  late final pulumi.Output<String> backupVaultArn;
  /// An array of events that indicate the status of jobs to back up resources to the backup vault.
  late final pulumi.Output<List<String>> backupVaultEvents;
  /// Name of the backup vault to add notifications for.
  late final pulumi.Output<String> backupVaultName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events
  late final pulumi.Output<String> snsTopicArn;

  /// Creates a new [VaultNotifications].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VaultNotifications]. {@macro pulumi_backup_vault_notifications_vault_notifications_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VaultNotifications(
    String name, {
    VaultNotificationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/vaultNotifications:VaultNotifications',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupVaultArn = registerOutput<String>('backupVaultArn');
    this.backupVaultEvents = registerOutput<List<String>>('backupVaultEvents');
    this.backupVaultName = registerOutput<String>('backupVaultName');
    this.region = registerOutput<String>('region');
    this.snsTopicArn = registerOutput<String>('snsTopicArn');
  }

  /// Gets an existing [VaultNotifications] resource's state with the given [name] and [id].
  static VaultNotifications get(
    String name,
    pulumi.Input<String> id, {
    VaultNotificationsState? state,
  }) {
    return VaultNotifications._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VaultNotifications._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/vaultNotifications:VaultNotifications',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupVaultArn = registerOutput<String>('backupVaultArn');
    this.backupVaultEvents = registerOutput<List<String>>('backupVaultEvents');
    this.backupVaultName = registerOutput<String>('backupVaultName');
    this.region = registerOutput<String>('region');
    this.snsTopicArn = registerOutput<String>('snsTopicArn');
  }
}
