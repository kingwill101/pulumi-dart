import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_subscription_args.dart';
import 'service_subscription_dlq_policy.dart';
import 'service_subscription_state.dart';

/// Provides a Message Service Subscription resource.
///
///
///
/// For information about Message Service Subscription and how to use it, see [What is Subscription](https://www.alibabacloud.com/help/en/mns/developer-reference/api-mns-open-2022-01-19-subscribe).
///
/// &gt; **NOTE:** Available since v1.188.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.message.ServiceTopic("default", {
///     topicName: name,
///     maxMessageSize: 16888,
///     enableLogging: true,
/// });
/// const defaultServiceSubscription = new alicloud.message.ServiceSubscription("default", {
///     topicName: _default.topicName,
///     subscriptionName: name,
///     endpoint: "http://example.com",
///     pushType: "http",
///     filterTag: name,
///     notifyContentFormat: "XML",
///     notifyStrategy: "BACKOFF_RETRY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.message.ServiceTopic("default",
///     topic_name=name,
///     max_message_size=16888,
///     enable_logging=True)
/// default_service_subscription = alicloud.message.ServiceSubscription("default",
///     topic_name=default.topic_name,
///     subscription_name=name,
///     endpoint="http://example.com",
///     push_type="http",
///     filter_tag=name,
///     notify_content_format="XML",
///     notify_strategy="BACKOFF_RETRY")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Message.ServiceTopic("default", new()
///     {
///         TopicName = name,
///         MaxMessageSize = 16888,
///         EnableLogging = true,
///     });
///
///     var defaultServiceSubscription = new AliCloud.Message.ServiceSubscription("default", new()
///     {
///         TopicName = @default.TopicName,
///         SubscriptionName = name,
///         Endpoint = "http://example.com",
///         PushType = "http",
///         FilterTag = name,
///         NotifyContentFormat = "XML",
///         NotifyStrategy = "BACKOFF_RETRY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/message"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := message.NewServiceTopic(ctx, "default", &message.ServiceTopicArgs{
/// 			TopicName:      pulumi.String(name),
/// 			MaxMessageSize: pulumi.Int(16888),
/// 			EnableLogging:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = message.NewServiceSubscription(ctx, "default", &message.ServiceSubscriptionArgs{
/// 			TopicName:           _default.TopicName,
/// 			SubscriptionName:    pulumi.String(name),
/// 			Endpoint:            pulumi.String("http://example.com"),
/// 			PushType:            pulumi.String("http"),
/// 			FilterTag:           pulumi.String(name),
/// 			NotifyContentFormat: pulumi.String("XML"),
/// 			NotifyStrategy:      pulumi.String("BACKOFF_RETRY"),
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
/// import com.pulumi.alicloud.message.ServiceTopic;
/// import com.pulumi.alicloud.message.ServiceTopicArgs;
/// import com.pulumi.alicloud.message.ServiceSubscription;
/// import com.pulumi.alicloud.message.ServiceSubscriptionArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new ServiceTopic("default", ServiceTopicArgs.builder()
///             .topicName(name)
///             .maxMessageSize(16888)
///             .enableLogging(true)
///             .build());
///
///         var defaultServiceSubscription = new ServiceSubscription("defaultServiceSubscription", ServiceSubscriptionArgs.builder()
///             .topicName(default_.topicName())
///             .subscriptionName(name)
///             .endpoint("http://example.com")
///             .pushType("http")
///             .filterTag(name)
///             .notifyContentFormat("XML")
///             .notifyStrategy("BACKOFF_RETRY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:message:ServiceTopic
///     properties:
///       topicName: ${name}
///       maxMessageSize: 16888
///       enableLogging: true
///   defaultServiceSubscription:
///     type: alicloud:message:ServiceSubscription
///     name: default
///     properties:
///       topicName: ${default.topicName}
///       subscriptionName: ${name}
///       endpoint: http://example.com
///       pushType: http
///       filterTag: ${name}
///       notifyContentFormat: XML
///       notifyStrategy: BACKOFF_RETRY
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Message Service Subscription can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:message/serviceSubscription:ServiceSubscription example <topic_name>:<subscription_name>
/// ```
class ServiceSubscription extends pulumi.CustomResource {
  /// (Available since v1.244.0) The time when the subscription was created.
  late final pulumi.Output<int> createTime;

  /// The dead-letter queue policy. See `dlq_policy` below.
  late final pulumi.Output<ServiceSubscriptionDlqPolicy> dlqPolicy;

  /// The endpoint has three format. Available values format:
  /// - `HTTP Format`: An HTTP URL that starts with http:// or https://.
  /// - `Queue Format`: A queue name.
  /// - `MPush Format`: An AppKey.
  /// - `Sms Format`: A mobile number
  /// - `Email Format`: An email address.
  late final pulumi.Output<String> endpoint;

  /// The tag that is used to filter messages. Only the messages that have the same tag can be pushed. A tag is a string that can be up to 16 characters in length. By default, no tag is specified to filter messages.
  late final pulumi.Output<String?> filterTag;

  /// The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users. Valid values: `XML`, `JSON` and `SIMPLIFIED`. Default value: `XML`.
  late final pulumi.Output<String> notifyContentFormat;

  /// The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails. Default value: `BACKOFF_RETRY`. Valid values:
  /// - `BACKOFF_RETRY`: retries with a fixed backoff interval.
  /// - `EXPONENTIAL_DECAY_RETRY`: retries with exponential backoff.
  late final pulumi.Output<String> notifyStrategy;

  /// The Push type of Subscription. The Valid values: `http`, `queue`, `mpush`, `alisms` and `email`.
  late final pulumi.Output<String> pushType;

  /// The STS RoleArn.
  late final pulumi.Output<String?> stsRoleArn;

  /// Two topics subscription on a single account in the same topic cannot have the same name. A topic subscription name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 255 characters.
  late final pulumi.Output<String> subscriptionName;

  /// The topic which The subscription belongs to was named with the name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 255 characters.
  late final pulumi.Output<String> topicName;

  /// Creates a new [ServiceSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceSubscription]. {@macro pulumi_message_service_subscription_service_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceSubscription(
    String name, {
    ServiceSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:message/serviceSubscription:ServiceSubscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<int>('createTime');
    dlqPolicy = registerOutput<ServiceSubscriptionDlqPolicy>('dlqPolicy');
    endpoint = registerOutput<String>('endpoint');
    filterTag = registerOutput<String?>('filterTag');
    notifyContentFormat = registerOutput<String>('notifyContentFormat');
    notifyStrategy = registerOutput<String>('notifyStrategy');
    pushType = registerOutput<String>('pushType');
    stsRoleArn = registerOutput<String?>('stsRoleArn');
    subscriptionName = registerOutput<String>('subscriptionName');
    topicName = registerOutput<String>('topicName');
  }

  /// Gets an existing [ServiceSubscription] resource's state with the given [name] and [id].
  static ServiceSubscription get(
    String name,
    pulumi.Input<String> id, {
    ServiceSubscriptionState? state,
  }) {
    return ServiceSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:message/serviceSubscription:ServiceSubscription',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<int>('createTime');
    dlqPolicy = registerOutput<ServiceSubscriptionDlqPolicy>('dlqPolicy');
    endpoint = registerOutput<String>('endpoint');
    filterTag = registerOutput<String?>('filterTag');
    notifyContentFormat = registerOutput<String>('notifyContentFormat');
    notifyStrategy = registerOutput<String>('notifyStrategy');
    pushType = registerOutput<String>('pushType');
    stsRoleArn = registerOutput<String?>('stsRoleArn');
    subscriptionName = registerOutput<String>('subscriptionName');
    topicName = registerOutput<String>('topicName');
  }
}
