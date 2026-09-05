import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_rule_args.dart';
import 'notification_rule_state.dart';
import 'notification_rule_target.dart';

/// Provides a CodeStar Notifications Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const code = new aws.codecommit.Repository("code", {repositoryName: "example-code-repo"});
/// const notif = new aws.sns.Topic("notif", {name: "notification"});
/// const notifAccess = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["codestar-notifications.amazonaws.com"],
///         }],
///         actions: ["sns:Publish"],
///         resources: [notif.arn],
///     }],
/// });
/// const _default = new aws.sns.TopicPolicy("default", {
///     arn: notif.arn,
///     policy: notifAccess.json,
/// });
/// const commits = new aws.codestarnotifications.NotificationRule("commits", {
///     targets: [{
///         address: notif.arn,
///     }],
///     detailType: "BASIC",
///     eventTypeIds: ["codecommit-repository-comments-on-commits"],
///     name: "example-code-repo-commits",
///     resource: code.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// code = aws.codecommit.Repository("code", repository_name="example-code-repo")
/// notif = aws.sns.Topic("notif", name="notification")
/// notif_access = aws.iam.get_policy_document_output(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["codestar-notifications.amazonaws.com"],
///     }],
///     "actions": ["sns:Publish"],
///     "resources": [notif.arn],
/// }])
/// default = aws.sns.TopicPolicy("default",
///     arn=notif.arn,
///     policy=notif_access.json)
/// commits = aws.codestarnotifications.NotificationRule("commits",
///     targets=[{
///         "address": notif.arn,
///     }],
///     detail_type="BASIC",
///     event_type_ids=["codecommit-repository-comments-on-commits"],
///     name="example-code-repo-commits",
///     resource=code.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var code = new Aws.CodeCommit.Repository("code", new()
///     {
///         RepositoryName = "example-code-repo",
///     });
///
///     var notif = new Aws.Sns.Topic("notif", new()
///     {
///         Name = "notification",
///     });
///
///     var notifAccess = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "codestar-notifications.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sns:Publish",
///                 },
///                 Resources = new[]
///                 {
///                     notif.Arn,
///                 },
///             },
///         },
///     });
///
///     var @default = new Aws.Sns.TopicPolicy("default", new()
///     {
///         Arn = notif.Arn,
///         Policy = notifAccess.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var commits = new Aws.CodeStarNotifications.NotificationRule("commits", new()
///     {
///         Targets = new[]
///         {
///             new Aws.CodeStarNotifications.Inputs.NotificationRuleTargetArgs
///             {
///                 Address = notif.Arn,
///             },
///         },
///         DetailType = "BASIC",
///         EventTypeIds = new[]
///         {
///             "codecommit-repository-comments-on-commits",
///         },
///         Name = "example-code-repo-commits",
///         Resource = code.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codecommit"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codestarnotifications"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		code, err := codecommit.NewRepository(ctx, "code", &codecommit.RepositoryArgs{
/// 			RepositoryName: pulumi.String("example-code-repo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		notif, err := sns.NewTopic(ctx, "notif", &sns.TopicArgs{
/// 			Name: pulumi.String("notification"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		notifAccess := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("codestar-notifications.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("sns:Publish"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						notif.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = sns.NewTopicPolicy(ctx, "default", &sns.TopicPolicyArgs{
/// 			Arn:    notif.Arn,
/// 			Policy: notifAccess.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codestarnotifications.NewNotificationRule(ctx, "commits", &codestarnotifications.NotificationRuleArgs{
/// 			Targets: codestarnotifications.NotificationRuleTargetArray{
/// 				&codestarnotifications.NotificationRuleTargetArgs{
/// 					Address: notif.Arn,
/// 				},
/// 			},
/// 			DetailType: pulumi.String("BASIC"),
/// 			EventTypeIds: pulumi.StringArray{
/// 				pulumi.String("codecommit-repository-comments-on-commits"),
/// 			},
/// 			Name:     pulumi.String("example-code-repo-commits"),
/// 			Resource: code.Arn,
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
/// data "aws_iam_getpolicydocument" "notifAccess" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["codestar-notifications.amazonaws.com"]
///     }
///     actions   = ["sns:Publish"]
///     resources = [aws_sns_topic.notif.arn]
///   }
/// }
///
/// resource "aws_codecommit_repository" "code" {
///   repository_name = "example-code-repo"
/// }
/// resource "aws_sns_topic" "notif" {
///   name = "notification"
/// }
/// resource "aws_sns_topicpolicy" "default" {
///   arn    = aws_sns_topic.notif.arn
///   policy = data.aws_iam_getpolicydocument.notifAccess.json
/// }
/// resource "aws_codestarnotifications_notificationrule" "commits" {
///   targets {
///     address = aws_sns_topic.notif.arn
///   }
///   detail_type    = "BASIC"
///   event_type_ids = ["codecommit-repository-comments-on-commits"]
///   name           = "example-code-repo-commits"
///   resource       = aws_codecommit_repository.code.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.codecommit.Repository;
/// import com.pulumi.aws.codecommit.RepositoryArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.sns.TopicPolicy;
/// import com.pulumi.aws.sns.TopicPolicyArgs;
/// import com.pulumi.aws.codestarnotifications.NotificationRule;
/// import com.pulumi.aws.codestarnotifications.NotificationRuleArgs;
/// import com.pulumi.aws.codestarnotifications.inputs.NotificationRuleTargetArgs;
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
///         var code = new Repository("code", RepositoryArgs.builder()
///             .repositoryName("example-code-repo")
///             .build());
///
///         var notif = new Topic("notif", TopicArgs.builder()
///             .name("notification")
///             .build());
///
///         final var notifAccess = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("codestar-notifications.amazonaws.com")
///                     .build())
///                 .actions("sns:Publish")
///                 .resources(notif.arn())
///                 .build())
///             .build());
///
///         var default_ = new TopicPolicy("default", TopicPolicyArgs.builder()
///             .arn(notif.arn())
///             .policy(notifAccess.applyValue(_notifAccess -> _notifAccess.json()))
///             .build());
///
///         var commits = new NotificationRule("commits", NotificationRuleArgs.builder()
///             .targets(NotificationRuleTargetArgs.builder()
///                 .address(notif.arn())
///                 .build())
///             .detailType("BASIC")
///             .eventTypeIds("codecommit-repository-comments-on-commits")
///             .name("example-code-repo-commits")
///             .resource(code.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   code:
///     type: aws:codecommit:Repository
///     properties:
///       repositoryName: example-code-repo
///   notif:
///     type: aws:sns:Topic
///     properties:
///       name: notification
///   default:
///     type: aws:sns:TopicPolicy
///     properties:
///       arn: ${notif.arn}
///       policy: ${notifAccess.json}
///   commits:
///     type: aws:codestarnotifications:NotificationRule
///     properties:
///       targets:
///         - address: ${notif.arn}
///       detailType: BASIC
///       eventTypeIds:
///         - codecommit-repository-comments-on-commits
///       name: example-code-repo-commits
///       resource: ${code.arn}
/// variables:
///   notifAccess:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - codestar-notifications.amazonaws.com
///             actions:
///               - sns:Publish
///             resources:
///               - ${notif.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the CodeStar notification rule.
///
///
/// Using `pulumi import`, import CodeStar notification rule using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codestarnotifications/notificationRule:NotificationRule foo arn:aws:codestar-notifications:us-west-1:0123456789:notificationrule/2cdc68a3-8f7c-4893-b6a5-45b362bd4f2b
/// ```
class NotificationRule extends pulumi.CustomResource {
  /// The codestar notification rule ARN.
  late final pulumi.Output<String> arn;
  /// The level of detail to include in the notifications for this resource. Possible values are `BASIC` and `FULL`.
  late final pulumi.Output<String> detailType;
  /// A list of event types associated with this notification rule.
  /// For list of allowed events see [here](https://docs.aws.amazon.com/codestar-notifications/latest/userguide/concepts.html#concepts-api).
  late final pulumi.Output<List<String>> eventTypeIds;
  /// The name of notification rule.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the resource to associate with the notification rule.
  late final pulumi.Output<String> resource;
  /// The status of the notification rule. Possible values are `ENABLED` and `DISABLED`, default is `ENABLED`.
  late final pulumi.Output<String?> status;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration blocks containing notification target information. Can be specified multiple times. At least one target must be specified on creation.
  late final pulumi.Output<List<NotificationRuleTarget>?> targets;

  /// Creates a new [NotificationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationRule]. {@macro pulumi_codestarnotifications_notification_rule_notification_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationRule(
    String name, {
    NotificationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codestarnotifications/notificationRule:NotificationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    detailType = registerOutput<String>('detailType');
    eventTypeIds = registerOutput<List<String>>('eventTypeIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resource = registerOutput<String>('resource');
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targets = registerOutput<List<NotificationRuleTarget>?>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NotificationRuleTarget>(guardedValue, (value) => NotificationRuleTarget.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [NotificationRule] resource's state with the given [name] and [id].
  static NotificationRule get(
    String name,
    pulumi.Input<String> id, {
    NotificationRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NotificationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NotificationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codestarnotifications/notificationRule:NotificationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    detailType = registerOutput<String>('detailType');
    eventTypeIds = registerOutput<List<String>>('eventTypeIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resource = registerOutput<String>('resource');
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targets = registerOutput<List<NotificationRuleTarget>?>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NotificationRuleTarget>(guardedValue, (value) => NotificationRuleTarget.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [NotificationRule] resource.
  NotificationRule.reference(String urn)
    : super(
        'aws:codestarnotifications/notificationRule:NotificationRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    detailType = registerOutput<String>('detailType');
    eventTypeIds = registerOutput<List<String>>('eventTypeIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resource = registerOutput<String>('resource');
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targets = registerOutput<List<NotificationRuleTarget>?>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NotificationRuleTarget>(guardedValue, (value) => NotificationRuleTarget.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
