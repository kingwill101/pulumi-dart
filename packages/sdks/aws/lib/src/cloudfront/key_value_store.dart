import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value_store_args.dart';
import 'key_value_store_state.dart';
import 'key_value_store_timeouts.dart';

/// Resource for managing an AWS CloudFront Key Value Store.
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
/// const example = new aws.cloudfront.KeyValueStore("example", {
///     name: "ExampleKeyValueStore",
///     comment: "This is an example key value store",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.KeyValueStore("example",
///     name="ExampleKeyValueStore",
///     comment="This is an example key value store")
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
///         Name = "ExampleKeyValueStore",
///         Comment = "This is an example key value store",
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
/// 		_, err := cloudfront.NewKeyValueStore(ctx, "example", &cloudfront.KeyValueStoreArgs{
/// 			Name:    pulumi.String("ExampleKeyValueStore"),
/// 			Comment: pulumi.String("This is an example key value store"),
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
///   name    = "ExampleKeyValueStore"
///   comment = "This is an example key value store"
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
///             .name("ExampleKeyValueStore")
///             .comment("This is an example key value store")
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
///       name: ExampleKeyValueStore
///       comment: This is an example key value store
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the CloudFront Key Value Store.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import CloudFront Key Value Store using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/keyValueStore:KeyValueStore example example_store
/// ```
class KeyValueStore extends pulumi.CustomResource {
  /// ARN identifying your CloudFront KeyValueStore.
  late final pulumi.Output<String> arn;
  /// Comment.
  late final pulumi.Output<String?> comment;
  /// ETag hash of the KeyValueStore.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> lastModifiedTime;
  /// Unique name for your CloudFront KeyValueStore.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<KeyValueStoreTimeouts?> timeouts;

  /// Creates a new [KeyValueStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyValueStore]. {@macro pulumi_cloudfront_key_value_store_key_value_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyValueStore(
    String name, {
    KeyValueStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyValueStore:KeyValueStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    comment = registerOutput<String?>('comment');
    etag = registerOutput<String>('etag');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<KeyValueStoreTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyValueStoreTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [KeyValueStore] resource's state with the given [name] and [id].
  static KeyValueStore get(
    String name,
    pulumi.Input<String> id, {
    KeyValueStoreState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return KeyValueStore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  KeyValueStore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyValueStore:KeyValueStore',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    comment = registerOutput<String?>('comment');
    etag = registerOutput<String>('etag');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<KeyValueStoreTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyValueStoreTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [KeyValueStore] resource.
  KeyValueStore.reference(String urn)
    : super(
        'aws:cloudfront/keyValueStore:KeyValueStore',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    comment = registerOutput<String?>('comment');
    etag = registerOutput<String>('etag');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<KeyValueStoreTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyValueStoreTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
