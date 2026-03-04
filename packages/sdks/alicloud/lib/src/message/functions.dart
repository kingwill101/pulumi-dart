import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_queues_args.dart';
import 'get_service_queues_result.dart';
import 'get_service_subscriptions_args.dart';
import 'get_service_subscriptions_result.dart';
import 'get_service_topics_args.dart';
import 'get_service_topics_result.dart';

/// This data source provides the Message Notification Service Queues of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.188.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.message.getServiceQueues({
///     ids: ["example_id"],
/// });
/// export const queueId1 = ids.then(ids => ids.queues?.[0]?.id);
/// const name = alicloud.message.getServiceQueues({
///     queueName: "tf-example",
/// });
/// export const queueId2 = name.then(name => name.queues?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.message.get_service_queues(ids=["example_id"])
/// pulumi.export("queueId1", ids.queues[0].id)
/// name = alicloud.message.get_service_queues(queue_name="tf-example")
/// pulumi.export("queueId2", name.queues[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Message.GetServiceQueues.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var name = AliCloud.Message.GetServiceQueues.Invoke(new()
///     {
///         QueueName = "tf-example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["queueId1"] = ids.Apply(getServiceQueuesResult => getServiceQueuesResult.Queues[0]?.Id),
///         ["queueId2"] = name.Apply(getServiceQueuesResult => getServiceQueuesResult.Queues[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/message"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := message.GetServiceQueues(ctx, &message.GetServiceQueuesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("queueId1", ids.Queues[0].Id)
/// 		name, err := message.GetServiceQueues(ctx, &message.GetServiceQueuesArgs{
/// 			QueueName: pulumi.StringRef("tf-example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("queueId2", name.Queues[0].Id)
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
/// import com.pulumi.alicloud.message.MessageFunctions;
/// import com.pulumi.alicloud.message.inputs.GetServiceQueuesArgs;
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
///         final var ids = MessageFunctions.getServiceQueues(GetServiceQueuesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("queueId1", ids.queues()[0].id());
///         final var name = MessageFunctions.getServiceQueues(GetServiceQueuesArgs.builder()
///             .queueName("tf-example")
///             .build());
///
///         ctx.export("queueId2", name.queues()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:message:getServiceQueues
///       arguments:
///         ids:
///           - example_id
///   name:
///     fn::invoke:
///       function: alicloud:message:getServiceQueues
///       arguments:
///         queueName: tf-example
/// outputs:
///   queueId1: ${ids.queues[0].id}
///   queueId2: ${name.queues[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_message_get_service_queues_get_service_queues_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceQueuesResult> getServiceQueues(
  GetServiceQueuesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:message/getServiceQueues:getServiceQueues',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceQueuesResult.fromMap(result);
}

/// This data source provides the Message Notification Service Subscriptions of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.188.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.message.getServiceSubscriptions({
///     ids: ["example_id"],
///     topicName: "tf-example",
/// });
/// export const subscriptionId1 = ids.then(ids => ids.subscriptions?.[0]?.id);
/// const name = alicloud.message.getServiceSubscriptions({
///     topicName: "tf-example",
/// });
/// export const subscriptionId2 = name.then(name => name.subscriptions?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.message.get_service_subscriptions(ids=["example_id"],
///     topic_name="tf-example")
/// pulumi.export("subscriptionId1", ids.subscriptions[0].id)
/// name = alicloud.message.get_service_subscriptions(topic_name="tf-example")
/// pulumi.export("subscriptionId2", name.subscriptions[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Message.GetServiceSubscriptions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         TopicName = "tf-example",
///     });
///
///     var name = AliCloud.Message.GetServiceSubscriptions.Invoke(new()
///     {
///         TopicName = "tf-example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["subscriptionId1"] = ids.Apply(getServiceSubscriptionsResult => getServiceSubscriptionsResult.Subscriptions[0]?.Id),
///         ["subscriptionId2"] = name.Apply(getServiceSubscriptionsResult => getServiceSubscriptionsResult.Subscriptions[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/message"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := message.GetServiceSubscriptions(ctx, &message.GetServiceSubscriptionsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			TopicName: "tf-example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("subscriptionId1", ids.Subscriptions[0].Id)
/// 		name, err := message.GetServiceSubscriptions(ctx, &message.GetServiceSubscriptionsArgs{
/// 			TopicName: "tf-example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("subscriptionId2", name.Subscriptions[0].Id)
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
/// import com.pulumi.alicloud.message.MessageFunctions;
/// import com.pulumi.alicloud.message.inputs.GetServiceSubscriptionsArgs;
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
///         final var ids = MessageFunctions.getServiceSubscriptions(GetServiceSubscriptionsArgs.builder()
///             .ids("example_id")
///             .topicName("tf-example")
///             .build());
///
///         ctx.export("subscriptionId1", ids.subscriptions()[0].id());
///         final var name = MessageFunctions.getServiceSubscriptions(GetServiceSubscriptionsArgs.builder()
///             .topicName("tf-example")
///             .build());
///
///         ctx.export("subscriptionId2", name.subscriptions()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:message:getServiceSubscriptions
///       arguments:
///         ids:
///           - example_id
///         topicName: tf-example
///   name:
///     fn::invoke:
///       function: alicloud:message:getServiceSubscriptions
///       arguments:
///         topicName: tf-example
/// outputs:
///   subscriptionId1: ${ids.subscriptions[0].id}
///   subscriptionId2: ${name.subscriptions[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_message_get_service_subscriptions_get_service_subscriptions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceSubscriptionsResult> getServiceSubscriptions(
  GetServiceSubscriptionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:message/getServiceSubscriptions:getServiceSubscriptions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceSubscriptionsResult.fromMap(result);
}

/// This data source provides the Message Notification Service Topics of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.188.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.message.getServiceTopics({
///     ids: ["example_id"],
/// });
/// export const topicId1 = ids.then(ids => ids.topics?.[0]?.id);
/// const name = alicloud.message.getServiceTopics({
///     topicName: "tf-example",
/// });
/// export const topicId2 = name.then(name => name.topics?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.message.get_service_topics(ids=["example_id"])
/// pulumi.export("topicId1", ids.topics[0].id)
/// name = alicloud.message.get_service_topics(topic_name="tf-example")
/// pulumi.export("topicId2", name.topics[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Message.GetServiceTopics.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var name = AliCloud.Message.GetServiceTopics.Invoke(new()
///     {
///         TopicName = "tf-example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["topicId1"] = ids.Apply(getServiceTopicsResult => getServiceTopicsResult.Topics[0]?.Id),
///         ["topicId2"] = name.Apply(getServiceTopicsResult => getServiceTopicsResult.Topics[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/message"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := message.GetServiceTopics(ctx, &message.GetServiceTopicsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("topicId1", ids.Topics[0].Id)
/// 		name, err := message.GetServiceTopics(ctx, &message.GetServiceTopicsArgs{
/// 			TopicName: pulumi.StringRef("tf-example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("topicId2", name.Topics[0].Id)
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
/// import com.pulumi.alicloud.message.MessageFunctions;
/// import com.pulumi.alicloud.message.inputs.GetServiceTopicsArgs;
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
///         final var ids = MessageFunctions.getServiceTopics(GetServiceTopicsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("topicId1", ids.topics()[0].id());
///         final var name = MessageFunctions.getServiceTopics(GetServiceTopicsArgs.builder()
///             .topicName("tf-example")
///             .build());
///
///         ctx.export("topicId2", name.topics()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:message:getServiceTopics
///       arguments:
///         ids:
///           - example_id
///   name:
///     fn::invoke:
///       function: alicloud:message:getServiceTopics
///       arguments:
///         topicName: tf-example
/// outputs:
///   topicId1: ${ids.topics[0].id}
///   topicId2: ${name.topics[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_message_get_service_topics_get_service_topics_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceTopicsResult> getServiceTopics(
  GetServiceTopicsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:message/getServiceTopics:getServiceTopics',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceTopicsResult.fromMap(result);
}
