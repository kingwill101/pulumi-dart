import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_function_args.dart';
import 'connection_function_connection_function_config.dart';
import 'connection_function_state.dart';

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
///     connectionFunctionConfig: {
///         runtime: "cloudfront-js-2.0",
///         comment: "Example connection function",
///     },
///     name: "example-connection-function",
///     connectionFunctionCode: "function handler(event) { return event.request; }",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ConnectionFunction("example",
///     connection_function_config={
///         "runtime": "cloudfront-js-2.0",
///         "comment": "Example connection function",
///     },
///     name="example-connection-function",
///     connection_function_code="function handler(event) { return event.request; }")
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
///         ConnectionFunctionConfig = new Aws.CloudFront.Inputs.ConnectionFunctionConnectionFunctionConfigArgs
///         {
///             Runtime = "cloudfront-js-2.0",
///             Comment = "Example connection function",
///         },
///         Name = "example-connection-function",
///         ConnectionFunctionCode = "function handler(event) { return event.request; }",
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
/// 			ConnectionFunctionConfig: &cloudfront.ConnectionFunctionConnectionFunctionConfigArgs{
/// 				Runtime: pulumi.String("cloudfront-js-2.0"),
/// 				Comment: pulumi.String("Example connection function"),
/// 			},
/// 			Name:                   pulumi.String("example-connection-function"),
/// 			ConnectionFunctionCode: pulumi.String("function handler(event) { return event.request; }"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudfront_connectionfunction" "example" {
///   connection_function_config = {
///     runtime = "cloudfront-js-2.0"
///     comment = "Example connection function"
///   }
///   name                     = "example-connection-function"
///   connection_function_code = "function handler(event) { return event.request; }"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .connectionFunctionConfig(ConnectionFunctionConnectionFunctionConfigArgs.builder()
///                 .runtime("cloudfront-js-2.0")
///                 .comment("Example connection function")
///                 .build())
///             .name("example-connection-function")
///             .connectionFunctionCode("function handler(event) { return event.request; }")
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
///       connectionFunctionConfig:
///         runtime: cloudfront-js-2.0
///         comment: Example connection function
///       name: example-connection-function
///       connectionFunctionCode: function handler(event) { return event.request; }
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
///     connectionFunctionConfig: {
///         runtime: "cloudfront-js-2.0",
///         comment: "Example connection function",
///     },
///     name: "example-connection-function",
///     connectionFunctionCode: "function handler(event) { return event.request; }",
///     publish: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ConnectionFunction("example",
///     connection_function_config={
///         "runtime": "cloudfront-js-2.0",
///         "comment": "Example connection function",
///     },
///     name="example-connection-function",
///     connection_function_code="function handler(event) { return event.request; }",
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
///         ConnectionFunctionConfig = new Aws.CloudFront.Inputs.ConnectionFunctionConnectionFunctionConfigArgs
///         {
///             Runtime = "cloudfront-js-2.0",
///             Comment = "Example connection function",
///         },
///         Name = "example-connection-function",
///         ConnectionFunctionCode = "function handler(event) { return event.request; }",
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
/// 			ConnectionFunctionConfig: &cloudfront.ConnectionFunctionConnectionFunctionConfigArgs{
/// 				Runtime: pulumi.String("cloudfront-js-2.0"),
/// 				Comment: pulumi.String("Example connection function"),
/// 			},
/// 			Name:                   pulumi.String("example-connection-function"),
/// 			ConnectionFunctionCode: pulumi.String("function handler(event) { return event.request; }"),
/// 			Publish:                pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudfront_connectionfunction" "example" {
///   connection_function_config = {
///     runtime = "cloudfront-js-2.0"
///     comment = "Example connection function"
///   }
///   name                     = "example-connection-function"
///   connection_function_code = "function handler(event) { return event.request; }"
///   publish                  = true
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .connectionFunctionConfig(ConnectionFunctionConnectionFunctionConfigArgs.builder()
///                 .runtime("cloudfront-js-2.0")
///                 .comment("Example connection function")
///                 .build())
///             .name("example-connection-function")
///             .connectionFunctionCode("function handler(event) { return event.request; }")
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
///       connectionFunctionConfig:
///         runtime: cloudfront-js-2.0
///         comment: Example connection function
///       name: example-connection-function
///       connectionFunctionCode: function handler(event) { return event.request; }
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
///     connectionFunctionConfig: {
///         keyValueStoreAssociation: {
///             keyValueStoreArn: example.arn,
///         },
///         runtime: "cloudfront-js-2.0",
///         comment: "Example connection function",
///     },
///     name: "example-connection-function",
///     connectionFunctionCode: "function handler(event) { return event.request; }",
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
///     connection_function_config={
///         "key_value_store_association": {
///             "key_value_store_arn": example.arn,
///         },
///         "runtime": "cloudfront-js-2.0",
///         "comment": "Example connection function",
///     },
///     name="example-connection-function",
///     connection_function_code="function handler(event) { return event.request; }")
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
///         ConnectionFunctionConfig = new Aws.CloudFront.Inputs.ConnectionFunctionConnectionFunctionConfigArgs
///         {
///             KeyValueStoreAssociation = new Aws.CloudFront.Inputs.ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociationArgs
///             {
///                 KeyValueStoreArn = example.Arn,
///             },
///             Runtime = "cloudfront-js-2.0",
///             Comment = "Example connection function",
///         },
///         Name = "example-connection-function",
///         ConnectionFunctionCode = "function handler(event) { return event.request; }",
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
/// 			ConnectionFunctionConfig: &cloudfront.ConnectionFunctionConnectionFunctionConfigArgs{
/// 				KeyValueStoreAssociation: &cloudfront.ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociationArgs{
/// 					KeyValueStoreArn: example.Arn,
/// 				},
/// 				Runtime: pulumi.String("cloudfront-js-2.0"),
/// 				Comment: pulumi.String("Example connection function"),
/// 			},
/// 			Name:                   pulumi.String("example-connection-function"),
/// 			ConnectionFunctionCode: pulumi.String("function handler(event) { return event.request; }"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudfront_keyvaluestore" "example" {
///   name    = "example-kvs"
///   comment = "Example key value store"
/// }
/// resource "aws_cloudfront_connectionfunction" "example" {
///   connection_function_config = {
///     key_value_store_association = {
///       key_value_store_arn = aws_cloudfront_keyvaluestore.example.arn
///     }
///     runtime = "cloudfront-js-2.0"
///     comment = "Example connection function"
///   }
///   name                     = "example-connection-function"
///   connection_function_code = "function handler(event) { return event.request; }"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .connectionFunctionConfig(ConnectionFunctionConnectionFunctionConfigArgs.builder()
///                 .keyValueStoreAssociation(ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociationArgs.builder()
///                     .keyValueStoreArn(example.arn())
///                     .build())
///                 .runtime("cloudfront-js-2.0")
///                 .comment("Example connection function")
///                 .build())
///             .name("example-connection-function")
///             .connectionFunctionCode("function handler(event) { return event.request; }")
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
///       connectionFunctionConfig:
///         keyValueStoreAssociation:
///           keyValueStoreArn: ${example.arn}
///         runtime: cloudfront-js-2.0
///         comment: Example connection function
///       name: example-connection-function
///       connectionFunctionCode: function handler(event) { return event.request; }
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
///     connectionFunctionConfig: {
///         runtime: "cloudfront-js-2.0",
///         comment: "Example connection function",
///     },
///     name: "example-connection-function",
///     connectionFunctionCode: "function handler(event) { return event.request; }",
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
///     connection_function_config={
///         "runtime": "cloudfront-js-2.0",
///         "comment": "Example connection function",
///     },
///     name="example-connection-function",
///     connection_function_code="function handler(event) { return event.request; }",
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
///         ConnectionFunctionConfig = new Aws.CloudFront.Inputs.ConnectionFunctionConnectionFunctionConfigArgs
///         {
///             Runtime = "cloudfront-js-2.0",
///             Comment = "Example connection function",
///         },
///         Name = "example-connection-function",
///         ConnectionFunctionCode = "function handler(event) { return event.request; }",
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
/// 			ConnectionFunctionConfig: &cloudfront.ConnectionFunctionConnectionFunctionConfigArgs{
/// 				Runtime: pulumi.String("cloudfront-js-2.0"),
/// 				Comment: pulumi.String("Example connection function"),
/// 			},
/// 			Name:                   pulumi.String("example-connection-function"),
/// 			ConnectionFunctionCode: pulumi.String("function handler(event) { return event.request; }"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudfront_connectionfunction" "example" {
///   connection_function_config = {
///     runtime = "cloudfront-js-2.0"
///     comment = "Example connection function"
///   }
///   name                     = "example-connection-function"
///   connection_function_code = "function handler(event) { return event.request; }"
///   tags = {
///     "Environment" = "production"
///     "Team"        = "web"
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .connectionFunctionConfig(ConnectionFunctionConnectionFunctionConfigArgs.builder()
///                 .runtime("cloudfront-js-2.0")
///                 .comment("Example connection function")
///                 .build())
///             .name("example-connection-function")
///             .connectionFunctionCode("function handler(event) { return event.request; }")
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
///       connectionFunctionConfig:
///         runtime: cloudfront-js-2.0
///         comment: Example connection function
///       name: example-connection-function
///       connectionFunctionCode: function handler(event) { return event.request; }
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
  /// Configuration information for the connection function. See `connectionFunctionConfig` below.
  late final pulumi.Output<ConnectionFunctionConnectionFunctionConfig> connectionFunctionConfig;
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
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    connectionFunctionArn = registerOutput<String>('connectionFunctionArn');
    connectionFunctionCode = registerOutput<String>('connectionFunctionCode');
    connectionFunctionConfig = registerOutput<ConnectionFunctionConnectionFunctionConfig>('connectionFunctionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionFunctionConnectionFunctionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    liveStageEtag = registerOutput<String>('liveStageEtag');
    this.name = registerOutput<String>('name');
    publish = registerOutput<bool>('publish');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ConnectionFunction] resource's state with the given [name] and [id].
  static ConnectionFunction get(
    String name,
    pulumi.Input<String> id, {
    ConnectionFunctionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConnectionFunction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConnectionFunction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/connectionFunction:ConnectionFunction',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionFunctionArn = registerOutput<String>('connectionFunctionArn');
    connectionFunctionCode = registerOutput<String>('connectionFunctionCode');
    connectionFunctionConfig = registerOutput<ConnectionFunctionConnectionFunctionConfig>('connectionFunctionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionFunctionConnectionFunctionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    liveStageEtag = registerOutput<String>('liveStageEtag');
    this.name = registerOutput<String>('name');
    publish = registerOutput<bool>('publish');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ConnectionFunction] resource.
  ConnectionFunction.reference(String urn)
    : super(
        'aws:cloudfront/connectionFunction:ConnectionFunction',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    connectionFunctionArn = registerOutput<String>('connectionFunctionArn');
    connectionFunctionCode = registerOutput<String>('connectionFunctionCode');
    connectionFunctionConfig = registerOutput<ConnectionFunctionConnectionFunctionConfig>('connectionFunctionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionFunctionConnectionFunctionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    liveStageEtag = registerOutput<String>('liveStageEtag');
    this.name = registerOutput<String>('name');
    publish = registerOutput<bool>('publish');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
