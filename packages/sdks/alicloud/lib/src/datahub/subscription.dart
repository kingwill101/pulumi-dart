import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_args.dart';
import 'subscription_state.dart';

/// The subscription is the basic unit of resource usage in Datahub Service under Publish/Subscribe model. You can manage the relationships between user and topics by using subscriptions. [Refer to details](https://www.alibabacloud.com/help/en/datahub/latest/nerbcz).
///
/// &gt; **NOTE:** Available since v1.19.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const example = new alicloud.datahub.Project("example", {
///     name: name,
///     comment: "created by terraform",
/// });
/// const exampleTopic = new alicloud.datahub.Topic("example", {
///     name: name,
///     projectName: example.name,
///     recordType: "BLOB",
///     shardCount: 3,
///     lifeCycle: 7,
///     comment: "created by terraform",
/// });
/// const exampleSubscription = new alicloud.datahub.Subscription("example", {
///     projectName: example.name,
///     topicName: exampleTopic.name,
///     comment: "created by terraform",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// example = alicloud.datahub.Project("example",
///     name=name,
///     comment="created by terraform")
/// example_topic = alicloud.datahub.Topic("example",
///     name=name,
///     project_name=example.name,
///     record_type="BLOB",
///     shard_count=3,
///     life_cycle=7,
///     comment="created by terraform")
/// example_subscription = alicloud.datahub.Subscription("example",
///     project_name=example.name,
///     topic_name=example_topic.name,
///     comment="created by terraform")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var example = new AliCloud.Datahub.Project("example", new()
///     {
///         Name = name,
///         Comment = "created by terraform",
///     });
///
///     var exampleTopic = new AliCloud.Datahub.Topic("example", new()
///     {
///         Name = name,
///         ProjectName = example.Name,
///         RecordType = "BLOB",
///         ShardCount = 3,
///         LifeCycle = 7,
///         Comment = "created by terraform",
///     });
///
///     var exampleSubscription = new AliCloud.Datahub.Subscription("example", new()
///     {
///         ProjectName = example.Name,
///         TopicName = exampleTopic.Name,
///         Comment = "created by terraform",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/datahub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		example, err := datahub.NewProject(ctx, "example", &datahub.ProjectArgs{
/// 			Name:    pulumi.String(name),
/// 			Comment: pulumi.String("created by terraform"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopic, err := datahub.NewTopic(ctx, "example", &datahub.TopicArgs{
/// 			Name:        pulumi.String(name),
/// 			ProjectName: example.Name,
/// 			RecordType:  pulumi.String("BLOB"),
/// 			ShardCount:  pulumi.Int(3),
/// 			LifeCycle:   pulumi.Int(7),
/// 			Comment:     pulumi.String("created by terraform"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datahub.NewSubscription(ctx, "example", &datahub.SubscriptionArgs{
/// 			ProjectName: example.Name,
/// 			TopicName:   exampleTopic.Name,
/// 			Comment:     pulumi.String("created by terraform"),
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
/// import com.pulumi.alicloud.datahub.Project;
/// import com.pulumi.alicloud.datahub.ProjectArgs;
/// import com.pulumi.alicloud.datahub.Topic;
/// import com.pulumi.alicloud.datahub.TopicArgs;
/// import com.pulumi.alicloud.datahub.Subscription;
/// import com.pulumi.alicloud.datahub.SubscriptionArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform_example");
///         var example = new Project("example", ProjectArgs.builder()
///             .name(name)
///             .comment("created by terraform")
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name(name)
///             .projectName(example.name())
///             .recordType("BLOB")
///             .shardCount(3)
///             .lifeCycle(7)
///             .comment("created by terraform")
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .projectName(example.name())
///             .topicName(exampleTopic.name())
///             .comment("created by terraform")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   example:
///     type: alicloud:datahub:Project
///     properties:
///       name: ${name}
///       comment: created by terraform
///   exampleTopic:
///     type: alicloud:datahub:Topic
///     name: example
///     properties:
///       name: ${name}
///       projectName: ${example.name}
///       recordType: BLOB
///       shardCount: 3
///       lifeCycle: 7
///       comment: created by terraform
///   exampleSubscription:
///     type: alicloud:datahub:Subscription
///     name: example
///     properties:
///       projectName: ${example.name}
///       topicName: ${exampleTopic.name}
///       comment: created by terraform
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Datahub subscription can be imported using the ID, e.g.
///
/// ```sh
/// $ pulumi import alicloud:datahub/subscription:Subscription example tf_datahub_project:tf_datahub_topic:1539073399567UgCzY
/// ```
class Subscription extends pulumi.CustomResource {
  /// Comment of the datahub subscription. It cannot be longer than 255 characters.
  late final pulumi.Output<String?> comment;

  /// Create time of the datahub subscription. It is a human-readable string rather than 64-bits UTC.
  late final pulumi.Output<String> createTime;

  /// Last modify time of the datahub subscription. It is the same as *create_time* at the beginning. It is also a human-readable string rather than 64-bits UTC.
  late final pulumi.Output<String> lastModifyTime;

  /// The name of the datahub project that the subscription belongs to. Its length is limited to 3-32 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  late final pulumi.Output<String> projectName;

  /// The identidy of the subscription, generate from server side.
  late final pulumi.Output<String> subId;

  /// The name of the datahub topic that the subscription belongs to. Its length is limited to 1-128 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  late final pulumi.Output<String> topicName;

  /// Creates a new [Subscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscription]. {@macro pulumi_datahub_subscription_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:datahub/subscription:Subscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    comment = registerOutput<String?>('comment');
    createTime = registerOutput<String>('createTime');
    lastModifyTime = registerOutput<String>('lastModifyTime');
    projectName = registerOutput<String>('projectName');
    subId = registerOutput<String>('subId');
    topicName = registerOutput<String>('topicName');
  }

  /// Gets an existing [Subscription] resource's state with the given [name] and [id].
  static Subscription get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionState? state,
  }) {
    return Subscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Subscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:datahub/subscription:Subscription',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    comment = registerOutput<String?>('comment');
    createTime = registerOutput<String>('createTime');
    lastModifyTime = registerOutput<String>('lastModifyTime');
    projectName = registerOutput<String>('projectName');
    subId = registerOutput<String>('subId');
    topicName = registerOutput<String>('topicName');
  }
}
