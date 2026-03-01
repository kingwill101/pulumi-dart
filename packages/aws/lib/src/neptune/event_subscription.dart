import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_args.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.neptune.Cluster("default", {
///     clusterIdentifier: "neptune-cluster-demo",
///     engine: "neptune",
///     backupRetentionPeriod: 5,
///     preferredBackupWindow: "07:00-09:00",
///     skipFinalSnapshot: true,
///     iamDatabaseAuthenticationEnabled: true,
///     applyImmediately: true,
/// });
/// const example = new aws.neptune.ClusterInstance("example", {
///     clusterIdentifier: _default.id,
///     engine: "neptune",
///     instanceClass: "db.r4.large",
///     applyImmediately: true,
/// });
/// const defaultTopic = new aws.sns.Topic("default", {name: "neptune-events"});
/// const defaultEventSubscription = new aws.neptune.EventSubscription("default", {
///     name: "neptune-event-sub",
///     snsTopicArn: defaultTopic.arn,
///     sourceType: "db-instance",
///     sourceIds: [example.id],
///     eventCategories: [
///         "maintenance",
///         "availability",
///         "creation",
///         "backup",
///         "restoration",
///         "recovery",
///         "deletion",
///         "failover",
///         "failure",
///         "notification",
///         "configuration change",
///         "read replica",
///     ],
///     tags: {
///         env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.neptune.Cluster("default",
///     cluster_identifier="neptune-cluster-demo",
///     engine="neptune",
///     backup_retention_period=5,
///     preferred_backup_window="07:00-09:00",
///     skip_final_snapshot=True,
///     iam_database_authentication_enabled=True,
///     apply_immediately=True)
/// example = aws.neptune.ClusterInstance("example",
///     cluster_identifier=default.id,
///     engine="neptune",
///     instance_class="db.r4.large",
///     apply_immediately=True)
/// default_topic = aws.sns.Topic("default", name="neptune-events")
/// default_event_subscription = aws.neptune.EventSubscription("default",
///     name="neptune-event-sub",
///     sns_topic_arn=default_topic.arn,
///     source_type="db-instance",
///     source_ids=[example.id],
///     event_categories=[
///         "maintenance",
///         "availability",
///         "creation",
///         "backup",
///         "restoration",
///         "recovery",
///         "deletion",
///         "failover",
///         "failure",
///         "notification",
///         "configuration change",
///         "read replica",
///     ],
///     tags={
///         "env": "test",
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
///     var @default = new Aws.Neptune.Cluster("default", new()
///     {
///         ClusterIdentifier = "neptune-cluster-demo",
///         Engine = "neptune",
///         BackupRetentionPeriod = 5,
///         PreferredBackupWindow = "07:00-09:00",
///         SkipFinalSnapshot = true,
///         IamDatabaseAuthenticationEnabled = true,
///         ApplyImmediately = true,
///     });
///
///     var example = new Aws.Neptune.ClusterInstance("example", new()
///     {
///         ClusterIdentifier = @default.Id,
///         Engine = "neptune",
///         InstanceClass = "db.r4.large",
///         ApplyImmediately = true,
///     });
///
///     var defaultTopic = new Aws.Sns.Topic("default", new()
///     {
///         Name = "neptune-events",
///     });
///
///     var defaultEventSubscription = new Aws.Neptune.EventSubscription("default", new()
///     {
///         Name = "neptune-event-sub",
///         SnsTopicArn = defaultTopic.Arn,
///         SourceType = "db-instance",
///         SourceIds = new[]
///         {
///             example.Id,
///         },
///         EventCategories = new[]
///         {
///             "maintenance",
///             "availability",
///             "creation",
///             "backup",
///             "restoration",
///             "recovery",
///             "deletion",
///             "failover",
///             "failure",
///             "notification",
///             "configuration change",
///             "read replica",
///         },
///         Tags =
///         {
///             { "env", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := neptune.NewCluster(ctx, "default", &neptune.ClusterArgs{
/// 			ClusterIdentifier:                pulumi.String("neptune-cluster-demo"),
/// 			Engine:                           pulumi.String("neptune"),
/// 			BackupRetentionPeriod:            pulumi.Int(5),
/// 			PreferredBackupWindow:            pulumi.String("07:00-09:00"),
/// 			SkipFinalSnapshot:                pulumi.Bool(true),
/// 			IamDatabaseAuthenticationEnabled: pulumi.Bool(true),
/// 			ApplyImmediately:                 pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := neptune.NewClusterInstance(ctx, "example", &neptune.ClusterInstanceArgs{
/// 			ClusterIdentifier: _default.ID(),
/// 			Engine:            pulumi.String("neptune"),
/// 			InstanceClass:     pulumi.String("db.r4.large"),
/// 			ApplyImmediately:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTopic, err := sns.NewTopic(ctx, "default", &sns.TopicArgs{
/// 			Name: pulumi.String("neptune-events"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = neptune.NewEventSubscription(ctx, "default", &neptune.EventSubscriptionArgs{
/// 			Name:        pulumi.String("neptune-event-sub"),
/// 			SnsTopicArn: defaultTopic.Arn,
/// 			SourceType:  pulumi.String("db-instance"),
/// 			SourceIds: pulumi.StringArray{
/// 				example.ID(),
/// 			},
/// 			EventCategories: pulumi.StringArray{
/// 				pulumi.String("maintenance"),
/// 				pulumi.String("availability"),
/// 				pulumi.String("creation"),
/// 				pulumi.String("backup"),
/// 				pulumi.String("restoration"),
/// 				pulumi.String("recovery"),
/// 				pulumi.String("deletion"),
/// 				pulumi.String("failover"),
/// 				pulumi.String("failure"),
/// 				pulumi.String("notification"),
/// 				pulumi.String("configuration change"),
/// 				pulumi.String("read replica"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
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
/// import com.pulumi.aws.neptune.Cluster;
/// import com.pulumi.aws.neptune.ClusterArgs;
/// import com.pulumi.aws.neptune.ClusterInstance;
/// import com.pulumi.aws.neptune.ClusterInstanceArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.neptune.EventSubscription;
/// import com.pulumi.aws.neptune.EventSubscriptionArgs;
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
///         var default_ = new Cluster("default", ClusterArgs.builder()
///             .clusterIdentifier("neptune-cluster-demo")
///             .engine("neptune")
///             .backupRetentionPeriod(5)
///             .preferredBackupWindow("07:00-09:00")
///             .skipFinalSnapshot(true)
///             .iamDatabaseAuthenticationEnabled(true)
///             .applyImmediately(true)
///             .build());
///
///         var example = new ClusterInstance("example", ClusterInstanceArgs.builder()
///             .clusterIdentifier(default_.id())
///             .engine("neptune")
///             .instanceClass("db.r4.large")
///             .applyImmediately(true)
///             .build());
///
///         var defaultTopic = new Topic("defaultTopic", TopicArgs.builder()
///             .name("neptune-events")
///             .build());
///
///         var defaultEventSubscription = new EventSubscription("defaultEventSubscription", EventSubscriptionArgs.builder()
///             .name("neptune-event-sub")
///             .snsTopicArn(defaultTopic.arn())
///             .sourceType("db-instance")
///             .sourceIds(example.id())
///             .eventCategories(
///                 "maintenance",
///                 "availability",
///                 "creation",
///                 "backup",
///                 "restoration",
///                 "recovery",
///                 "deletion",
///                 "failover",
///                 "failure",
///                 "notification",
///                 "configuration change",
///                 "read replica")
///             .tags(Map.of("env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:neptune:Cluster
///     properties:
///       clusterIdentifier: neptune-cluster-demo
///       engine: neptune
///       backupRetentionPeriod: 5
///       preferredBackupWindow: 07:00-09:00
///       skipFinalSnapshot: true
///       iamDatabaseAuthenticationEnabled: 'true'
///       applyImmediately: 'true'
///   example:
///     type: aws:neptune:ClusterInstance
///     properties:
///       clusterIdentifier: ${default.id}
///       engine: neptune
///       instanceClass: db.r4.large
///       applyImmediately: 'true'
///   defaultTopic:
///     type: aws:sns:Topic
///     name: default
///     properties:
///       name: neptune-events
///   defaultEventSubscription:
///     type: aws:neptune:EventSubscription
///     name: default
///     properties:
///       name: neptune-event-sub
///       snsTopicArn: ${defaultTopic.arn}
///       sourceType: db-instance
///       sourceIds:
///         - ${example.id}
///       eventCategories:
///         - maintenance
///         - availability
///         - creation
///         - backup
///         - restoration
///         - recovery
///         - deletion
///         - failover
///         - failure
///         - notification
///         - configuration change
///         - read replica
///       tags:
///         env: test
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.neptune.EventSubscription` using the event subscription name. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/eventSubscription:EventSubscription example my-event-subscription
/// ```
class EventSubscription extends pulumi.CustomResource {
  /// The Amazon Resource Name of the Neptune event notification subscription.
  late final pulumi.Output<String> arn;

  /// The AWS customer account associated with the Neptune event notification subscription.
  late final pulumi.Output<String> customerAwsId;

  /// A boolean flag to enable/disable the subscription. Defaults to true.
  late final pulumi.Output<bool?> enabled;

  /// A list of event categories for a `source_type` that you want to subscribe to. Run `aws neptune describe-event-categories` to find all the event categories.
  late final pulumi.Output<List<String>?> eventCategories;

  /// The name of the Neptune event subscription. By default generated by this provider.
  late final pulumi.Output<String> name;

  /// The name of the Neptune event subscription. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the SNS topic to send events to.
  late final pulumi.Output<String> snsTopicArn;

  /// A list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. If specified, a `source_type` must also be specified.
  late final pulumi.Output<List<String>?> sourceIds;

  /// The type of source that will be generating the events. Valid options are `db-instance`, `db-security-group`, `db-parameter-group`, `db-snapshot`, `db-cluster` or `db-cluster-snapshot`. If not set, all sources will be subscribed to.
  late final pulumi.Output<String?> sourceType;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [EventSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventSubscription]. {@macro pulumi_neptune_event_subscription_event_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventSubscription(
    String name, {
    EventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:neptune/eventSubscription:EventSubscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.customerAwsId = registerOutput<String>('customerAwsId');
    this.enabled = registerOutput<bool?>('enabled');
    this.eventCategories = registerOutput<List<String>?>('eventCategories');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.snsTopicArn = registerOutput<String>('snsTopicArn');
    this.sourceIds = registerOutput<List<String>?>('sourceIds');
    this.sourceType = registerOutput<String?>('sourceType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
