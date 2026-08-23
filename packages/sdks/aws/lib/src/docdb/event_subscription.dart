import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_args.dart';
import 'event_subscription_state.dart';

/// Provides a DocumentDB event subscription resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.docdb.Cluster("example", {
///     clusterIdentifier: "example",
///     availabilityZones: [
///         available.names[0],
///         available.names[1],
///         available.names[2],
///     ],
///     masterUsername: "foo",
///     masterPassword: "mustbeeightcharaters",
///     skipFinalSnapshot: true,
/// });
/// const exampleTopic = new aws.sns.Topic("example", {name: "example-events"});
/// const exampleEventSubscription = new aws.docdb.EventSubscription("example", {
///     name: "example",
///     enabled: true,
///     eventCategories: [
///         "creation",
///         "failure",
///     ],
///     sourceType: "db-cluster",
///     sourceIds: [example.id],
///     snsTopicArn: exampleTopic.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.docdb.Cluster("example",
///     cluster_identifier="example",
///     availability_zones=[
///         available["names"][0],
///         available["names"][1],
///         available["names"][2],
///     ],
///     master_username="foo",
///     master_password="mustbeeightcharaters",
///     skip_final_snapshot=True)
/// example_topic = aws.sns.Topic("example", name="example-events")
/// example_event_subscription = aws.docdb.EventSubscription("example",
///     name="example",
///     enabled=True,
///     event_categories=[
///         "creation",
///         "failure",
///     ],
///     source_type="db-cluster",
///     source_ids=[example.id],
///     sns_topic_arn=example_topic.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DocDB.Cluster("example", new()
///     {
///         ClusterIdentifier = "example",
///         AvailabilityZones = new[]
///         {
///             available.Names[0],
///             available.Names[1],
///             available.Names[2],
///         },
///         MasterUsername = "foo",
///         MasterPassword = "mustbeeightcharaters",
///         SkipFinalSnapshot = true,
///     });
///
///     var exampleTopic = new Aws.Sns.Topic("example", new()
///     {
///         Name = "example-events",
///     });
///
///     var exampleEventSubscription = new Aws.DocDB.EventSubscription("example", new()
///     {
///         Name = "example",
///         Enabled = true,
///         EventCategories = new[]
///         {
///             "creation",
///             "failure",
///         },
///         SourceType = "db-cluster",
///         SourceIds = new[]
///         {
///             example.Id,
///         },
///         SnsTopicArn = exampleTopic.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/docdb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := docdb.NewCluster(ctx, "example", &docdb.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("example"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				available.Names[0],
/// 				available.Names[1],
/// 				available.Names[2],
/// 			},
/// 			MasterUsername:    pulumi.String("foo"),
/// 			MasterPassword:    pulumi.String("mustbeeightcharaters"),
/// 			SkipFinalSnapshot: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopic, err := sns.NewTopic(ctx, "example", &sns.TopicArgs{
/// 			Name: pulumi.String("example-events"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = docdb.NewEventSubscription(ctx, "example", &docdb.EventSubscriptionArgs{
/// 			Name:    pulumi.String("example"),
/// 			Enabled: pulumi.Bool(true),
/// 			EventCategories: pulumi.StringArray{
/// 				pulumi.String("creation"),
/// 				pulumi.String("failure"),
/// 			},
/// 			SourceType: pulumi.String("db-cluster"),
/// 			SourceIds: pulumi.StringArray{
/// 				example.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			SnsTopicArn: exampleTopic.Arn,
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
/// resource "aws_docdb_cluster" "example" {
///   cluster_identifier  = "example"
///   availability_zones  = [available.names[0], available.names[1], available.names[2]]
///   master_username     = "foo"
///   master_password     = "mustbeeightcharaters"
///   skip_final_snapshot = true
/// }
/// resource "aws_sns_topic" "example" {
///   name = "example-events"
/// }
/// resource "aws_docdb_eventsubscription" "example" {
///   name             = "example"
///   enabled          = true
///   event_categories = ["creation", "failure"]
///   source_type      = "db-cluster"
///   source_ids       = [aws_docdb_cluster.example.id]
///   sns_topic_arn    = aws_sns_topic.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.docdb.Cluster;
/// import com.pulumi.aws.docdb.ClusterArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.docdb.EventSubscription;
/// import com.pulumi.aws.docdb.EventSubscriptionArgs;
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterIdentifier("example")
///             .availabilityZones(
///                 available.names()[0],
///                 available.names()[1],
///                 available.names()[2])
///             .masterUsername("foo")
///             .masterPassword("mustbeeightcharaters")
///             .skipFinalSnapshot(true)
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("example-events")
///             .build());
///
///         var exampleEventSubscription = new EventSubscription("exampleEventSubscription", EventSubscriptionArgs.builder()
///             .name("example")
///             .enabled(true)
///             .eventCategories(
///                 "creation",
///                 "failure")
///             .sourceType("db-cluster")
///             .sourceIds(example.id())
///             .snsTopicArn(exampleTopic.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:docdb:Cluster
///     properties:
///       clusterIdentifier: example
///       availabilityZones:
///         - ${available.names[0]}
///         - ${available.names[1]}
///         - ${available.names[2]}
///       masterUsername: foo
///       masterPassword: mustbeeightcharaters
///       skipFinalSnapshot: true
///   exampleTopic:
///     type: aws:sns:Topic
///     name: example
///     properties:
///       name: example-events
///   exampleEventSubscription:
///     type: aws:docdb:EventSubscription
///     name: example
///     properties:
///       name: example
///       enabled: true
///       eventCategories:
///         - creation
///         - failure
///       sourceType: db-cluster
///       sourceIds:
///         - ${example.id}
///       snsTopicArn: ${exampleTopic.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DocumentDB Event Subscriptions using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:docdb/eventSubscription:EventSubscription example event-sub
/// ```
class EventSubscription extends pulumi.CustomResource {
  /// The Amazon Resource Name of the DocumentDB event notification subscription
  late final pulumi.Output<String> arn;
  /// The AWS customer account associated with the DocumentDB event notification subscription
  late final pulumi.Output<String> customerAwsId;
  /// A boolean flag to enable/disable the subscription. Defaults to true.
  late final pulumi.Output<bool?> enabled;
  /// A list of event categories for a SourceType that you want to subscribe to. See https://docs.aws.amazon.com/documentdb/latest/developerguide/API_Event.html or run `aws docdb describe-event-categories`.
  late final pulumi.Output<List<String>?> eventCategories;
  /// The name of the DocumentDB event subscription. By default generated by this provider.
  late final pulumi.Output<String> name;
  /// The name of the DocumentDB event subscription. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> snsTopicArn;
  /// A list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. If specified, a sourceType must also be specified.
  late final pulumi.Output<List<String>?> sourceIds;
  /// The type of source that will be generating the events. Valid options are `db-instance`, `db-cluster`, `db-parameter-group`, `db-security-group`,` db-cluster-snapshot`. If not set, all sources will be subscribed to.
  late final pulumi.Output<String?> sourceType;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [EventSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventSubscription]. {@macro pulumi_docdb_event_subscription_event_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventSubscription(
    String name, {
    EventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:docdb/eventSubscription:EventSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    customerAwsId = registerOutput<String>('customerAwsId');
    enabled = registerOutput<bool?>('enabled');
    eventCategories = registerOutput<List<String>?>('eventCategories');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    snsTopicArn = registerOutput<String>('snsTopicArn');
    sourceIds = registerOutput<List<String>?>('sourceIds');
    sourceType = registerOutput<String?>('sourceType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [EventSubscription] resource's state with the given [name] and [id].
  static EventSubscription get(
    String name,
    pulumi.Input<String> id, {
    EventSubscriptionState? state,
  }) {
    return EventSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:docdb/eventSubscription:EventSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    customerAwsId = registerOutput<String>('customerAwsId');
    enabled = registerOutput<bool?>('enabled');
    eventCategories = registerOutput<List<String>?>('eventCategories');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    snsTopicArn = registerOutput<String>('snsTopicArn');
    sourceIds = registerOutput<List<String>?>('sourceIds');
    sourceType = registerOutput<String?>('sourceType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
