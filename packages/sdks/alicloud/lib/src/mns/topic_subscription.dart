import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_subscription_args.dart';
import 'topic_subscription_state.dart';

/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const topic = new alicloud.mns.Topic("topic", {
///     name: "tf-example-mnstopic",
///     maximumMessageSize: 65536,
///     loggingEnabled: false,
/// });
/// const subscription = new alicloud.mns.TopicSubscription("subscription", {
///     topicName: "tf-example-mnstopic",
///     name: "tf-example-mnstopic-sub",
///     filterTag: "test",
///     endpoint: "http://www.xxx.com/xxx",
///     notifyStrategy: "BACKOFF_RETRY",
///     notifyContentFormat: "XML",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// topic = alicloud.mns.Topic("topic",
///     name="tf-example-mnstopic",
///     maximum_message_size=65536,
///     logging_enabled=False)
/// subscription = alicloud.mns.TopicSubscription("subscription",
///     topic_name="tf-example-mnstopic",
///     name="tf-example-mnstopic-sub",
///     filter_tag="test",
///     endpoint="http://www.xxx.com/xxx",
///     notify_strategy="BACKOFF_RETRY",
///     notify_content_format="XML")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var topic = new AliCloud.Mns.Topic("topic", new()
///     {
///         Name = "tf-example-mnstopic",
///         MaximumMessageSize = 65536,
///         LoggingEnabled = false,
///     });
///
///     var subscription = new AliCloud.Mns.TopicSubscription("subscription", new()
///     {
///         TopicName = "tf-example-mnstopic",
///         Name = "tf-example-mnstopic-sub",
///         FilterTag = "test",
///         Endpoint = "http://www.xxx.com/xxx",
///         NotifyStrategy = "BACKOFF_RETRY",
///         NotifyContentFormat = "XML",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mns.NewTopic(ctx, "topic", &mns.TopicArgs{
/// 			Name:               pulumi.String("tf-example-mnstopic"),
/// 			MaximumMessageSize: pulumi.Int(65536),
/// 			LoggingEnabled:     pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mns.NewTopicSubscription(ctx, "subscription", &mns.TopicSubscriptionArgs{
/// 			TopicName:           pulumi.String("tf-example-mnstopic"),
/// 			Name:                pulumi.String("tf-example-mnstopic-sub"),
/// 			FilterTag:           pulumi.String("test"),
/// 			Endpoint:            pulumi.String("http://www.xxx.com/xxx"),
/// 			NotifyStrategy:      pulumi.String("BACKOFF_RETRY"),
/// 			NotifyContentFormat: pulumi.String("XML"),
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
/// import com.pulumi.alicloud.mns.Topic;
/// import com.pulumi.alicloud.mns.TopicArgs;
/// import com.pulumi.alicloud.mns.TopicSubscription;
/// import com.pulumi.alicloud.mns.TopicSubscriptionArgs;
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
///         var topic = new Topic("topic", TopicArgs.builder()
///             .name("tf-example-mnstopic")
///             .maximumMessageSize(65536)
///             .loggingEnabled(false)
///             .build());
///
///         var subscription = new TopicSubscription("subscription", TopicSubscriptionArgs.builder()
///             .topicName("tf-example-mnstopic")
///             .name("tf-example-mnstopic-sub")
///             .filterTag("test")
///             .endpoint("http://www.xxx.com/xxx")
///             .notifyStrategy("BACKOFF_RETRY")
///             .notifyContentFormat("XML")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   topic:
///     type: alicloud:mns:Topic
///     properties:
///       name: tf-example-mnstopic
///       maximumMessageSize: 65536
///       loggingEnabled: false
///   subscription:
///     type: alicloud:mns:TopicSubscription
///     properties:
///       topicName: tf-example-mnstopic
///       name: tf-example-mnstopic-sub
///       filterTag: test
///       endpoint: http://www.xxx.com/xxx
///       notifyStrategy: BACKOFF_RETRY
///       notifyContentFormat: XML
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// MNS Topic subscription can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mns/topicSubscription:TopicSubscription subscription tf-example-mnstopic:tf-example-mnstopic-sub
/// ```
class TopicSubscription extends pulumi.CustomResource {
  /// The endpoint has three format. Available values format:
  /// - `HTTP Format`: http://xxx.com/xxx
  /// - `Queue Format`: acs:mns:{REGION}:{AccountID}:queues/{QueueName}
  /// - `Email Format`: mail:directmail:{MailAddress}
  late final pulumi.Output<String> endpoint;

  /// The length should be shorter than 16.
  late final pulumi.Output<String?> filterTag;

  /// Two topics subscription on a single account in the same topic cannot have the same name. A topic subscription name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  late final pulumi.Output<String> name;

  /// The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users. The valid values: `SIMPLIFIED`, `XML` and `JSON`. Default to `SIMPLIFIED`.
  late final pulumi.Output<String?> notifyContentFormat;

  /// The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails. The Valid values: `EXPONENTIAL_DECAY_RETRY` and `BACKOFF_RETRY`. Default value to `BACKOFF_RETRY` .
  late final pulumi.Output<String?> notifyStrategy;

  /// The topic which The subscription belongs to was named with the name.A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  late final pulumi.Output<String> topicName;

  /// Creates a new [TopicSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TopicSubscription]. {@macro pulumi_mns_topic_subscription_topic_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TopicSubscription(
    String name, {
    TopicSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:mns/topicSubscription:TopicSubscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    endpoint = registerOutput<String>('endpoint');
    filterTag = registerOutput<String?>('filterTag');
    this.name = registerOutput<String>('name');
    notifyContentFormat = registerOutput<String?>('notifyContentFormat');
    notifyStrategy = registerOutput<String?>('notifyStrategy');
    topicName = registerOutput<String>('topicName');
  }

  /// Gets an existing [TopicSubscription] resource's state with the given [name] and [id].
  static TopicSubscription get(
    String name,
    pulumi.Input<String> id, {
    TopicSubscriptionState? state,
  }) {
    return TopicSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TopicSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:mns/topicSubscription:TopicSubscription',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    endpoint = registerOutput<String>('endpoint');
    filterTag = registerOutput<String?>('filterTag');
    this.name = registerOutput<String>('name');
    notifyContentFormat = registerOutput<String?>('notifyContentFormat');
    notifyStrategy = registerOutput<String?>('notifyStrategy');
    topicName = registerOutput<String>('topicName');
  }
}
