import 'package:pulumi/pulumi.dart';
import '../key_value_store_timeouts/key_value_store_timeouts.dart';
import 'key_value_store_args.dart';

/// Resource for managing an AWS CloudFront Key Value Store.
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.KeyValueStore("example",
/// name="ExampleKeyValueStore",
/// comment="This is an example key value store")
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
/// _, err := cloudfront.NewKeyValueStore(ctx, "example", &cloudfront.KeyValueStoreArgs{
/// Name:    pulumi.String("ExampleKeyValueStore"),
/// Comment: pulumi.String("This is an example key value store"),
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
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> (String) Name of the CloudFront Key Value Store.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import CloudFront Key Value Store using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/keyValueStore:KeyValueStore example example_store
/// ```
class KeyValueStore extends CustomResource {
  /// Amazon Resource Name (ARN) identifying your CloudFront KeyValueStore.
  late final Output<String> arn;

  /// Comment.
  late final Output<String?> comment;

  /// ETag hash of the KeyValueStore.
  late final Output<String> etag;
  late final Output<String> lastModifiedTime;

  /// Unique name for your CloudFront KeyValueStore.
  ///
  /// The following arguments are optional:
  late final Output<String> name;
  late final Output<KeyValueStoreTimeouts?> timeouts;

  KeyValueStore(
    String name, {
    KeyValueStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyValueStore:KeyValueStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.comment = registerOutput<String?>('comment');
    this.etag = registerOutput<String>('etag');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.timeouts = registerOutput<KeyValueStoreTimeouts?>('timeouts');
  }
}
