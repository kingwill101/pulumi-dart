import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_args.dart';

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
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// topic = alicloud.mns.Topic("topic",
///     name="tf-example-mnstopic",
///     maximum_message_size=65536,
///     logging_enabled=False)
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// MNS Topic can be imported using the id or name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mns/topic:Topic topic topicName
/// ```
class Topic extends pulumi.CustomResource {
  /// Is logging enabled? true or false. Default value to false.
  late final pulumi.Output<bool?> loggingEnabled;
  /// This indicates the maximum length, in bytes, of any message body sent to the topic. Valid value range: 1024-65536, i.e., 1K to 64K. Default value to 65536.
  late final pulumi.Output<int?> maximumMessageSize;
  /// Two topics on a single account in the same region cannot have the same name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  late final pulumi.Output<String> name;

  /// Creates a new [Topic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Topic]. {@macro pulumi_mns_topic_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Topic(
    String name, {
    TopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mns/topic:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.loggingEnabled = registerOutput<bool?>('loggingEnabled');
    this.maximumMessageSize = registerOutput<int?>('maximumMessageSize');
    this.name = registerOutput<String>('name');
  }
}
