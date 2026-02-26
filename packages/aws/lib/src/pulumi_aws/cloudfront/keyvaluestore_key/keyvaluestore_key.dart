import 'package:pulumi/pulumi.dart';
import 'keyvaluestore_key_args.dart';

/// Resource for managing an AWS CloudFront KeyValueStore Key.
///
/// !> This resource manages individual key value pairs in a KeyValueStore. This can lead to high costs associated with accessing the CloudFront KeyValueStore API when performing terraform operations with many key value pairs defined. For large key value stores, consider the <span pulumi-lang-nodejs="`aws.cloudfront.KeyvaluestoreKeysExclusive`" pulumi-lang-dotnet="`aws.cloudfront.KeyvaluestoreKeysExclusive`" pulumi-lang-go="`cloudfront.KeyvaluestoreKeysExclusive`" pulumi-lang-python="`cloudfront.KeyvaluestoreKeysExclusive`" pulumi-lang-yaml="`aws.cloudfront.KeyvaluestoreKeysExclusive`" pulumi-lang-java="`aws.cloudfront.KeyvaluestoreKeysExclusive`">`aws.cloudfront.KeyvaluestoreKeysExclusive`</span> resource to minimize the number of API calls made to the CloudFront KeyValueStore API.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.KeyValueStore("example", {
/// name: "ExampleKeyValueStore",
/// comment: "This is an example key value store",
/// });
/// const exampleKeyvaluestoreKey = new aws.cloudfront.KeyvaluestoreKey("example", {
/// keyValueStoreArn: example.arn,
/// key: "Test Key",
/// value: "Test Value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.KeyValueStore("example",
/// name="ExampleKeyValueStore",
/// comment="This is an example key value store")
/// example_keyvaluestore_key = aws.cloudfront.KeyvaluestoreKey("example",
/// key_value_store_arn=example.arn,
/// key="Test Key",
/// value="Test Value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudFront.KeyValueStore("example", new()
/// {
/// Name = "ExampleKeyValueStore",
/// Comment = "This is an example key value store",
/// });
///
/// var exampleKeyvaluestoreKey = new Aws.CloudFront.KeyvaluestoreKey("example", new()
/// {
/// KeyValueStoreArn = example.Arn,
/// Key = "Test Key",
/// Value = "Test Value",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := cloudfront.NewKeyValueStore(ctx, "example", &cloudfront.KeyValueStoreArgs{
/// Name:    pulumi.String("ExampleKeyValueStore"),
/// Comment: pulumi.String("This is an example key value store"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudfront.NewKeyvaluestoreKey(ctx, "example", &cloudfront.KeyvaluestoreKeyArgs{
/// KeyValueStoreArn: example.Arn,
/// Key:              pulumi.String("Test Key"),
/// Value:            pulumi.String("Test Value"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new KeyValueStore("example", KeyValueStoreArgs.builder()
/// .name("ExampleKeyValueStore")
/// .comment("This is an example key value store")
/// .build());
///
/// var exampleKeyvaluestoreKey = new KeyvaluestoreKey("exampleKeyvaluestoreKey", KeyvaluestoreKeyArgs.builder()
/// .keyValueStoreArn(example.arn())
/// .key("Test Key")
/// .value("Test Value")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:KeyValueStore
/// properties:
/// name: ExampleKeyValueStore
/// comment: This is an example key value store
/// exampleKeyvaluestoreKey:
/// type: aws:cloudfront:KeyvaluestoreKey
/// name: example
/// properties:
/// keyValueStoreArn: ${example.arn}
/// key: Test Key
/// value: Test Value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`keyValueStoreArn`" pulumi-lang-dotnet="`KeyValueStoreArn`" pulumi-lang-go="`keyValueStoreArn`" pulumi-lang-python="`key_value_store_arn`" pulumi-lang-yaml="`keyValueStoreArn`" pulumi-lang-java="`keyValueStoreArn`">`key_value_store_arn`</span> (String) ARN of the CloudFront Key Value Store.
/// * <span pulumi-lang-nodejs="`key`" pulumi-lang-dotnet="`Key`" pulumi-lang-go="`key`" pulumi-lang-python="`key`" pulumi-lang-yaml="`key`" pulumi-lang-java="`key`">`key`</span> (String) Key name.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import CloudFront KeyValueStore Key using the <span pulumi-lang-nodejs="`keyValueStoreArn`" pulumi-lang-dotnet="`KeyValueStoreArn`" pulumi-lang-go="`keyValueStoreArn`" pulumi-lang-python="`key_value_store_arn`" pulumi-lang-yaml="`keyValueStoreArn`" pulumi-lang-java="`keyValueStoreArn`">`key_value_store_arn`</span> and 'key' separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/keyvaluestoreKey:KeyvaluestoreKey example arn:aws:cloudfront::111111111111:key-value-store/8562g61f-caba-2845-9d99-b97diwae5d3c,someKey
/// ```
class KeyvaluestoreKey extends CustomResource {
  /// Key to put.
  late final Output<String> key;

  /// Amazon Resource Name (ARN) of the Key Value Store.
  late final Output<String> keyValueStoreArn;

  /// Total size of the Key Value Store in bytes.
  late final Output<int> totalSizeInBytes;

  /// Value to put.
  late final Output<String> value;

  KeyvaluestoreKey(
    String name, {
    KeyvaluestoreKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyvaluestoreKey:KeyvaluestoreKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.key = registerOutput<String>('key');
    this.keyValueStoreArn = registerOutput<String>('keyValueStoreArn');
    this.totalSizeInBytes = registerOutput<int>('totalSizeInBytes');
    this.value = registerOutput<String>('value');
  }
}
