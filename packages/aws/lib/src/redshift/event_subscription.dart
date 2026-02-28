import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_args.dart';

/// Provides a Redshift event subscription resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.redshift.Cluster("default", {
///     clusterIdentifier: "default",
///     databaseName: "default",
/// });
/// const defaultTopic = new aws.sns.Topic("default", {name: "redshift-events"});
/// const defaultEventSubscription = new aws.redshift.EventSubscription("default", {
///     name: "redshift-event-sub",
///     snsTopicArn: defaultTopic.arn,
///     sourceType: "cluster",
///     sourceIds: [_default.id],
///     severity: "INFO",
///     eventCategories: [
///         "configuration",
///         "management",
///         "monitoring",
///         "security",
///     ],
///     tags: {
///         Name: "default",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.redshift.Cluster("default",
///     cluster_identifier="default",
///     database_name="default")
/// default_topic = aws.sns.Topic("default", name="redshift-events")
/// default_event_subscription = aws.redshift.EventSubscription("default",
///     name="redshift-event-sub",
///     sns_topic_arn=default_topic.arn,
///     source_type="cluster",
///     source_ids=[default.id],
///     severity="INFO",
///     event_categories=[
///         "configuration",
///         "management",
///         "monitoring",
///         "security",
///     ],
///     tags={
///         "Name": "default",
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
///     var @default = new Aws.RedShift.Cluster("default", new()
///     {
///         ClusterIdentifier = "default",
///         DatabaseName = "default",
///     });
///
///     var defaultTopic = new Aws.Sns.Topic("default", new()
///     {
///         Name = "redshift-events",
///     });
///
///     var defaultEventSubscription = new Aws.RedShift.EventSubscription("default", new()
///     {
///         Name = "redshift-event-sub",
///         SnsTopicArn = defaultTopic.Arn,
///         SourceType = "cluster",
///         SourceIds = new[]
///         {
///             @default.Id,
///         },
///         Severity = "INFO",
///         EventCategories = new[]
///         {
///             "configuration",
///             "management",
///             "monitoring",
///             "security",
///         },
///         Tags =
///         {
///             { "Name", "default" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := redshift.NewCluster(ctx, "default", &redshift.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("default"),
/// 			DatabaseName:      pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTopic, err := sns.NewTopic(ctx, "default", &sns.TopicArgs{
/// 			Name: pulumi.String("redshift-events"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redshift.NewEventSubscription(ctx, "default", &redshift.EventSubscriptionArgs{
/// 			Name:        pulumi.String("redshift-event-sub"),
/// 			SnsTopicArn: defaultTopic.Arn,
/// 			SourceType:  pulumi.String("cluster"),
/// 			SourceIds: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 			Severity: pulumi.String("INFO"),
/// 			EventCategories: pulumi.StringArray{
/// 				pulumi.String("configuration"),
/// 				pulumi.String("management"),
/// 				pulumi.String("monitoring"),
/// 				pulumi.String("security"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("default"),
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
/// import com.pulumi.aws.redshift.Cluster;
/// import com.pulumi.aws.redshift.ClusterArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.redshift.EventSubscription;
/// import com.pulumi.aws.redshift.EventSubscriptionArgs;
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
///             .clusterIdentifier("default")
///             .databaseName("default")
///             .build());
///
///         var defaultTopic = new Topic("defaultTopic", TopicArgs.builder()
///             .name("redshift-events")
///             .build());
///
///         var defaultEventSubscription = new EventSubscription("defaultEventSubscription", EventSubscriptionArgs.builder()
///             .name("redshift-event-sub")
///             .snsTopicArn(defaultTopic.arn())
///             .sourceType("cluster")
///             .sourceIds(default_.id())
///             .severity("INFO")
///             .eventCategories(
///                 "configuration",
///                 "management",
///                 "monitoring",
///                 "security")
///             .tags(Map.of("Name", "default"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:redshift:Cluster
///     properties:
///       clusterIdentifier: default
///       databaseName: default
///   defaultTopic:
///     type: aws:sns:Topic
///     name: default
///     properties:
///       name: redshift-events
///   defaultEventSubscription:
///     type: aws:redshift:EventSubscription
///     name: default
///     properties:
///       name: redshift-event-sub
///       snsTopicArn: ${defaultTopic.arn}
///       sourceType: cluster
///       sourceIds:
///         - ${default.id}
///       severity: INFO
///       eventCategories:
///         - configuration
///         - management
///         - monitoring
///         - security
///       tags:
///         Name: default
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Event Subscriptions using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/eventSubscription:EventSubscription default redshift-event-sub
/// ```
class EventSubscription extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Redshift event notification subscription
  late final pulumi.Output<String> arn;

  /// The AWS customer account associated with the Redshift event notification subscription
  late final pulumi.Output<String> customerAwsId;

  /// A boolean flag to enable/disable the subscription. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// A list of event categories for a SourceType that you want to subscribe to. See https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html or run `aws redshift describe-event-categories`.
  late final pulumi.Output<List<String>?> eventCategories;

  /// The name of the Redshift event subscription.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The event severity to be published by the notification subscription. Valid options are `INFO` or `ERROR`. Default value of `INFO`.
  late final pulumi.Output<String?> severity;

  /// The ARN of the SNS topic to send events to.
  late final pulumi.Output<String> snsTopicArn;

  /// A list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. If specified, a `source_type` must also be specified.
  late final pulumi.Output<List<String>?> sourceIds;

  /// The type of source that will be generating the events. Valid options are `cluster`, `cluster-parameter-group`, `cluster-security-group`, `cluster-snapshot`, or `scheduled-action`. If not set, all sources will be subscribed to.
  late final pulumi.Output<String?> sourceType;
  late final pulumi.Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [EventSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventSubscription]. {@macro pulumi_redshift_event_subscription_event_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventSubscription(
    String name, {
    EventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/eventSubscription:EventSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.customerAwsId = registerOutput<String>('customerAwsId');
    this.enabled = registerOutput<bool?>('enabled');
    this.eventCategories = registerOutput<List<String>?>('eventCategories');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.severity = registerOutput<String?>('severity');
    this.snsTopicArn = registerOutput<String>('snsTopicArn');
    this.sourceIds = registerOutput<List<String>?>('sourceIds');
    this.sourceType = registerOutput<String?>('sourceType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
