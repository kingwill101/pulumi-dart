import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_topic_args.dart';
import 'service_topic_state.dart';

/// Provides a Message Service Topic resource.
///
///
///
/// For information about Message Service Topic and how to use it, see [What is Topic](https://www.alibabacloud.com/help/en/message-service/latest/createtopic).
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
/// 		_, err := message.NewServiceTopic(ctx, "default", &message.ServiceTopicArgs{
/// 			TopicName:      pulumi.String(name),
/// 			MaxMessageSize: pulumi.Int(16888),
/// 			EnableLogging:  pulumi.Bool(true),
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Message Service Topic can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:message/serviceTopic:ServiceTopic example <id>
/// ```
class ServiceTopic extends pulumi.CustomResource {
  /// (Available since v1.241.0) The time when the topic was created.
  late final pulumi.Output<String> createTime;

  /// Specifies whether to enable the logging feature. Default value: `false`. Valid values:
  late final pulumi.Output<bool> enableLogging;

  /// . Field `logging_enabled` has been deprecated from provider version 1.241.0. New field `enable_logging` instead.
  late final pulumi.Output<bool> loggingEnabled;

  /// The maximum length of the message that is sent to the topic. Default value: `65536`. Valid values: `1024` to `65536`. Unit: bytes.
  late final pulumi.Output<int> maxMessageSize;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The name of the topic.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String> topicName;

  /// Creates a new [ServiceTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceTopic]. {@macro pulumi_message_service_topic_service_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceTopic(
    String name, {
    ServiceTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:message/serviceTopic:ServiceTopic',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    enableLogging = registerOutput<bool>('enableLogging');
    loggingEnabled = registerOutput<bool>('loggingEnabled');
    maxMessageSize = registerOutput<int>('maxMessageSize');
    tags = registerOutput<Map<String, String>?>('tags');
    topicName = registerOutput<String>('topicName');
  }

  /// Gets an existing [ServiceTopic] resource's state with the given [name] and [id].
  static ServiceTopic get(
    String name,
    pulumi.Input<String> id, {
    ServiceTopicState? state,
  }) {
    return ServiceTopic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceTopic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:message/serviceTopic:ServiceTopic',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    enableLogging = registerOutput<bool>('enableLogging');
    loggingEnabled = registerOutput<bool>('loggingEnabled');
    maxMessageSize = registerOutput<int>('maxMessageSize');
    tags = registerOutput<Map<String, String>?>('tags');
    topicName = registerOutput<String>('topicName');
  }
}
