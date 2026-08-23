import 'package:pulumi/pulumi.dart' as pulumi;
import 'keyvaluestore_key_args.dart';
import 'keyvaluestore_key_state.dart';

/// Resource for managing an AWS CloudFront KeyValueStore Key.
///
/// &gt; This resource manages individual key value pairs in a KeyValueStore. This can lead to high costs associated with accessing the CloudFront KeyValueStore API when performing terraform operations with many key value pairs defined. For large key value stores, consider the `aws.cloudfront.KeyvaluestoreKeysExclusive` resource to minimize the number of API calls made to the CloudFront KeyValueStore API.
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
/// const exampleKeyvaluestoreKey = new aws.cloudfront.KeyvaluestoreKey("example", {
///     keyValueStoreArn: example.arn,
///     key: "Test Key",
///     value: "Test Value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.KeyValueStore("example",
///     name="ExampleKeyValueStore",
///     comment="This is an example key value store")
/// example_keyvaluestore_key = aws.cloudfront.KeyvaluestoreKey("example",
///     key_value_store_arn=example.arn,
///     key="Test Key",
///     value="Test Value")
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
///     var exampleKeyvaluestoreKey = new Aws.CloudFront.KeyvaluestoreKey("example", new()
///     {
///         KeyValueStoreArn = example.Arn,
///         Key = "Test Key",
///         Value = "Test Value",
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
/// 			Name:    pulumi.String("ExampleKeyValueStore"),
/// 			Comment: pulumi.String("This is an example key value store"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfront.NewKeyvaluestoreKey(ctx, "example", &cloudfront.KeyvaluestoreKeyArgs{
/// 			KeyValueStoreArn: example.Arn,
/// 			Key:              pulumi.String("Test Key"),
/// 			Value:            pulumi.String("Test Value"),
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
/// resource "aws_cloudfront_keyvaluestorekey" "example" {
///   key_value_store_arn = aws_cloudfront_keyvaluestore.example.arn
///   key                 = "Test Key"
///   value               = "Test Value"
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
/// import com.pulumi.aws.cloudfront.KeyvaluestoreKey;
/// import com.pulumi.aws.cloudfront.KeyvaluestoreKeyArgs;
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
///         var exampleKeyvaluestoreKey = new KeyvaluestoreKey("exampleKeyvaluestoreKey", KeyvaluestoreKeyArgs.builder()
///             .keyValueStoreArn(example.arn())
///             .key("Test Key")
///             .value("Test Value")
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
///   exampleKeyvaluestoreKey:
///     type: aws:cloudfront:KeyvaluestoreKey
///     name: example
///     properties:
///       keyValueStoreArn: ${example.arn}
///       key: Test Key
///       value: Test Value
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `keyValueStoreArn` (String) ARN of the CloudFront Key Value Store.
/// * `key` (String) Key name.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import CloudFront KeyValueStore Key using the `keyValueStoreArn` and 'key' separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/keyvaluestoreKey:KeyvaluestoreKey example arn:aws:cloudfront::111111111111:key-value-store/8562g61f-caba-2845-9d99-b97diwae5d3c,someKey
/// ```
class KeyvaluestoreKey extends pulumi.CustomResource {
  /// Key to put.
  late final pulumi.Output<String> key;
  /// Amazon Resource Name (ARN) of the Key Value Store.
  late final pulumi.Output<String> keyValueStoreArn;
  /// Total size of the Key Value Store in bytes.
  late final pulumi.Output<int> totalSizeInBytes;
  /// Value to put.
  late final pulumi.Output<String> value;

  /// Creates a new [KeyvaluestoreKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyvaluestoreKey]. {@macro pulumi_cloudfront_keyvaluestore_key_keyvaluestore_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyvaluestoreKey(
    String name, {
    KeyvaluestoreKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyvaluestoreKey:KeyvaluestoreKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    key = registerOutput<String>('key');
    keyValueStoreArn = registerOutput<String>('keyValueStoreArn');
    totalSizeInBytes = registerOutput<int>('totalSizeInBytes');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [KeyvaluestoreKey] resource's state with the given [name] and [id].
  static KeyvaluestoreKey get(
    String name,
    pulumi.Input<String> id, {
    KeyvaluestoreKeyState? state,
  }) {
    return KeyvaluestoreKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KeyvaluestoreKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyvaluestoreKey:KeyvaluestoreKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    key = registerOutput<String>('key');
    keyValueStoreArn = registerOutput<String>('keyValueStoreArn');
    totalSizeInBytes = registerOutput<int>('totalSizeInBytes');
    value = registerOutput<String>('value');
  }
}
