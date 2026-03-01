import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_args.dart';
import 'topic_state.dart';

/// The topic is the basic unit of Datahub data source and is used to define one kind of data or stream. It contains a set of subscriptions. You can manage the datahub source of an application by using topics. [Refer to details](https://www.alibabacloud.com/help/en/datahub/latest/nerbcz).
///
/// > **NOTE:** Available since v1.19.0.
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
/// const name = config.get("name") || "tf_example";
/// const example = new alicloud.datahub.Project("example", {
///     name: name,
///     comment: "created by terraform",
/// });
/// const exampleBlob = new alicloud.datahub.Topic("example_blob", {
///     name: `${name}_blob`,
///     projectName: example.name,
///     recordType: "BLOB",
///     shardCount: 3,
///     lifeCycle: 7,
///     comment: "created by terraform",
/// });
/// const exampleTuple = new alicloud.datahub.Topic("example_tuple", {
///     name: `${name}_tuple`,
///     projectName: example.name,
///     recordType: "TUPLE",
///     recordSchema: {
///         bigint_field: "BIGINT",
///         timestamp_field: "TIMESTAMP",
///         string_field: "STRING",
///         double_field: "DOUBLE",
///         boolean_field: "BOOLEAN",
///     },
///     shardCount: 3,
///     lifeCycle: 7,
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
///     name = "tf_example"
/// example = alicloud.datahub.Project("example",
///     name=name,
///     comment="created by terraform")
/// example_blob = alicloud.datahub.Topic("example_blob",
///     name=f"{name}_blob",
///     project_name=example.name,
///     record_type="BLOB",
///     shard_count=3,
///     life_cycle=7,
///     comment="created by terraform")
/// example_tuple = alicloud.datahub.Topic("example_tuple",
///     name=f"{name}_tuple",
///     project_name=example.name,
///     record_type="TUPLE",
///     record_schema={
///         "bigint_field": "BIGINT",
///         "timestamp_field": "TIMESTAMP",
///         "string_field": "STRING",
///         "double_field": "DOUBLE",
///         "boolean_field": "BOOLEAN",
///     },
///     shard_count=3,
///     life_cycle=7,
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
///     var name = config.Get("name") ?? "tf_example";
///     var example = new AliCloud.Datahub.Project("example", new()
///     {
///         Name = name,
///         Comment = "created by terraform",
///     });
///
///     var exampleBlob = new AliCloud.Datahub.Topic("example_blob", new()
///     {
///         Name = $"{name}_blob",
///         ProjectName = example.Name,
///         RecordType = "BLOB",
///         ShardCount = 3,
///         LifeCycle = 7,
///         Comment = "created by terraform",
///     });
///
///     var exampleTuple = new AliCloud.Datahub.Topic("example_tuple", new()
///     {
///         Name = $"{name}_tuple",
///         ProjectName = example.Name,
///         RecordType = "TUPLE",
///         RecordSchema =
///         {
///             { "bigint_field", "BIGINT" },
///             { "timestamp_field", "TIMESTAMP" },
///             { "string_field", "STRING" },
///             { "double_field", "DOUBLE" },
///             { "boolean_field", "BOOLEAN" },
///         },
///         ShardCount = 3,
///         LifeCycle = 7,
///         Comment = "created by terraform",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/datahub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
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
/// 		_, err = datahub.NewTopic(ctx, "example_blob", &datahub.TopicArgs{
/// 			Name:        pulumi.Sprintf("%v_blob", name),
/// 			ProjectName: example.Name,
/// 			RecordType:  pulumi.String("BLOB"),
/// 			ShardCount:  pulumi.Int(3),
/// 			LifeCycle:   pulumi.Int(7),
/// 			Comment:     pulumi.String("created by terraform"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datahub.NewTopic(ctx, "example_tuple", &datahub.TopicArgs{
/// 			Name:        pulumi.Sprintf("%v_tuple", name),
/// 			ProjectName: example.Name,
/// 			RecordType:  pulumi.String("TUPLE"),
/// 			RecordSchema: pulumi.StringMap{
/// 				"bigint_field":    pulumi.String("BIGINT"),
/// 				"timestamp_field": pulumi.String("TIMESTAMP"),
/// 				"string_field":    pulumi.String("STRING"),
/// 				"double_field":    pulumi.String("DOUBLE"),
/// 				"boolean_field":   pulumi.String("BOOLEAN"),
/// 			},
/// 			ShardCount: pulumi.Int(3),
/// 			LifeCycle:  pulumi.Int(7),
/// 			Comment:    pulumi.String("created by terraform"),
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
///         final var name = config.get("name").orElse("tf_example");
///         var example = new Project("example", ProjectArgs.builder()
///             .name(name)
///             .comment("created by terraform")
///             .build());
///
///         var exampleBlob = new Topic("exampleBlob", TopicArgs.builder()
///             .name(String.format("%s_blob", name))
///             .projectName(example.name())
///             .recordType("BLOB")
///             .shardCount(3)
///             .lifeCycle(7)
///             .comment("created by terraform")
///             .build());
///
///         var exampleTuple = new Topic("exampleTuple", TopicArgs.builder()
///             .name(String.format("%s_tuple", name))
///             .projectName(example.name())
///             .recordType("TUPLE")
///             .recordSchema(Map.ofEntries(
///                 Map.entry("bigint_field", "BIGINT"),
///                 Map.entry("timestamp_field", "TIMESTAMP"),
///                 Map.entry("string_field", "STRING"),
///                 Map.entry("double_field", "DOUBLE"),
///                 Map.entry("boolean_field", "BOOLEAN")
///             ))
///             .shardCount(3)
///             .lifeCycle(7)
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
///     default: tf_example
/// resources:
///   example:
///     type: alicloud:datahub:Project
///     properties:
///       name: ${name}
///       comment: created by terraform
///   exampleBlob:
///     type: alicloud:datahub:Topic
///     name: example_blob
///     properties:
///       name: ${name}_blob
///       projectName: ${example.name}
///       recordType: BLOB
///       shardCount: 3
///       lifeCycle: 7
///       comment: created by terraform
///   exampleTuple:
///     type: alicloud:datahub:Topic
///     name: example_tuple
///     properties:
///       name: ${name}_tuple
///       projectName: ${example.name}
///       recordType: TUPLE
///       recordSchema:
///         bigint_field: BIGINT
///         timestamp_field: TIMESTAMP
///         string_field: STRING
///         double_field: DOUBLE
///         boolean_field: BOOLEAN
///       shardCount: 3
///       lifeCycle: 7
///       comment: created by terraform
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Datahub topic can be imported using the ID, e.g.
///
/// ```sh
/// $ pulumi import alicloud:datahub/topic:Topic example tf_datahub_project:tf_datahub_topic
/// ```
class Topic extends pulumi.CustomResource {
  /// Comment of the datahub topic. It cannot be longer than 255 characters.
  ///
  /// **Notes:** Currently `life_cycle` can not be modified and it will be supported in the next future.
  late final pulumi.Output<String?> comment;
  /// Create time of the datahub topic. It is a human-readable string rather than 64-bits UTC.
  late final pulumi.Output<String> createTime;
  /// Last modify time of the datahub topic. It is the same as *create_time* at the beginning. It is also a human-readable string rather than 64-bits UTC.
  late final pulumi.Output<String> lastModifyTime;
  /// How many days this topic lives. The permitted range of values is [1, 7]. The default value is 3.
  late final pulumi.Output<int?> lifeCycle;
  /// The name of the datahub topic. Its length is limited to 1-128 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  late final pulumi.Output<String> name;
  /// The name of the datahub project that this topic belongs to. It is case-insensitive.
  late final pulumi.Output<String> projectName;
  /// Schema of this topic, required only for TUPLE topic. Supported data types (case-insensitive) are:
  /// - BIGINT
  /// - STRING
  /// - BOOLEAN
  /// - DOUBLE
  /// - TIMESTAMP
  late final pulumi.Output<Map<String, String>?> recordSchema;
  /// The type of this topic. Its value must be one of {BLOB, TUPLE}. For BLOB topic, data will be organized as binary and encoded by BASE64. For TUPLE topic, data has fixed schema. The default value is "TUPLE" with a schema {STRING}.
  late final pulumi.Output<String?> recordType;
  /// The number of shards this topic contains. The permitted range of values is [1, 10]. The default value is 1.
  late final pulumi.Output<int?> shardCount;

  /// Creates a new [Topic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Topic]. {@macro pulumi_datahub_topic_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Topic(
    String name, {
    TopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:datahub/topic:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.comment = registerOutput<String?>('comment');
    this.createTime = registerOutput<String>('createTime');
    this.lastModifyTime = registerOutput<String>('lastModifyTime');
    this.lifeCycle = registerOutput<int?>('lifeCycle');
    this.name = registerOutput<String>('name');
    this.projectName = registerOutput<String>('projectName');
    this.recordSchema = registerOutput<Map<String, String>?>('recordSchema');
    this.recordType = registerOutput<String?>('recordType');
    this.shardCount = registerOutput<int?>('shardCount');
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
          'alicloud:datahub/topic:Topic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.comment = registerOutput<String?>('comment');
    this.createTime = registerOutput<String>('createTime');
    this.lastModifyTime = registerOutput<String>('lastModifyTime');
    this.lifeCycle = registerOutput<int?>('lifeCycle');
    this.name = registerOutput<String>('name');
    this.projectName = registerOutput<String>('projectName');
    this.recordSchema = registerOutput<Map<String, String>?>('recordSchema');
    this.recordType = registerOutput<String?>('recordType');
    this.shardCount = registerOutput<int?>('shardCount');
  }
}
