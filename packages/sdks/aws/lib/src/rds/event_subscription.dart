import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_args.dart';
import 'event_subscription_state.dart';

/// Provides a DB event subscription resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Instance("default", {
///     allocatedStorage: 10,
///     engine: "mysql",
///     engineVersion: "5.6.17",
///     instanceClass: aws.rds.InstanceType.T2_Micro,
///     dbName: "mydb",
///     username: "foo",
///     password: "bar",
///     dbSubnetGroupName: "my_database_subnet_group",
///     parameterGroupName: "default.mysql5.6",
/// });
/// const defaultTopic = new aws.sns.Topic("default", {name: "rds-events"});
/// const defaultEventSubscription = new aws.rds.EventSubscription("default", {
///     name: "rds-event-sub",
///     snsTopic: defaultTopic.arn,
///     sourceType: "db-instance",
///     sourceIds: [_default.identifier],
///     eventCategories: [
///         "availability",
///         "deletion",
///         "failover",
///         "failure",
///         "low storage",
///         "maintenance",
///         "notification",
///         "read replica",
///         "recovery",
///         "restoration",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Instance("default",
///     allocated_storage=10,
///     engine="mysql",
///     engine_version="5.6.17",
///     instance_class=aws.rds.InstanceType.T2_MICRO,
///     db_name="mydb",
///     username="foo",
///     password="bar",
///     db_subnet_group_name="my_database_subnet_group",
///     parameter_group_name="default.mysql5.6")
/// default_topic = aws.sns.Topic("default", name="rds-events")
/// default_event_subscription = aws.rds.EventSubscription("default",
///     name="rds-event-sub",
///     sns_topic=default_topic.arn,
///     source_type="db-instance",
///     source_ids=[default.identifier],
///     event_categories=[
///         "availability",
///         "deletion",
///         "failover",
///         "failure",
///         "low storage",
///         "maintenance",
///         "notification",
///         "read replica",
///         "recovery",
///         "restoration",
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
///     var @default = new Aws.Rds.Instance("default", new()
///     {
///         AllocatedStorage = 10,
///         Engine = "mysql",
///         EngineVersion = "5.6.17",
///         InstanceClass = Aws.Rds.InstanceType.T2_Micro,
///         DbName = "mydb",
///         Username = "foo",
///         Password = "bar",
///         DbSubnetGroupName = "my_database_subnet_group",
///         ParameterGroupName = "default.mysql5.6",
///     });
///
///     var defaultTopic = new Aws.Sns.Topic("default", new()
///     {
///         Name = "rds-events",
///     });
///
///     var defaultEventSubscription = new Aws.Rds.EventSubscription("default", new()
///     {
///         Name = "rds-event-sub",
///         SnsTopic = defaultTopic.Arn,
///         SourceType = "db-instance",
///         SourceIds = new[]
///         {
///             @default.Identifier,
///         },
///         EventCategories = new[]
///         {
///             "availability",
///             "deletion",
///             "failover",
///             "failure",
///             "low storage",
///             "maintenance",
///             "notification",
///             "read replica",
///             "recovery",
///             "restoration",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			AllocatedStorage:   pulumi.Int(10),
/// 			Engine:             pulumi.String("mysql"),
/// 			EngineVersion:      pulumi.String("5.6.17"),
/// 			InstanceClass:      pulumi.String(rds.InstanceType_T2_Micro),
/// 			DbName:             pulumi.String("mydb"),
/// 			Username:           pulumi.String("foo"),
/// 			Password:           pulumi.String("bar"),
/// 			DbSubnetGroupName:  pulumi.String("my_database_subnet_group"),
/// 			ParameterGroupName: pulumi.String("default.mysql5.6"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTopic, err := sns.NewTopic(ctx, "default", &sns.TopicArgs{
/// 			Name: pulumi.String("rds-events"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewEventSubscription(ctx, "default", &rds.EventSubscriptionArgs{
/// 			Name:       pulumi.String("rds-event-sub"),
/// 			SnsTopic:   defaultTopic.Arn,
/// 			SourceType: pulumi.String("db-instance"),
/// 			SourceIds: pulumi.StringArray{
/// 				_default.Identifier,
/// 			},
/// 			EventCategories: pulumi.StringArray{
/// 				pulumi.String("availability"),
/// 				pulumi.String("deletion"),
/// 				pulumi.String("failover"),
/// 				pulumi.String("failure"),
/// 				pulumi.String("low storage"),
/// 				pulumi.String("maintenance"),
/// 				pulumi.String("notification"),
/// 				pulumi.String("read replica"),
/// 				pulumi.String("recovery"),
/// 				pulumi.String("restoration"),
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
/// resource "aws_rds_instance" "default" {
///   allocated_storage    = 10
///   engine               = "mysql"
///   engine_version       = "5.6.17"
///   instance_class       = "db.t2.micro"
///   db_name              = "mydb"
///   username             = "foo"
///   password             = "bar"
///   db_subnet_group_name = "my_database_subnet_group"
///   parameter_group_name = "default.mysql5.6"
/// }
/// resource "aws_sns_topic" "default" {
///   name = "rds-events"
/// }
/// resource "aws_rds_eventsubscription" "default" {
///   name             = "rds-event-sub"
///   sns_topic        = aws_sns_topic.default.arn
///   source_type      = "db-instance"
///   source_ids       = [aws_rds_instance.default.identifier]
///   event_categories = ["availability", "deletion", "failover", "failure", "low storage", "maintenance", "notification", "read replica", "recovery", "restoration"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.Instance;
/// import com.pulumi.aws.rds.InstanceArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.rds.EventSubscription;
/// import com.pulumi.aws.rds.EventSubscriptionArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .allocatedStorage(10)
///             .engine("mysql")
///             .engineVersion("5.6.17")
///             .instanceClass("db.t2.micro")
///             .dbName("mydb")
///             .username("foo")
///             .password("bar")
///             .dbSubnetGroupName("my_database_subnet_group")
///             .parameterGroupName("default.mysql5.6")
///             .build());
///
///         var defaultTopic = new Topic("defaultTopic", TopicArgs.builder()
///             .name("rds-events")
///             .build());
///
///         var defaultEventSubscription = new EventSubscription("defaultEventSubscription", EventSubscriptionArgs.builder()
///             .name("rds-event-sub")
///             .snsTopic(defaultTopic.arn())
///             .sourceType("db-instance")
///             .sourceIds(default_.identifier())
///             .eventCategories(
///                 "availability",
///                 "deletion",
///                 "failover",
///                 "failure",
///                 "low storage",
///                 "maintenance",
///                 "notification",
///                 "read replica",
///                 "recovery",
///                 "restoration")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:Instance
///     properties:
///       allocatedStorage: 10
///       engine: mysql
///       engineVersion: 5.6.17
///       instanceClass: db.t2.micro
///       dbName: mydb
///       username: foo
///       password: bar
///       dbSubnetGroupName: my_database_subnet_group
///       parameterGroupName: default.mysql5.6
///   defaultTopic:
///     type: aws:sns:Topic
///     name: default
///     properties:
///       name: rds-events
///   defaultEventSubscription:
///     type: aws:rds:EventSubscription
///     name: default
///     properties:
///       name: rds-event-sub
///       snsTopic: ${defaultTopic.arn}
///       sourceType: db-instance
///       sourceIds:
///         - ${default.identifier}
///       eventCategories:
///         - availability
///         - deletion
///         - failover
///         - failure
///         - low storage
///         - maintenance
///         - notification
///         - read replica
///         - recovery
///         - restoration
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DB Event Subscriptions using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/eventSubscription:EventSubscription default rds-event-sub
/// ```
class EventSubscription extends pulumi.CustomResource {
  /// The Amazon Resource Name of the RDS event notification subscription
  late final pulumi.Output<String> arn;
  /// The AWS customer account associated with the RDS event notification subscription
  late final pulumi.Output<String> customerAwsId;
  /// A boolean flag to enable/disable the subscription. Defaults to true.
  late final pulumi.Output<bool?> enabled;
  /// A list of event categories for a SourceType that you want to subscribe to. See http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html or run `aws rds describe-event-categories`.
  late final pulumi.Output<List<String>?> eventCategories;
  /// The name of the DB event subscription. By default generated by this provider.
  late final pulumi.Output<String> name;
  /// The name of the DB event subscription. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The SNS topic to send events to.
  late final pulumi.Output<String> snsTopic;
  /// A list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. If specified, a sourceType must also be specified.
  late final pulumi.Output<List<String>?> sourceIds;
  /// The type of source that will be generating the events. Valid options are `db-instance`, `db-parameter-group`, `db-security-group`, `db-snapshot`, `db-cluster`, `db-cluster-snapshot`, `custom-engine-version`, `db-proxy`, `blue-green-deployment`, `db-shard-group`, and `zero-etl`. If not set, all sources will be subscribed to.
  late final pulumi.Output<String?> sourceType;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [EventSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventSubscription]. {@macro pulumi_rds_event_subscription_event_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventSubscription(
    String name, {
    EventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/eventSubscription:EventSubscription',
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
    snsTopic = registerOutput<String>('snsTopic');
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
          'aws:rds/eventSubscription:EventSubscription',
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
    snsTopic = registerOutput<String>('snsTopic');
    sourceIds = registerOutput<List<String>?>('sourceIds');
    sourceType = registerOutput<String?>('sourceType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
