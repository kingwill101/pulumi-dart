import 'package:pulumi/pulumi.dart';
import 'event_subscription_args5.dart';

/// Provides a Redshift event subscription resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.redshift.Cluster("default", {
/// clusterIdentifier: "default",
/// databaseName: "default",
/// });
/// const defaultTopic = new aws.sns.Topic("default", {name: "redshift-events"});
/// const defaultEventSubscription = new aws.redshift.EventSubscription("default", {
/// name: "redshift-event-sub",
/// snsTopicArn: defaultTopic.arn,
/// sourceType: "cluster",
/// sourceIds: [_default.id],
/// severity: "INFO",
/// eventCategories: [
/// "configuration",
/// "management",
/// "monitoring",
/// "security",
/// ],
/// tags: {
/// Name: "default",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.redshift.Cluster("default",
/// cluster_identifier="default",
/// database_name="default")
/// default_topic = aws.sns.Topic("default", name="redshift-events")
/// default_event_subscription = aws.redshift.EventSubscription("default",
/// name="redshift-event-sub",
/// sns_topic_arn=default_topic.arn,
/// source_type="cluster",
/// source_ids=[default.id],
/// severity="INFO",
/// event_categories=[
/// "configuration",
/// "management",
/// "monitoring",
/// "security",
/// ],
/// tags={
/// "Name": "default",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.RedShift.Cluster("default", new()
/// {
/// ClusterIdentifier = "default",
/// DatabaseName = "default",
/// });
///
/// var defaultTopic = new Aws.Sns.Topic("default", new()
/// {
/// Name = "redshift-events",
/// });
///
/// var defaultEventSubscription = new Aws.RedShift.EventSubscription("default", new()
/// {
/// Name = "redshift-event-sub",
/// SnsTopicArn = defaultTopic.Arn,
/// SourceType = "cluster",
/// SourceIds = new[]
/// {
/// @default.Id,
/// },
/// Severity = "INFO",
/// EventCategories = new[]
/// {
/// "configuration",
/// "management",
/// "monitoring",
/// "security",
/// },
/// Tags =
/// {
/// { "Name", "default" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := redshift.NewCluster(ctx, "default", &redshift.ClusterArgs{
/// ClusterIdentifier: pulumi.String("default"),
/// DatabaseName:      pulumi.String("default"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultTopic, err := sns.NewTopic(ctx, "default", &sns.TopicArgs{
/// Name: pulumi.String("redshift-events"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = redshift.NewEventSubscription(ctx, "default", &redshift.EventSubscriptionArgs{
/// Name:        pulumi.String("redshift-event-sub"),
/// SnsTopicArn: defaultTopic.Arn,
/// SourceType:  pulumi.String("cluster"),
/// SourceIds: pulumi.StringArray{
/// _default.ID(),
/// },
/// Severity: pulumi.String("INFO"),
/// EventCategories: pulumi.StringArray{
/// pulumi.String("configuration"),
/// pulumi.String("management"),
/// pulumi.String("monitoring"),
/// pulumi.String("security"),
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("default"),
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new Cluster("default", ClusterArgs.builder()
/// .clusterIdentifier("default")
/// .databaseName("default")
/// .build());
///
/// var defaultTopic = new Topic("defaultTopic", TopicArgs.builder()
/// .name("redshift-events")
/// .build());
///
/// var defaultEventSubscription = new EventSubscription("defaultEventSubscription", EventSubscriptionArgs.builder()
/// .name("redshift-event-sub")
/// .snsTopicArn(defaultTopic.arn())
/// .sourceType("cluster")
/// .sourceIds(default_.id())
/// .severity("INFO")
/// .eventCategories(
/// "configuration",
/// "management",
/// "monitoring",
/// "security")
/// .tags(Map.of("Name", "default"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:redshift:Cluster
/// properties:
/// clusterIdentifier: default
/// databaseName: default
/// defaultTopic:
/// type: aws:sns:Topic
/// name: default
/// properties:
/// name: redshift-events
/// defaultEventSubscription:
/// type: aws:redshift:EventSubscription
/// name: default
/// properties:
/// name: redshift-event-sub
/// snsTopicArn: ${defaultTopic.arn}
/// sourceType: cluster
/// sourceIds:
/// - ${default.id}
/// severity: INFO
/// eventCategories:
/// - configuration
/// - management
/// - monitoring
/// - security
/// tags:
/// Name: default
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Event Subscriptions using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/eventSubscription:EventSubscription default redshift-event-sub
/// ```
class EventSubscription5 extends CustomResource {
  /// Amazon Resource Name (ARN) of the Redshift event notification subscription
  late final Output<String> arn;

  /// The AWS customer account associated with the Redshift event notification subscription
  late final Output<String> customerAwsId;

  /// A boolean flag to enable/disable the subscription. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enabled;

  /// A list of event categories for a SourceType that you want to subscribe to. See https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html or run `aws redshift describe-event-categories`.
  late final Output<List<String>?> eventCategories;

  /// The name of the Redshift event subscription.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The event severity to be published by the notification subscription. Valid options are `INFO` or `ERROR`. Default value of `INFO`.
  late final Output<String?> severity;

  /// The ARN of the SNS topic to send events to.
  late final Output<String> snsTopicArn;

  /// A list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. If specified, a <span pulumi-lang-nodejs="`sourceType`" pulumi-lang-dotnet="`SourceType`" pulumi-lang-go="`sourceType`" pulumi-lang-python="`source_type`" pulumi-lang-yaml="`sourceType`" pulumi-lang-java="`sourceType`">`source_type`</span> must also be specified.
  late final Output<List<String>?> sourceIds;

  /// The type of source that will be generating the events. Valid options are <span pulumi-lang-nodejs="`cluster`" pulumi-lang-dotnet="`Cluster`" pulumi-lang-go="`cluster`" pulumi-lang-python="`cluster`" pulumi-lang-yaml="`cluster`" pulumi-lang-java="`cluster`">`cluster`</span>, `cluster-parameter-group`, `cluster-security-group`, `cluster-snapshot`, or `scheduled-action`. If not set, all sources will be subscribed to.
  late final Output<String?> sourceType;
  late final Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  EventSubscription5(
    String name, {
    EventSubscriptionArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/eventSubscription:EventSubscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.customerAwsId = Output.createUnknown<String>();
    this.enabled = Output.createUnknown<bool?>();
    this.eventCategories = Output.createUnknown<List<String>?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.severity = Output.createUnknown<String?>();
    this.snsTopicArn = Output.createUnknown<String>();
    this.sourceIds = Output.createUnknown<List<String>?>();
    this.sourceType = Output.createUnknown<String?>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
