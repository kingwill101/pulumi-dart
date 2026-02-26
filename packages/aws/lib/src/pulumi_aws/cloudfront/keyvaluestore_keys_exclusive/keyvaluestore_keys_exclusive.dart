import 'package:pulumi/pulumi.dart';
import '../keyvaluestore_keys_exclusive_resource_key_value_pair/keyvaluestore_keys_exclusive_resource_key_value_pair.dart';
import 'keyvaluestore_keys_exclusive_args.dart';

/// Resource for maintaining exclusive management of resource key value pairs defined in an AWS CloudFront KeyValueStore.
///
/// !> This resource takes exclusive ownership over key value pairs defined in a KeyValueStore. This includes removal of key value pairs which are not explicitly configured. To prevent persistent drift, ensure any <span pulumi-lang-nodejs="`aws.cloudfront.KeyvaluestoreKey`" pulumi-lang-dotnet="`aws.cloudfront.KeyvaluestoreKey`" pulumi-lang-go="`cloudfront.KeyvaluestoreKey`" pulumi-lang-python="`cloudfront.KeyvaluestoreKey`" pulumi-lang-yaml="`aws.cloudfront.KeyvaluestoreKey`" pulumi-lang-java="`aws.cloudfront.KeyvaluestoreKey`">`aws.cloudfront.KeyvaluestoreKey`</span> resources managed alongside this resource have an equivalent <span pulumi-lang-nodejs="`resourceKeyValuePair`" pulumi-lang-dotnet="`ResourceKeyValuePair`" pulumi-lang-go="`resourceKeyValuePair`" pulumi-lang-python="`resource_key_value_pair`" pulumi-lang-yaml="`resourceKeyValuePair`" pulumi-lang-java="`resourceKeyValuePair`">`resource_key_value_pair`</span> argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured key value pairs. It __will not__ delete the configured key value pairs from the KeyValueStore.
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
/// const exampleKeyvaluestoreKeysExclusive = new aws.cloudfront.KeyvaluestoreKeysExclusive("example", {
/// keyValueStoreArn: example.arn,
/// resourceKeyValuePairs: [{
/// key: "Test Key",
/// value: "Test Value",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.KeyValueStore("example",
/// name="ExampleKeyValueStore",
/// comment="This is an example key value store")
/// example_keyvaluestore_keys_exclusive = aws.cloudfront.KeyvaluestoreKeysExclusive("example",
/// key_value_store_arn=example.arn,
/// resource_key_value_pairs=[{
/// "key": "Test Key",
/// "value": "Test Value",
/// }])
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
/// var exampleKeyvaluestoreKeysExclusive = new Aws.CloudFront.KeyvaluestoreKeysExclusive("example", new()
/// {
/// KeyValueStoreArn = example.Arn,
/// ResourceKeyValuePairs = new[]
/// {
/// new Aws.CloudFront.Inputs.KeyvaluestoreKeysExclusiveResourceKeyValuePairArgs
/// {
/// Key = "Test Key",
/// Value = "Test Value",
/// },
/// },
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
/// _, err = cloudfront.NewKeyvaluestoreKeysExclusive(ctx, "example", &cloudfront.KeyvaluestoreKeysExclusiveArgs{
/// KeyValueStoreArn: example.Arn,
/// ResourceKeyValuePairs: cloudfront.KeyvaluestoreKeysExclusiveResourceKeyValuePairArray{
/// &cloudfront.KeyvaluestoreKeysExclusiveResourceKeyValuePairArgs{
/// Key:   pulumi.String("Test Key"),
/// Value: pulumi.String("Test Value"),
/// },
/// },
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
/// import com.pulumi.aws.cloudfront.KeyvaluestoreKeysExclusive;
/// import com.pulumi.aws.cloudfront.KeyvaluestoreKeysExclusiveArgs;
/// import com.pulumi.aws.cloudfront.inputs.KeyvaluestoreKeysExclusiveResourceKeyValuePairArgs;
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
/// var exampleKeyvaluestoreKeysExclusive = new KeyvaluestoreKeysExclusive("exampleKeyvaluestoreKeysExclusive", KeyvaluestoreKeysExclusiveArgs.builder()
/// .keyValueStoreArn(example.arn())
/// .resourceKeyValuePairs(KeyvaluestoreKeysExclusiveResourceKeyValuePairArgs.builder()
/// .key("Test Key")
/// .value("Test Value")
/// .build())
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
/// exampleKeyvaluestoreKeysExclusive:
/// type: aws:cloudfront:KeyvaluestoreKeysExclusive
/// name: example
/// properties:
/// keyValueStoreArn: ${example.arn}
/// resourceKeyValuePairs:
/// - key: Test Key
/// value: Test Value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Disallow Key Value Pairs
///
/// To automatically remove any configured key value pairs, omit a <span pulumi-lang-nodejs="`resourceKeyValuePair`" pulumi-lang-dotnet="`ResourceKeyValuePair`" pulumi-lang-go="`resourceKeyValuePair`" pulumi-lang-python="`resource_key_value_pair`" pulumi-lang-yaml="`resourceKeyValuePair`" pulumi-lang-java="`resourceKeyValuePair`">`resource_key_value_pair`</span> block.
///
/// > This will not __prevent__ key value pairs from being defined in a KeyValueStore via Terraform (or any other interface). This resource enables bringing key value pairs into a configured state, however, this reconciliation happens only when <span pulumi-lang-nodejs="`apply`" pulumi-lang-dotnet="`Apply`" pulumi-lang-go="`apply`" pulumi-lang-python="`apply`" pulumi-lang-yaml="`apply`" pulumi-lang-java="`apply`">`apply`</span> is proactively run.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.KeyvaluestoreKeysExclusive("example", {keyValueStoreArn: exampleAwsCloudfrontKeyValueStore.arn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.KeyvaluestoreKeysExclusive("example", key_value_store_arn=example_aws_cloudfront_key_value_store["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudFront.KeyvaluestoreKeysExclusive("example", new()
/// {
/// KeyValueStoreArn = exampleAwsCloudfrontKeyValueStore.Arn,
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
/// _, err := cloudfront.NewKeyvaluestoreKeysExclusive(ctx, "example", &cloudfront.KeyvaluestoreKeysExclusiveArgs{
/// KeyValueStoreArn: pulumi.Any(exampleAwsCloudfrontKeyValueStore.Arn),
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
/// import com.pulumi.aws.cloudfront.KeyvaluestoreKeysExclusive;
/// import com.pulumi.aws.cloudfront.KeyvaluestoreKeysExclusiveArgs;
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
/// var example = new KeyvaluestoreKeysExclusive("example", KeyvaluestoreKeysExclusiveArgs.builder()
/// .keyValueStoreArn(exampleAwsCloudfrontKeyValueStore.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:KeyvaluestoreKeysExclusive
/// properties:
/// keyValueStoreArn: ${exampleAwsCloudfrontKeyValueStore.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AWS CloudFront KeyValueStore Key Value Pairs using the <span pulumi-lang-nodejs="`keyValueStoreArn`" pulumi-lang-dotnet="`KeyValueStoreArn`" pulumi-lang-go="`keyValueStoreArn`" pulumi-lang-python="`key_value_store_arn`" pulumi-lang-yaml="`keyValueStoreArn`" pulumi-lang-java="`keyValueStoreArn`">`key_value_store_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/keyvaluestoreKeysExclusive:KeyvaluestoreKeysExclusive example arn:aws:cloudfront::111111111111:key-value-store/8562g61f-caba-2845-9d99-b97diwae5d3c
/// ```
class KeyvaluestoreKeysExclusive extends CustomResource {
  /// Amazon Resource Name (ARN) of the Key Value Store.
  ///
  /// The following arguments are optional:
  late final Output<String> keyValueStoreArn;

  /// Maximum resource key values pairs that will update in a single API request. AWS has a default quota of 50 keys or a 3 MB payload, whichever is reached first. Defaults to <span pulumi-lang-nodejs="`50`" pulumi-lang-dotnet="`50`" pulumi-lang-go="`50`" pulumi-lang-python="`50`" pulumi-lang-yaml="`50`" pulumi-lang-java="`50`">`50`</span>.
  late final Output<int> maxBatchSize;

  /// A list of all resource key value pairs associated with the KeyValueStore.
  /// See <span pulumi-lang-nodejs="`resourceKeyValuePair`" pulumi-lang-dotnet="`ResourceKeyValuePair`" pulumi-lang-go="`resourceKeyValuePair`" pulumi-lang-python="`resource_key_value_pair`" pulumi-lang-yaml="`resourceKeyValuePair`" pulumi-lang-java="`resourceKeyValuePair`">`resource_key_value_pair`</span> below.
  late final Output<List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>?>
      resourceKeyValuePairs;

  /// Total size of the Key Value Store in bytes.
  late final Output<int> totalSizeInBytes;

  KeyvaluestoreKeysExclusive(
    String name, {
    KeyvaluestoreKeysExclusiveArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyvaluestoreKeysExclusive:KeyvaluestoreKeysExclusive',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.keyValueStoreArn = registerOutput<String>('keyValueStoreArn');
    this.maxBatchSize = registerOutput<int>('maxBatchSize');
    this.resourceKeyValuePairs =
        registerOutput<List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>?>(
            'resourceKeyValuePairs');
    this.totalSizeInBytes = registerOutput<int>('totalSizeInBytes');
  }
}
