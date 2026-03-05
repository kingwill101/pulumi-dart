import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_args.dart';
import 'topic_state.dart';

/// Provides an ONS topic resource.
///
/// For more information about how to use it, see [RocketMQ Topic Management API](https://www.alibabacloud.com/help/doc-detail/29591.html).
///
/// &gt; **NOTE:** Available in 1.53.0+
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "onsInstanceName";
/// const topic = config.get("topic") || "onsTopicName";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultInstance = new alicloud.rocketmq.Instance("default", {
///     instanceName: `${name}-${_default.result}`,
///     remark: "default_ons_instance_remark",
/// });
/// const defaultTopic = new alicloud.rocketmq.Topic("default", {
///     topicName: topic,
///     instanceId: defaultInstance.id,
///     messageType: 0,
///     remark: "dafault_ons_topic_remark",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "onsInstanceName"
/// topic = config.get("topic")
/// if topic is None:
///     topic = "onsTopicName"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_instance = alicloud.rocketmq.Instance("default",
///     instance_name=f"{name}-{default['result']}",
///     remark="default_ons_instance_remark")
/// default_topic = alicloud.rocketmq.Topic("default",
///     topic_name=topic,
///     instance_id=default_instance.id,
///     message_type=0,
///     remark="dafault_ons_topic_remark")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "onsInstanceName";
///     var topic = config.Get("topic") ?? "onsTopicName";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultInstance = new AliCloud.RocketMQ.Instance("default", new()
///     {
///         InstanceName = $"{name}-{@default.Result}",
///         Remark = "default_ons_instance_remark",
///     });
///
///     var defaultTopic = new AliCloud.RocketMQ.Topic("default", new()
///     {
///         TopicName = topic,
///         InstanceId = defaultInstance.Id,
///         MessageType = 0,
///         Remark = "dafault_ons_topic_remark",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rocketmq"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "onsInstanceName"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		topic := "onsTopicName"
/// 		if param := cfg.Get("topic"); param != "" {
/// 			topic = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := rocketmq.NewInstance(ctx, "default", &rocketmq.InstanceArgs{
/// 			InstanceName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Remark:       pulumi.String("default_ons_instance_remark"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rocketmq.NewTopic(ctx, "default", &rocketmq.TopicArgs{
/// 			TopicName:   pulumi.String(topic),
/// 			InstanceId:  defaultInstance.ID(),
/// 			MessageType: pulumi.Int(0),
/// 			Remark:      pulumi.String("dafault_ons_topic_remark"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.rocketmq.Instance;
/// import com.pulumi.alicloud.rocketmq.InstanceArgs;
/// import com.pulumi.alicloud.rocketmq.Topic;
/// import com.pulumi.alicloud.rocketmq.TopicArgs;
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
///         final var name = config.get("name").orElse("onsInstanceName");
///         final var topic = config.get("topic").orElse("onsTopicName");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .instanceName(String.format("%s-%s", name,default_.result()))
///             .remark("default_ons_instance_remark")
///             .build());
///
///         var defaultTopic = new Topic("defaultTopic", TopicArgs.builder()
///             .topicName(topic)
///             .instanceId(defaultInstance.id())
///             .messageType(0)
///             .remark("dafault_ons_topic_remark")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: onsInstanceName
///   topic:
///     type: string
///     default: onsTopicName
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultInstance:
///     type: alicloud:rocketmq:Instance
///     name: default
///     properties:
///       instanceName: ${name}-${default.result}
///       remark: default_ons_instance_remark
///   defaultTopic:
///     type: alicloud:rocketmq:Topic
///     name: default
///     properties:
///       topicName: ${topic}
///       instanceId: ${defaultInstance.id}
///       messageType: 0
///       remark: dafault_ons_topic_remark
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ONS TOPIC can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rocketmq/topic:Topic topic MQ_INST_1234567890_Baso1234567:onsTopicDemo
/// ```
class Topic extends pulumi.CustomResource {
  /// ID of the ONS Instance that owns the topics.
  late final pulumi.Output<String> instanceId;
  /// The type of the message. Read [Ons Topic Create](https://www.alibabacloud.com/help/doc-detail/29591.html) for further details.
  late final pulumi.Output<int> messageType;
  /// This attribute has been deprecated.
  late final pulumi.Output<int> perm;
  /// This attribute is a concise description of topic. The length cannot exceed 128.
  late final pulumi.Output<String?> remark;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  ///
  /// &gt; **NOTE:** At least one of `topic_name` and `topic` should be set.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Replaced by `topic_name` after version 1.97.0.
  late final pulumi.Output<String> topic;
  /// Name of the topic. Two topics on a single instance cannot have the same name and the name cannot start with 'GID' or 'CID'. The length cannot exceed 64 characters.
  late final pulumi.Output<String> topicName;

  /// Creates a new [Topic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Topic]. {@macro pulumi_rocketmq_topic_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Topic(
    String name, {
    TopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rocketmq/topic:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceId = registerOutput<String>('instanceId');
    messageType = registerOutput<int>('messageType');
    perm = registerOutput<int>('perm');
    remark = registerOutput<String?>('remark');
    tags = registerOutput<Map<String, String>?>('tags');
    topic = registerOutput<String>('topic');
    topicName = registerOutput<String>('topicName');
  }

  /// Gets an existing [Topic] resource's state with the given [name] and [id].
  static Topic get(
    String name,
    pulumi.Input<String> id, {
    TopicState? state,
  }) {
    return Topic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Topic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rocketmq/topic:Topic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceId = registerOutput<String>('instanceId');
    messageType = registerOutput<int>('messageType');
    perm = registerOutput<int>('perm');
    remark = registerOutput<String?>('remark');
    tags = registerOutput<Map<String, String>?>('tags');
    topic = registerOutput<String>('topic');
    topicName = registerOutput<String>('topicName');
  }
}
