import 'package:pulumi/pulumi.dart';
import 'event_subscription_args.dart';

/// Provides a DMS (Data Migration Service) event subscription resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dms.EventSubscription("example", {
/// enabled: true,
/// eventCategories: [
/// "creation",
/// "failure",
/// ],
/// name: "my-favorite-event-subscription",
/// snsTopicArn: exampleAwsSnsTopic.arn,
/// sourceIds: [exampleAwsDmsReplicationTask.replicationTaskId],
/// sourceType: "replication-task",
/// tags: {
/// Name: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dms.EventSubscription("example",
/// enabled=True,
/// event_categories=[
/// "creation",
/// "failure",
/// ],
/// name="my-favorite-event-subscription",
/// sns_topic_arn=example_aws_sns_topic["arn"],
/// source_ids=[example_aws_dms_replication_task["replicationTaskId"]],
/// source_type="replication-task",
/// tags={
/// "Name": "example",
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
/// var example = new Aws.Dms.EventSubscription("example", new()
/// {
/// Enabled = true,
/// EventCategories = new[]
/// {
/// "creation",
/// "failure",
/// },
/// Name = "my-favorite-event-subscription",
/// SnsTopicArn = exampleAwsSnsTopic.Arn,
/// SourceIds = new[]
/// {
/// exampleAwsDmsReplicationTask.ReplicationTaskId,
/// },
/// SourceType = "replication-task",
/// Tags =
/// {
/// { "Name", "example" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dms.NewEventSubscription(ctx, "example", &dms.EventSubscriptionArgs{
/// Enabled: pulumi.Bool(true),
/// EventCategories: pulumi.StringArray{
/// pulumi.String("creation"),
/// pulumi.String("failure"),
/// },
/// Name:        pulumi.String("my-favorite-event-subscription"),
/// SnsTopicArn: pulumi.Any(exampleAwsSnsTopic.Arn),
/// SourceIds: pulumi.StringArray{
/// exampleAwsDmsReplicationTask.ReplicationTaskId,
/// },
/// SourceType: pulumi.String("replication-task"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
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
/// import com.pulumi.aws.dms.EventSubscription;
/// import com.pulumi.aws.dms.EventSubscriptionArgs;
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
/// var example = new EventSubscription("example", EventSubscriptionArgs.builder()
/// .enabled(true)
/// .eventCategories(
/// "creation",
/// "failure")
/// .name("my-favorite-event-subscription")
/// .snsTopicArn(exampleAwsSnsTopic.arn())
/// .sourceIds(exampleAwsDmsReplicationTask.replicationTaskId())
/// .sourceType("replication-task")
/// .tags(Map.of("Name", "example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dms:EventSubscription
/// properties:
/// enabled: true
/// eventCategories:
/// - creation
/// - failure
/// name: my-favorite-event-subscription
/// snsTopicArn: ${exampleAwsSnsTopic.arn}
/// sourceIds:
/// - ${exampleAwsDmsReplicationTask.replicationTaskId}
/// sourceType: replication-task
/// tags:
/// Name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import event subscriptions using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dms/eventSubscription:EventSubscription test my-awesome-event-subscription
/// ```
class EventSubscription extends CustomResource {
  /// Amazon Resource Name (ARN) of the DMS Event Subscription.
  late final Output<String> arn;

  /// Whether the event subscription should be enabled.
  late final Output<bool?> enabled;

  /// List of event categories to listen for, see `DescribeEventCategories` for a canonical list.
  late final Output<List<String>> eventCategories;

  /// Name of event subscription.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// SNS topic arn to send events on.
  late final Output<String> snsTopicArn;

  /// Ids of sources to listen to. If you don't specify a value, notifications are provided for all sources.
  late final Output<List<String>?> sourceIds;

  /// Type of source for events. Valid values: `replication-instance` or `replication-task`
  late final Output<String> sourceType;

  /// Map of resource tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  EventSubscription(
    String name, {
    EventSubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dms/eventSubscription:EventSubscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.enabled = registerOutput<bool?>('enabled');
    this.eventCategories = registerOutput<List<String>>('eventCategories');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.snsTopicArn = registerOutput<String>('snsTopicArn');
    this.sourceIds = registerOutput<List<String>?>('sourceIds');
    this.sourceType = registerOutput<String>('sourceType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
