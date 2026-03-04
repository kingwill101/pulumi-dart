import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queues_args.dart';
import 'get_queues_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_topic_subscriptions_args.dart';
import 'get_topic_subscriptions_result.dart';
import 'get_topics_args.dart';
import 'get_topics_result.dart';

/// This data source provides a list of MNS queues in an Alibaba Cloud account according to the specified parameters.
///
/// &gt; **DEPRECATED:**  This datasource has been deprecated from version `1.188.0`. Please use new datasource message_service_queues.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const queues = alicloud.mns.getQueues({
///     namePrefix: "tf-",
/// });
/// export const firstQueueId = queues.then(queues => queues.queues?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// queues = alicloud.mns.get_queues(name_prefix="tf-")
/// pulumi.export("firstQueueId", queues.queues[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queues = AliCloud.Mns.GetQueues.Invoke(new()
///     {
///         NamePrefix = "tf-",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstQueueId"] = queues.Apply(getQueuesResult => getQueuesResult.Queues[0]?.Id),
///     };
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
/// 		queues, err := mns.GetQueues(ctx, &mns.GetQueuesArgs{
/// 			NamePrefix: pulumi.StringRef("tf-"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstQueueId", queues.Queues[0].Id)
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
/// import com.pulumi.alicloud.mns.MnsFunctions;
/// import com.pulumi.alicloud.mns.inputs.GetQueuesArgs;
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
///         final var queues = MnsFunctions.getQueues(GetQueuesArgs.builder()
///             .namePrefix("tf-")
///             .build());
///
///         ctx.export("firstQueueId", queues.queues()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   queues:
///     fn::invoke:
///       function: alicloud:mns:getQueues
///       arguments:
///         namePrefix: tf-
/// outputs:
///   firstQueueId: ${queues.queues[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mns_get_queues_get_queues_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueuesResult> getQueues(
  GetQueuesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mns/getQueues:getQueues',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueuesResult.fromMap(result);
}

/// Using this data source can open MNS service automatically. If the service has been opened, it will return opened.
///
/// For information about MNS and how to use it, see [What is MNS](https://www.alibabacloud.com/help/en/product/27412.htm).
///
/// &gt; **NOTE:** Deprecated since v1.252.0.
///
/// &gt; **DEPRECATED:**  This datasource has been deprecated from version `1.252.0`. Please use new resource alicloud_message_service_service.
///
/// &gt; **NOTE:** The MNS service is not support in the international site.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.mns.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.mns.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Mns.GetService.Invoke(new()
///     {
///         Enable = "On",
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
/// 		_, err := mns.GetService(ctx, &mns.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.mns.MnsFunctions;
/// import com.pulumi.alicloud.mns.inputs.GetServiceArgs;
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
///         final var open = MnsFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:mns:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mns_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mns/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides a list of MNS topic subscriptions in an Alibaba Cloud account according to the specified parameters.
///
/// &gt; **DEPRECATED:**  This datasource has been deprecated from version `1.188.0`. Please use new datasource message_service_subscriptions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const subscriptions = alicloud.mns.getTopicSubscriptions({
///     topicName: "topic_name",
///     namePrefix: "tf-",
/// });
/// export const firstTopicSubscriptionId = subscriptions.then(subscriptions => subscriptions.subscriptions?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// subscriptions = alicloud.mns.get_topic_subscriptions(topic_name="topic_name",
///     name_prefix="tf-")
/// pulumi.export("firstTopicSubscriptionId", subscriptions.subscriptions[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subscriptions = AliCloud.Mns.GetTopicSubscriptions.Invoke(new()
///     {
///         TopicName = "topic_name",
///         NamePrefix = "tf-",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTopicSubscriptionId"] = subscriptions.Apply(getTopicSubscriptionsResult => getTopicSubscriptionsResult.Subscriptions[0]?.Id),
///     };
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
/// 		subscriptions, err := mns.GetTopicSubscriptions(ctx, &mns.GetTopicSubscriptionsArgs{
/// 			TopicName:  "topic_name",
/// 			NamePrefix: pulumi.StringRef("tf-"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstTopicSubscriptionId", subscriptions.Subscriptions[0].Id)
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
/// import com.pulumi.alicloud.mns.MnsFunctions;
/// import com.pulumi.alicloud.mns.inputs.GetTopicSubscriptionsArgs;
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
///         final var subscriptions = MnsFunctions.getTopicSubscriptions(GetTopicSubscriptionsArgs.builder()
///             .topicName("topic_name")
///             .namePrefix("tf-")
///             .build());
///
///         ctx.export("firstTopicSubscriptionId", subscriptions.subscriptions()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   subscriptions:
///     fn::invoke:
///       function: alicloud:mns:getTopicSubscriptions
///       arguments:
///         topicName: topic_name
///         namePrefix: tf-
/// outputs:
///   firstTopicSubscriptionId: ${subscriptions.subscriptions[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mns_get_topic_subscriptions_get_topic_subscriptions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicSubscriptionsResult> getTopicSubscriptions(
  GetTopicSubscriptionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mns/getTopicSubscriptions:getTopicSubscriptions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicSubscriptionsResult.fromMap(result);
}

/// This data source provides a list of MNS topics in an Alibaba Cloud account according to the specified parameters.
///
/// &gt; **DEPRECATED:**  This datasource has been deprecated from version `1.188.0`. Please use new datasource message_service_topics.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const topics = alicloud.mns.getTopics({
///     namePrefix: "tf-",
/// });
/// export const firstTopicId = topics.then(topics => topics.topics?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// topics = alicloud.mns.get_topics(name_prefix="tf-")
/// pulumi.export("firstTopicId", topics.topics[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var topics = AliCloud.Mns.GetTopics.Invoke(new()
///     {
///         NamePrefix = "tf-",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTopicId"] = topics.Apply(getTopicsResult => getTopicsResult.Topics[0]?.Id),
///     };
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
/// 		topics, err := mns.GetTopics(ctx, &mns.GetTopicsArgs{
/// 			NamePrefix: pulumi.StringRef("tf-"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstTopicId", topics.Topics[0].Id)
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
/// import com.pulumi.alicloud.mns.MnsFunctions;
/// import com.pulumi.alicloud.mns.inputs.GetTopicsArgs;
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
///         final var topics = MnsFunctions.getTopics(GetTopicsArgs.builder()
///             .namePrefix("tf-")
///             .build());
///
///         ctx.export("firstTopicId", topics.topics()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   topics:
///     fn::invoke:
///       function: alicloud:mns:getTopics
///       arguments:
///         namePrefix: tf-
/// outputs:
///   firstTopicId: ${topics.topics[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mns_get_topics_get_topics_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicsResult> getTopics(
  GetTopicsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mns/getTopics:getTopics',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicsResult.fromMap(result);
}
