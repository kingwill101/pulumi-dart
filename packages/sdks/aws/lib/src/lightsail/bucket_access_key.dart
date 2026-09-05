import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_access_key_args.dart';
import 'bucket_access_key_state.dart';

/// Manages a Lightsail bucket access key. Use this resource to create credentials that allow programmatic access to your Lightsail bucket via API requests.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Bucket("example", {
///     name: "example-bucket",
///     bundleId: "small_1_0",
/// });
/// const exampleBucketAccessKey = new aws.lightsail.BucketAccessKey("example", {bucketName: example.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Bucket("example",
///     name="example-bucket",
///     bundle_id="small_1_0")
/// example_bucket_access_key = aws.lightsail.BucketAccessKey("example", bucket_name=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LightSail.Bucket("example", new()
///     {
///         Name = "example-bucket",
///         BundleId = "small_1_0",
///     });
///
///     var exampleBucketAccessKey = new Aws.LightSail.BucketAccessKey("example", new()
///     {
///         BucketName = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lightsail.NewBucket(ctx, "example", &lightsail.BucketArgs{
/// 			Name:     pulumi.String("example-bucket"),
/// 			BundleId: pulumi.String("small_1_0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lightsail.NewBucketAccessKey(ctx, "example", &lightsail.BucketAccessKeyArgs{
/// 			BucketName: example.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_lightsail_bucket" "example" {
///   name      = "example-bucket"
///   bundle_id = "small_1_0"
/// }
/// resource "aws_lightsail_bucketaccesskey" "example" {
///   bucket_name = aws_lightsail_bucket.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lightsail.Bucket;
/// import com.pulumi.aws.lightsail.BucketArgs;
/// import com.pulumi.aws.lightsail.BucketAccessKey;
/// import com.pulumi.aws.lightsail.BucketAccessKeyArgs;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .name("example-bucket")
///             .bundleId("small_1_0")
///             .build());
///
///         var exampleBucketAccessKey = new BucketAccessKey("exampleBucketAccessKey", BucketAccessKeyArgs.builder()
///             .bucketName(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:Bucket
///     properties:
///       name: example-bucket
///       bundleId: small_1_0
///   exampleBucketAccessKey:
///     type: aws:lightsail:BucketAccessKey
///     name: example
///     properties:
///       bucketName: ${example.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.BucketAccessKey` using the `id` attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/bucketAccessKey:BucketAccessKey example example-bucket,AKIAIOSFODNN7EXAMPLE
/// ```
class BucketAccessKey extends pulumi.CustomResource {
  /// Access key ID.
  late final pulumi.Output<String> accessKeyId;
  /// Name of the bucket that the access key will belong to and grant access to.
  late final pulumi.Output<String> bucketName;
  /// Date and time when the access key was created.
  late final pulumi.Output<String> createdAt;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Secret access key used to sign requests. This attribute is not available for imported resources. Note that this will be written to the state file.
  late final pulumi.Output<String> secretAccessKey;
  /// Status of the access key.
  late final pulumi.Output<String> status;

  /// Creates a new [BucketAccessKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketAccessKey]. {@macro pulumi_lightsail_bucket_access_key_bucket_access_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketAccessKey(
    String name, {
    BucketAccessKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/bucketAccessKey:BucketAccessKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['secretAccessKey'],
        ) {
    accessKeyId = registerOutput<String>('accessKeyId');
    bucketName = registerOutput<String>('bucketName');
    createdAt = registerOutput<String>('createdAt');
    region = registerOutput<String>('region');
    secretAccessKey = registerOutput<String>('secretAccessKey', isSecret: true);
    status = registerOutput<String>('status');
  }

  /// Gets an existing [BucketAccessKey] resource's state with the given [name] and [id].
  static BucketAccessKey get(
    String name,
    pulumi.Input<String> id, {
    BucketAccessKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketAccessKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketAccessKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/bucketAccessKey:BucketAccessKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessKeyId = registerOutput<String>('accessKeyId');
    bucketName = registerOutput<String>('bucketName');
    createdAt = registerOutput<String>('createdAt');
    region = registerOutput<String>('region');
    secretAccessKey = registerOutput<String>('secretAccessKey', isSecret: true);
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [BucketAccessKey] resource.
  BucketAccessKey.reference(String urn)
    : super(
        'aws:lightsail/bucketAccessKey:BucketAccessKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secretAccessKey'],
        isResourceReference: true,
      ) {
    accessKeyId = registerOutput<String>('accessKeyId');
    bucketName = registerOutput<String>('bucketName');
    createdAt = registerOutput<String>('createdAt');
    region = registerOutput<String>('region');
    secretAccessKey = registerOutput<String>('secretAccessKey', isSecret: true);
    status = registerOutput<String>('status');
  }
}
