import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_function_args.dart';
import 'connection_function_connection_function_config.dart';

/// Manages an AWS CloudFront Connection Function.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.ConnectionFunction("example", {
///     name: "example-connection-function",
///     connectionFunctionCode: "function handler(event) { return event.request; }",
///     connectionFunctionConfig: {
///         runtime: "cloudfront-js-2.0",
///         comment: "Example connection function",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ConnectionFunction("example",
///     name="example-connection-function",
///     connection_function_code="function handler(event) { return event.request; }",
///     connection_function_config={
///         "runtime": "cloudfront-js-2.0",
///         "comment": "Example connection function",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.ConnectionFunction("example", new()
///     {
///         Name = "example-connection-function",
///         ConnectionFunctionCode = "function handler(event) { return event.request; }",
///         ConnectionFunctionConfig = new Aws.CloudFront.Inputs.ConnectionFunctionConnectionFunctionConfigArgs
///         {
///             Runtime = "cloudfront-js-2.0",
///             Comment = "Example connection function",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewConnectionFunction(ctx, "example", &cloudfront.ConnectionFunctionArgs{
/// 			Name:                   pulumi.String("example-connection-function"),
/// 			ConnectionFunctionCode: pulumi.String("function handler(event) { return event.request; }"),
/// 			ConnectionFunctionConfig: &cloudfront.ConnectionFunctionConnectionFunctionConfigArgs{
/// 				Runtime: pulumi.String("cloudfront-js-2.0"),
/// 				Comment: pulumi.String("Example connection function"),
/// 			},
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
/// import com.pulumi.aws.cloudfront.ConnectionFunction;
/// import com.pulumi.aws.cloudfront.ConnectionFunctionArgs;
/// import com.pulumi.aws.cloudfront.inputs.ConnectionFunctionConnectionFunctionConfigArgs;
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
///         var example = new ConnectionFunction("example", ConnectionFunctionArgs.builder()
///             .name("example-connection-function")
///             .connectionFunctionCode("function handler(event) { return event.request; }")
///             .connectionFunctionConfig(ConnectionFunctionConnectionFunctionConfigArgs.builder()
///                 .runtime("cloudfront-js-2.0")
///                 .comment("Example connection function")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:ConnectionFunction
///     properties:
///       name: example-connection-function
///       connectionFunctionCode: function handler(event) { return event.request; }
///       connectionFunctionConfig:
///         runtime: cloudfront-js-2.0
///         comment: Example connection function
/// ```
///
///
/// ### With Publish Enabled
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.ConnectionFunction("example", {
///     name: "example-connection-function",
///     connectionFunctionCode: "function handler(event) { return event.request; }",
///     connectionFunctionConfig: {
///         runtime: "cloudfront-js-2.0",
///         comment: "Example connection function",
///     },
///     publish: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ConnectionFunction("example",
///     name="example-connection-function",
///     connection_function_code="function handler(event) { return event.request; }",
///     connection_function_config={
///         "runtime": "cloudfront-js-2.0",
///         "comment": "Example connection function",
///     },
///     publish=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.ConnectionFunction("example", new()
///     {
///         Name = "example-connection-function",
///         ConnectionFunctionCode = "function handler(event) { return event.request; }",
///         ConnectionFunctionConfig = new Aws.CloudFront.Inputs.ConnectionFunctionConnectionFunctionConfigArgs
///         {
///             Runtime = "cloudfront-js-2.0",
///             Comment = "Example connection function",
///         },
///         Publish = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewConnectionFunction(ctx, "example", &cloudfront.ConnectionFunctionArgs{
/// 			Name:                   pulumi.String("example-connection-function"),
/// 			ConnectionFunctionCode: pulumi.String("function handler(event) { return event.request; }"),
/// 			ConnectionFunctionConfig: &cloudfront.ConnectionFunctionConnectionFunctionConfigArgs{
/// 				Runtime: pulumi.String("cloudfront-js-2.0"),
/// 				Comment: pulumi.String("Example connection function"),
/// 			},
/// 			Publish: pulumi.Bool(true),
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
/// import com.pulumi.aws.cloudfront.ConnectionFunction;
/// import com.pulumi.aws.cloudfront.ConnectionFunctionArgs;
/// import com.pulumi.aws.cloudfront.inputs.ConnectionFunctionConnectionFunctionConfigArgs;
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
///         var example = new ConnectionFunction("example", ConnectionFunctionArgs.builder()
///             .name("example-connection-function")
///             .connectionFunctionCode("function handler(event) { return event.request; }")
///             .connectionFunctionConfig(ConnectionFunctionConnectionFunctionConfigArgs.builder()
///                 .runtime("cloudfront-js-2.0")
///                 .comment("Example connection function")
///                 .build())
///             .publish(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:ConnectionFunction
///     properties:
///       name: example-connection-function
///       connectionFunctionCode: function handler(event) { return event.request; }
///       connectionFunctionConfig:
///         runtime: cloudfront-js-2.0
///         comment: Example connection function
///       publish: true
/// ```
///
///
/// ### With Key Value Store Associations
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.KeyValueStore("example", {
///     name: "example-kvs",
///     comment: "Example key value store",
/// });
/// const exampleConnectionFunction = new aws.cloudfront.ConnectionFunction("example", {
///     name: "example-connection-function",
///     connectionFunctionCode: "function handler(event) { return event.request; }",
///     connectionFunctionConfig: {
///         runtime: "cloudfront-js-2.0",
///         comment: "Example connection function",
///         keyValueStoreAssociation: {
///             keyValueStoreArn: example.arn,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.KeyValueStore("example",
///     name="example-kvs",
///     comment="Example key value store")
/// example_connection_function = aws.cloudfront.ConnectionFunction("example",
///     name="example-connection-function",
///     connection_function_code="function handler(event) { return event.request; }",
///     connection_function_config={
///         "runtime": "cloudfront-js-2.0",
///         "comment": "Example connection function",
///         "key_value_store_association": {
///             "key_value_store_arn": example.arn,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.KeyValueStore("example", new()
///     {
///         Name = "example-kvs",
///         Comment = "Example key value store",
///     });
///
///     var exampleConnectionFunction = new Aws.CloudFront.ConnectionFunction("example", new()
///     {
///         Name = "example-connection-function",
///         ConnectionFunctionCode = "function handler(event) { return event.request; }",
///         ConnectionFunctionConfig = new Aws.CloudFront.Inputs.ConnectionFunctionConnectionFunctionConfigArgs
///         {
///             Runtime = "cloudfront-js-2.0",
///             Comment = "Example connection function",
///             KeyValueStoreAssociation = new Aws.CloudFront.Inputs.ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociationArgs
///             {
///                 KeyValueStoreArn = example.Arn,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudfront.NewKeyValueStore(ctx, "example", &cloudfront.KeyValueStoreArgs{
/// 			Name:    pulumi.String("example-kvs"),
/// 			Comment: pulumi.String("Example key value store"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfront.NewConnectionFunction(ctx, "example", &cloudfront.ConnectionFunctionArgs{
/// 			Name:                   pulumi.String("example-connection-function"),
/// 			ConnectionFunctionCode: pulumi.String("function handler(event) { return event.request; }"),
/// 			ConnectionFunctionConfig: &cloudfront.ConnectionFunctionConnectionFunctionConfigArgs{
/// 				Runtime: pulumi.String("cloudfront-js-2.0"),
/// 				Comment: pulumi.String("Example connection function"),
/// 				KeyValueStoreAssociation: &cloudfront.ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociationArgs{
/// 					KeyValueStoreArn: example.Arn,
/// 				},
/// 			},
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
/// import com.pulumi.aws.cloudfront.KeyValueStore;
/// import com.pulumi.aws.cloudfront.KeyValueStoreArgs;
/// import com.pulumi.aws.cloudfront.ConnectionFunction;
/// import com.pulumi.aws.cloudfront.ConnectionFunctionArgs;
/// import com.pulumi.aws.cloudfront.inputs.ConnectionFunctionConnectionFunctionConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociationArgs;
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
///         var example = new KeyValueStore("example", KeyValueStoreArgs.builder()
///             .name("example-kvs")
///             .comment("Example key value store")
///             .build());
///
///         var exampleConnectionFunction = new ConnectionFunction("exampleConnectionFunction", ConnectionFunctionArgs.builder()
///             .name("example-connection-function")
///             .connectionFunctionCode("function handler(event) { return event.request; }")
///             .connectionFunctionConfig(ConnectionFunctionConnectionFunctionConfigArgs.builder()
///                 .runtime("cloudfront-js-2.0")
///                 .comment("Example connection function")
///                 .keyValueStoreAssociation(ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociationArgs.builder()
///                     .keyValueStoreArn(example.arn())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:KeyValueStore
///     properties:
///       name: example-kvs
///       comment: Example key value store
///   exampleConnectionFunction:
///     type: aws:cloudfront:ConnectionFunction
///     name: example
///     properties:
///       name: example-connection-function
///       connectionFunctionCode: function handler(event) { return event.request; }
///       connectionFunctionConfig:
///         runtime: cloudfront-js-2.0
///         comment: Example connection function
///         keyValueStoreAssociation:
///           keyValueStoreArn: ${example.arn}
/// ```
///
///
/// ### With Tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.ConnectionFunction("example", {
///     name: "example-connection-function",
///     connectionFunctionCode: "function handler(event) { return event.request; }",
///     connectionFunctionConfig: {
///         runtime: "cloudfront-js-2.0",
///         comment: "Example connection function",
///     },
///     tags: {
///         Environment: "production",
///         Team: "web",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ConnectionFunction("example",
///     name="example-connection-function",
///     connection_function_code="function handler(event) { return event.request; }",
///     connection_function_config={
///         "runtime": "cloudfront-js-2.0",
///         "comment": "Example connection function",
///     },
///     tags={
///         "Environment": "production",
///         "Team": "web",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.ConnectionFunction("example", new()
///     {
///         Name = "example-connection-function",
///         ConnectionFunctionCode = "function handler(event) { return event.request; }",
///         ConnectionFunctionConfig = new Aws.CloudFront.Inputs.ConnectionFunctionConnectionFunctionConfigArgs
///         {
///             Runtime = "cloudfront-js-2.0",
///             Comment = "Example connection function",
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Team", "web" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewConnectionFunction(ctx, "example", &cloudfront.ConnectionFunctionArgs{
/// 			Name:                   pulumi.String("example-connection-function"),
/// 			ConnectionFunctionCode: pulumi.String("function handler(event) { return event.request; }"),
/// 			ConnectionFunctionConfig: &cloudfront.ConnectionFunctionConnectionFunctionConfigArgs{
/// 				Runtime: pulumi.String("cloudfront-js-2.0"),
/// 				Comment: pulumi.String("Example connection function"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Team":        pulumi.String("web"),
/// 			},
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
/// import com.pulumi.aws.cloudfront.ConnectionFunction;
/// import com.pulumi.aws.cloudfront.ConnectionFunctionArgs;
/// import com.pulumi.aws.cloudfront.inputs.ConnectionFunctionConnectionFunctionConfigArgs;
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
///         var example = new ConnectionFunction("example", ConnectionFunctionArgs.builder()
///             .name("example-connection-function")
///             .connectionFunctionCode("function handler(event) { return event.request; }")
///             .connectionFunctionConfig(ConnectionFunctionConnectionFunctionConfigArgs.builder()
///                 .runtime("cloudfront-js-2.0")
///                 .comment("Example connection function")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Team", "web")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:ConnectionFunction
///     properties:
///       name: example-connection-function
///       connectionFunctionCode: function handler(event) { return event.request; }
///       connectionFunctionConfig:
///         runtime: cloudfront-js-2.0
///         comment: Example connection function
///       tags:
///         Environment: production
///         Team: web
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Connection Function using the function ID. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/connectionFunction:ConnectionFunction example E1PA6795UKMFR9
/// ```
class ConnectionFunction extends pulumi.CustomResource {
  /// ARN of the connection function.
  late final pulumi.Output<String> connectionFunctionArn;

  /// Code for the connection function. Maximum length is 40960 characters.
  late final pulumi.Output<String> connectionFunctionCode;

  /// Configuration information for the connection function. See `connection_function_config` below.
  late final pulumi.Output<ConnectionFunctionConnectionFunctionConfig>
  connectionFunctionConfig;

  /// ETag of the connection function.
  late final pulumi.Output<String> etag;

  /// ETag of the function's LIVE stage. Will be empty if the function has not been published.
  late final pulumi.Output<String> liveStageEtag;

  /// Name for the connection function. Must be 1-64 characters and can contain letters, numbers, hyphens, and underscores. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Whether to publish the function to the `LIVE` stage after creation or update. Defaults to `false`.
  late final pulumi.Output<bool> publish;

  /// Status of the connection function.
  late final pulumi.Output<String> status;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ConnectionFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionFunction]. {@macro pulumi_cloudfront_connection_function_connection_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionFunction(
    String name, {
    ConnectionFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudfront/connectionFunction:ConnectionFunction',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.connectionFunctionArn = registerOutput<String>(
      'connectionFunctionArn',
    );
    this.connectionFunctionCode = registerOutput<String>(
      'connectionFunctionCode',
    );
    this.connectionFunctionConfig =
        registerOutput<ConnectionFunctionConnectionFunctionConfig>(
          'connectionFunctionConfig',
        );
    this.etag = registerOutput<String>('etag');
    this.liveStageEtag = registerOutput<String>('liveStageEtag');
    this.name = registerOutput<String>('name');
    this.publish = registerOutput<bool>('publish');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
