import 'package:pulumi/pulumi.dart';
import '../lite_topic_partition_config/lite_topic_partition_config.dart';
import '../lite_topic_reservation_config/lite_topic_reservation_config.dart';
import '../lite_topic_retention_config/lite_topic_retention_config.dart';
import 'lite_topic_args.dart';

/// > **Warning:** [Pubsub Lite is deprecated and will be turned down effective March 18, 2026](https://cloud.google.com/pubsub/lite/docs/release-notes#June_17_2024). The resource will be removed in a future major release, please use <span pulumi-lang-nodejs="`gcp.pubsub.Topic`" pulumi-lang-dotnet="`gcp.pubsub.Topic`" pulumi-lang-go="`pubsub.Topic`" pulumi-lang-python="`pubsub.Topic`" pulumi-lang-yaml="`gcp.pubsub.Topic`" pulumi-lang-java="`gcp.pubsub.Topic`">`gcp.pubsub.Topic`</span> instead.
///
/// A named resource to which messages are sent by publishers.
///
///
/// To get more information about Topic, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/lite/docs/reference/rest/v1/admin.projects.locations.topics)
/// * How-to Guides
/// * [Managing Topics](https://cloud.google.com/pubsub/lite/docs/topics)
///
/// ## Example Usage
///
/// ### Pubsub Lite Topic Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.pubsub.LiteReservation("example", {
/// name: "example-reservation",
/// project: project.then(project => project.number),
/// throughputCapacity: 2,
/// });
/// const exampleLiteTopic = new gcp.pubsub.LiteTopic("example", {
/// name: "example-topic",
/// project: project.then(project => project.number),
/// partitionConfig: {
/// count: 1,
/// capacity: {
/// publishMibPerSec: 4,
/// subscribeMibPerSec: 8,
/// },
/// },
/// retentionConfig: {
/// perPartitionBytes: "32212254720",
/// },
/// reservationConfig: {
/// throughputReservation: example.name,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.pubsub.LiteReservation("example",
/// name="example-reservation",
/// project=project.number,
/// throughput_capacity=2)
/// example_lite_topic = gcp.pubsub.LiteTopic("example",
/// name="example-topic",
/// project=project.number,
/// partition_config={
/// "count": 1,
/// "capacity": {
/// "publish_mib_per_sec": 4,
/// "subscribe_mib_per_sec": 8,
/// },
/// },
/// retention_config={
/// "per_partition_bytes": "32212254720",
/// },
/// reservation_config={
/// "throughput_reservation": example.name,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var example = new Gcp.PubSub.LiteReservation("example", new()
/// {
/// Name = "example-reservation",
/// Project = project.Apply(getProjectResult => getProjectResult.Number),
/// ThroughputCapacity = 2,
/// });
///
/// var exampleLiteTopic = new Gcp.PubSub.LiteTopic("example", new()
/// {
/// Name = "example-topic",
/// Project = project.Apply(getProjectResult => getProjectResult.Number),
/// PartitionConfig = new Gcp.PubSub.Inputs.LiteTopicPartitionConfigArgs
/// {
/// Count = 1,
/// Capacity = new Gcp.PubSub.Inputs.LiteTopicPartitionConfigCapacityArgs
/// {
/// PublishMibPerSec = 4,
/// SubscribeMibPerSec = 8,
/// },
/// },
/// RetentionConfig = new Gcp.PubSub.Inputs.LiteTopicRetentionConfigArgs
/// {
/// PerPartitionBytes = "32212254720",
/// },
/// ReservationConfig = new Gcp.PubSub.Inputs.LiteTopicReservationConfigArgs
/// {
/// ThroughputReservation = example.Name,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// example, err := pubsub.NewLiteReservation(ctx, "example", &pubsub.LiteReservationArgs{
/// Name:               pulumi.String("example-reservation"),
/// Project:            pulumi.String(project.Number),
/// ThroughputCapacity: pulumi.Int(2),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = pubsub.NewLiteTopic(ctx, "example", &pubsub.LiteTopicArgs{
/// Name:    pulumi.String("example-topic"),
/// Project: pulumi.String(project.Number),
/// PartitionConfig: &pubsub.LiteTopicPartitionConfigArgs{
/// Count: pulumi.Int(1),
/// Capacity: &pubsub.LiteTopicPartitionConfigCapacityArgs{
/// PublishMibPerSec:   pulumi.Int(4),
/// SubscribeMibPerSec: pulumi.Int(8),
/// },
/// },
/// RetentionConfig: &pubsub.LiteTopicRetentionConfigArgs{
/// PerPartitionBytes: pulumi.String("32212254720"),
/// },
/// ReservationConfig: &pubsub.LiteTopicReservationConfigArgs{
/// ThroughputReservation: example.Name,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.pubsub.LiteReservation;
/// import com.pulumi.gcp.pubsub.LiteReservationArgs;
/// import com.pulumi.gcp.pubsub.LiteTopic;
/// import com.pulumi.gcp.pubsub.LiteTopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.LiteTopicPartitionConfigArgs;
/// import com.pulumi.gcp.pubsub.inputs.LiteTopicPartitionConfigCapacityArgs;
/// import com.pulumi.gcp.pubsub.inputs.LiteTopicRetentionConfigArgs;
/// import com.pulumi.gcp.pubsub.inputs.LiteTopicReservationConfigArgs;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var example = new LiteReservation("example", LiteReservationArgs.builder()
/// .name("example-reservation")
/// .project(project.number())
/// .throughputCapacity(2)
/// .build());
///
/// var exampleLiteTopic = new LiteTopic("exampleLiteTopic", LiteTopicArgs.builder()
/// .name("example-topic")
/// .project(project.number())
/// .partitionConfig(LiteTopicPartitionConfigArgs.builder()
/// .count(1)
/// .capacity(LiteTopicPartitionConfigCapacityArgs.builder()
/// .publishMibPerSec(4)
/// .subscribeMibPerSec(8)
/// .build())
/// .build())
/// .retentionConfig(LiteTopicRetentionConfigArgs.builder()
/// .perPartitionBytes("32212254720")
/// .build())
/// .reservationConfig(LiteTopicReservationConfigArgs.builder()
/// .throughputReservation(example.name())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:pubsub:LiteReservation
/// properties:
/// name: example-reservation
/// project: ${project.number}
/// throughputCapacity: 2
/// exampleLiteTopic:
/// type: gcp:pubsub:LiteTopic
/// name: example
/// properties:
/// name: example-topic
/// project: ${project.number}
/// partitionConfig:
/// count: 1
/// capacity:
/// publishMibPerSec: 4
/// subscribeMibPerSec: 8
/// retentionConfig:
/// perPartitionBytes: 3.221225472e+10
/// reservationConfig:
/// throughputReservation: ${example.name}
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Topic can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{zone}}/topics/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Topic can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteTopic:LiteTopic default projects/{{project}}/locations/{{zone}}/topics/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteTopic:LiteTopic default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteTopic:LiteTopic default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteTopic:LiteTopic default {{name}}
/// ```
class LiteTopic extends CustomResource {
  /// Name of the topic.
  late final Output<String> name;

  /// The settings for this topic's partitions.
  /// Structure is documented below.
  late final Output<LiteTopicPartitionConfig?> partitionConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The region of the pubsub lite topic.
  late final Output<String?> region;

  /// The settings for this topic's Reservation usage.
  /// Structure is documented below.
  late final Output<LiteTopicReservationConfig?> reservationConfig;

  /// The settings for a topic's message retention.
  /// Structure is documented below.
  late final Output<LiteTopicRetentionConfig?> retentionConfig;

  /// The zone of the pubsub lite topic.
  late final Output<String?> zone;

  LiteTopic(
    String name, {
    LiteTopicArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/liteTopic:LiteTopic',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.partitionConfig =
        registerOutput<LiteTopicPartitionConfig?>('partitionConfig');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String?>('region');
    this.reservationConfig =
        registerOutput<LiteTopicReservationConfig?>('reservationConfig');
    this.retentionConfig =
        registerOutput<LiteTopicRetentionConfig?>('retentionConfig');
    this.zone = registerOutput<String?>('zone');
  }
}
