import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_event_rule_args.dart';
import 'service_event_rule_endpoint.dart';
import 'service_event_rule_state.dart';

/// Provides a Message Service Event Rule resource.
///
///
///
/// For information about Message Service Event Rule and how to use it, see [What is Event Rule](https://next.api.alibabacloud.com/document/Mns-open/2022-01-19/CreateEventRule).
///
/// &gt; **NOTE:** Available since v1.255.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const queueName = config.get("queueName") || "tf-exampe-topic2queue";
/// const ruleName = config.get("ruleName") || "tf-exampe-topic-1";
/// const topicName = config.get("topicName") || "tf-exampe-topic2queue";
/// const createTopic = new alicloud.message.ServiceTopic("CreateTopic", {
///     maxMessageSize: 65536,
///     topicName: topicName,
///     loggingEnabled: false,
/// });
/// const createQueue = new alicloud.message.ServiceQueue("CreateQueue", {
///     delaySeconds: 2,
///     pollingWaitSeconds: 2,
///     messageRetentionPeriod: 566,
///     maximumMessageSize: 1123,
///     visibilityTimeout: 30,
///     queueName: queueName,
///     loggingEnabled: false,
/// });
/// const createSub = new alicloud.message.ServiceSubscription("CreateSub", {
///     pushType: "queue",
///     notifyStrategy: "BACKOFF_RETRY",
///     notifyContentFormat: "SIMPLIFIED",
///     subscriptionName: "RDK-example-sub",
///     filterTag: "important",
///     topicName: createTopic.topicName,
///     endpoint: std.format({
///         input: "acs:mns:cn-hangzhou:1511928242963727:/queues/%s",
///         args: [createQueue.id],
///     }).then(invoke => invoke.result),
/// });
/// const _default = new alicloud.message.ServiceEventRule("default", {
///     eventTypes: ["ObjectCreated:PutObject"],
///     matchRules: [[{
///         suffix: "",
///         matchState: "true",
///         name: "acs:oss:cn-hangzhou:1511928242963727:accccx",
///         prefix: "",
///     }]],
///     endpoint: {
///         endpointValue: createSub.topicName,
///         endpointType: "topic",
///     },
///     ruleName: ruleName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// queue_name = config.get("queueName")
/// if queue_name is None:
///     queue_name = "tf-exampe-topic2queue"
/// rule_name = config.get("ruleName")
/// if rule_name is None:
///     rule_name = "tf-exampe-topic-1"
/// topic_name = config.get("topicName")
/// if topic_name is None:
///     topic_name = "tf-exampe-topic2queue"
/// create_topic = alicloud.message.ServiceTopic("CreateTopic",
///     max_message_size=65536,
///     topic_name=topic_name,
///     logging_enabled=False)
/// create_queue = alicloud.message.ServiceQueue("CreateQueue",
///     delay_seconds=2,
///     polling_wait_seconds=2,
///     message_retention_period=566,
///     maximum_message_size=1123,
///     visibility_timeout=30,
///     queue_name=queue_name,
///     logging_enabled=False)
/// create_sub = alicloud.message.ServiceSubscription("CreateSub",
///     push_type="queue",
///     notify_strategy="BACKOFF_RETRY",
///     notify_content_format="SIMPLIFIED",
///     subscription_name="RDK-example-sub",
///     filter_tag="important",
///     topic_name=create_topic.topic_name,
///     endpoint=std.format(input="acs:mns:cn-hangzhou:1511928242963727:/queues/%s",
///         args=[create_queue.id]).result)
/// default = alicloud.message.ServiceEventRule("default",
///     event_types=["ObjectCreated:PutObject"],
///     match_rules=[[{
///         "suffix": "",
///         "match_state": "true",
///         "name": "acs:oss:cn-hangzhou:1511928242963727:accccx",
///         "prefix": "",
///     }]],
///     endpoint={
///         "endpoint_value": create_sub.topic_name,
///         "endpoint_type": "topic",
///     },
///     rule_name=rule_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var queueName = config.Get("queueName") ?? "tf-exampe-topic2queue";
///     var ruleName = config.Get("ruleName") ?? "tf-exampe-topic-1";
///     var topicName = config.Get("topicName") ?? "tf-exampe-topic2queue";
///     var createTopic = new AliCloud.Message.ServiceTopic("CreateTopic", new()
///     {
///         MaxMessageSize = 65536,
///         TopicName = topicName,
///         LoggingEnabled = false,
///     });
///
///     var createQueue = new AliCloud.Message.ServiceQueue("CreateQueue", new()
///     {
///         DelaySeconds = 2,
///         PollingWaitSeconds = 2,
///         MessageRetentionPeriod = 566,
///         MaximumMessageSize = 1123,
///         VisibilityTimeout = 30,
///         QueueName = queueName,
///         LoggingEnabled = false,
///     });
///
///     var createSub = new AliCloud.Message.ServiceSubscription("CreateSub", new()
///     {
///         PushType = "queue",
///         NotifyStrategy = "BACKOFF_RETRY",
///         NotifyContentFormat = "SIMPLIFIED",
///         SubscriptionName = "RDK-example-sub",
///         FilterTag = "important",
///         TopicName = createTopic.TopicName,
///         Endpoint = Std.Format.Invoke(new()
///         {
///             Input = "acs:mns:cn-hangzhou:1511928242963727:/queues/%s",
///             Args = new[]
///             {
///                 createQueue.Id,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var @default = new AliCloud.Message.ServiceEventRule("default", new()
///     {
///         EventTypes = new[]
///         {
///             "ObjectCreated:PutObject",
///         },
///         MatchRules = new[]
///         {
///             new[]
///             {
///                 new AliCloud.Message.Inputs.ServiceEventRuleMatchRuleArgs
///                 {
///                     Suffix = "",
///                     MatchState = "true",
///                     Name = "acs:oss:cn-hangzhou:1511928242963727:accccx",
///                     Prefix = "",
///                 },
///             },
///         },
///         Endpoint = new AliCloud.Message.Inputs.ServiceEventRuleEndpointArgs
///         {
///             EndpointValue = createSub.TopicName,
///             EndpointType = "topic",
///         },
///         RuleName = ruleName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/message"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		queueName := "tf-exampe-topic2queue"
/// 		if param := cfg.Get("queueName"); param != "" {
/// 			queueName = param
/// 		}
/// 		ruleName := "tf-exampe-topic-1"
/// 		if param := cfg.Get("ruleName"); param != "" {
/// 			ruleName = param
/// 		}
/// 		topicName := "tf-exampe-topic2queue"
/// 		if param := cfg.Get("topicName"); param != "" {
/// 			topicName = param
/// 		}
/// 		createTopic, err := message.NewServiceTopic(ctx, "CreateTopic", &message.ServiceTopicArgs{
/// 			MaxMessageSize: pulumi.Int(65536),
/// 			TopicName:      pulumi.String(topicName),
/// 			LoggingEnabled: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createQueue, err := message.NewServiceQueue(ctx, "CreateQueue", &message.ServiceQueueArgs{
/// 			DelaySeconds:           pulumi.Int(2),
/// 			PollingWaitSeconds:     pulumi.Int(2),
/// 			MessageRetentionPeriod: pulumi.Int(566),
/// 			MaximumMessageSize:     pulumi.Int(1123),
/// 			VisibilityTimeout:      pulumi.Int(30),
/// 			QueueName:              pulumi.String(queueName),
/// 			LoggingEnabled:         pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "acs:mns:cn-hangzhou:1511928242963727:/queues/%s",
/// 			Args: pulumi.StringArray{
/// 				createQueue.ID(),
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createSub, err := message.NewServiceSubscription(ctx, "CreateSub", &message.ServiceSubscriptionArgs{
/// 			PushType:            pulumi.String("queue"),
/// 			NotifyStrategy:      pulumi.String("BACKOFF_RETRY"),
/// 			NotifyContentFormat: pulumi.String("SIMPLIFIED"),
/// 			SubscriptionName:    pulumi.String("RDK-example-sub"),
/// 			FilterTag:           pulumi.String("important"),
/// 			TopicName:           createTopic.TopicName,
/// 			Endpoint:            pulumi.String(invokeFormat.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = message.NewServiceEventRule(ctx, "default", &message.ServiceEventRuleArgs{
/// 			EventTypes: pulumi.StringArray{
/// 				pulumi.String("ObjectCreated:PutObject"),
/// 			},
/// 			MatchRules: message.ServiceEventRuleMatchRuleArrayArray{
/// 				message.ServiceEventRuleMatchRuleArray{
/// 					&message.ServiceEventRuleMatchRuleArgs{
/// 						Suffix:     pulumi.String(""),
/// 						MatchState: pulumi.String("true"),
/// 						Name:       pulumi.String("acs:oss:cn-hangzhou:1511928242963727:accccx"),
/// 						Prefix:     pulumi.String(""),
/// 					},
/// 				},
/// 			},
/// 			Endpoint: &message.ServiceEventRuleEndpointArgs{
/// 				EndpointValue: createSub.TopicName,
/// 				EndpointType:  pulumi.String("topic"),
/// 			},
/// 			RuleName: pulumi.String(ruleName),
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
/// import com.pulumi.alicloud.message.ServiceQueue;
/// import com.pulumi.alicloud.message.ServiceQueueArgs;
/// import com.pulumi.alicloud.message.ServiceSubscription;
/// import com.pulumi.alicloud.message.ServiceSubscriptionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.message.ServiceEventRule;
/// import com.pulumi.alicloud.message.ServiceEventRuleArgs;
/// import com.pulumi.alicloud.message.inputs.ServiceEventRuleEndpointArgs;
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
///         final var queueName = config.get("queueName").orElse("tf-exampe-topic2queue");
///         final var ruleName = config.get("ruleName").orElse("tf-exampe-topic-1");
///         final var topicName = config.get("topicName").orElse("tf-exampe-topic2queue");
///         var createTopic = new ServiceTopic("createTopic", ServiceTopicArgs.builder()
///             .maxMessageSize(65536)
///             .topicName(topicName)
///             .loggingEnabled(false)
///             .build());
///
///         var createQueue = new ServiceQueue("createQueue", ServiceQueueArgs.builder()
///             .delaySeconds(2)
///             .pollingWaitSeconds(2)
///             .messageRetentionPeriod(566)
///             .maximumMessageSize(1123)
///             .visibilityTimeout(30)
///             .queueName(queueName)
///             .loggingEnabled(false)
///             .build());
///
///         var createSub = new ServiceSubscription("createSub", ServiceSubscriptionArgs.builder()
///             .pushType("queue")
///             .notifyStrategy("BACKOFF_RETRY")
///             .notifyContentFormat("SIMPLIFIED")
///             .subscriptionName("RDK-example-sub")
///             .filterTag("important")
///             .topicName(createTopic.topicName())
///             .endpoint(StdFunctions.format(FormatArgs.builder()
///                 .input("acs:mns:cn-hangzhou:1511928242963727:/queues/%s")
///                 .args(createQueue.id())
///                 .build()).result())
///             .build());
///
///         var default_ = new ServiceEventRule("default", ServiceEventRuleArgs.builder()
///             .eventTypes("ObjectCreated:PutObject")
///             .matchRules(ServiceEventRuleMatchRuleArgs.builder()
///                 .suffix("")
///                 .matchState("true")
///                 .name("acs:oss:cn-hangzhou:1511928242963727:accccx")
///                 .prefix("")
///                 .build())
///             .endpoint(ServiceEventRuleEndpointArgs.builder()
///                 .endpointValue(createSub.topicName())
///                 .endpointType("topic")
///                 .build())
///             .ruleName(ruleName)
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
///   queueName:
///     type: string
///     default: tf-exampe-topic2queue
///   ruleName:
///     type: string
///     default: tf-exampe-topic-1
///   topicName:
///     type: string
///     default: tf-exampe-topic2queue
/// resources:
///   createTopic:
///     type: alicloud:message:ServiceTopic
///     name: CreateTopic
///     properties:
///       maxMessageSize: '65536'
///       topicName: ${topicName}
///       loggingEnabled: false
///   createQueue:
///     type: alicloud:message:ServiceQueue
///     name: CreateQueue
///     properties:
///       delaySeconds: '2'
///       pollingWaitSeconds: '2'
///       messageRetentionPeriod: '566'
///       maximumMessageSize: '1123'
///       visibilityTimeout: '30'
///       queueName: ${queueName}
///       loggingEnabled: false
///   createSub:
///     type: alicloud:message:ServiceSubscription
///     name: CreateSub
///     properties:
///       pushType: queue
///       notifyStrategy: BACKOFF_RETRY
///       notifyContentFormat: SIMPLIFIED
///       subscriptionName: RDK-example-sub
///       filterTag: important
///       topicName: ${createTopic.topicName}
///       endpoint:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: acs:mns:cn-hangzhou:1511928242963727:/queues/%s
///             args:
///               - ${createQueue.id}
///           return: result
///   default:
///     type: alicloud:message:ServiceEventRule
///     properties:
///       eventTypes:
///         - ObjectCreated:PutObject
///       matchRules:
///         - - suffix: ""
///             matchState: 'true'
///             name: acs:oss:cn-hangzhou:1511928242963727:accccx
///             prefix: ""
///       endpoint:
///         endpointValue: ${createSub.topicName}
///         endpointType: topic
///       ruleName: ${ruleName}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Message Service Event Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:message/serviceEventRule:ServiceEventRule example <id>
/// ```
class ServiceEventRule extends pulumi.CustomResource {
  /// DIRECT: directly delivers to a single queue (1:1) without creating a Topic;
  /// - BROADCAST: BROADCAST to all subscription queues (1:N). You need to create a Topic;
  late final pulumi.Output<String> deliveryMode;

  /// Message Receiving Terminal Endpoint Object. See `endpoint` below.
  late final pulumi.Output<ServiceEventRuleEndpoint?> endpoint;

  /// Event Type List
  late final pulumi.Output<List<String>> eventTypes;

  /// Matching rules, or relationships between multiple rules. See `match_rules` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> matchRules;

  /// The event notification rule name.
  late final pulumi.Output<String> ruleName;

  /// Creates a new [ServiceEventRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceEventRule]. {@macro pulumi_message_service_event_rule_service_event_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceEventRule(
    String name, {
    ServiceEventRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:message/serviceEventRule:ServiceEventRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deliveryMode = registerOutput<String>('deliveryMode');
    endpoint = registerOutput<ServiceEventRuleEndpoint?>('endpoint');
    eventTypes = registerOutput<List<String>>('eventTypes');
    matchRules = registerOutput<List<Map<String, dynamic>>?>('matchRules');
    ruleName = registerOutput<String>('ruleName');
  }

  /// Gets an existing [ServiceEventRule] resource's state with the given [name] and [id].
  static ServiceEventRule get(
    String name,
    pulumi.Input<String> id, {
    ServiceEventRuleState? state,
  }) {
    return ServiceEventRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceEventRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:message/serviceEventRule:ServiceEventRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deliveryMode = registerOutput<String>('deliveryMode');
    endpoint = registerOutput<ServiceEventRuleEndpoint?>('endpoint');
    eventTypes = registerOutput<List<String>>('eventTypes');
    matchRules = registerOutput<List<Map<String, dynamic>>?>('matchRules');
    ruleName = registerOutput<String>('ruleName');
  }
}
