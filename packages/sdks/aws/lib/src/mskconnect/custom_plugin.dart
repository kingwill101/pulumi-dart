import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_plugin_args.dart';
import 'custom_plugin_location.dart';
import 'custom_plugin_state.dart';

/// Provides an Amazon MSK Connect Custom Plugin Resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
///     bucket: example.id,
///     key: "debezium.zip",
///     source: new pulumi.asset.FileAsset("debezium.zip"),
/// });
/// const exampleCustomPlugin = new aws.mskconnect.CustomPlugin("example", {
///     location: {
///         s3: {
///             bucketArn: example.arn,
///             fileKey: exampleBucketObjectv2.key,
///         },
///     },
///     name: "debezium-example",
///     contentType: "ZIP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
///     bucket=example.id,
///     key="debezium.zip",
///     source=pulumi.FileAsset("debezium.zip"))
/// example_custom_plugin = aws.mskconnect.CustomPlugin("example",
///     location={
///         "s3": {
///             "bucket_arn": example.arn,
///             "file_key": example_bucket_objectv2.key,
///         },
///     },
///     name="debezium-example",
///     content_type="ZIP")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
///     {
///         Bucket = example.Id,
///         Key = "debezium.zip",
///         Source = new FileAsset("debezium.zip"),
///     });
///
///     var exampleCustomPlugin = new Aws.MskConnect.CustomPlugin("example", new()
///     {
///         Location = new Aws.MskConnect.Inputs.CustomPluginLocationArgs
///         {
///             S3 = new Aws.MskConnect.Inputs.CustomPluginLocationS3Args
///             {
///                 BucketArn = example.Arn,
///                 FileKey = exampleBucketObjectv2.Key,
///             },
///         },
///         Name = "debezium-example",
///         ContentType = "ZIP",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mskconnect"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketObjectv2, err := s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Key:    pulumi.String("debezium.zip"),
/// 			Source: pulumi.NewFileAsset("debezium.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mskconnect.NewCustomPlugin(ctx, "example", &mskconnect.CustomPluginArgs{
/// 			Location: &mskconnect.CustomPluginLocationArgs{
/// 				S3: &mskconnect.CustomPluginLocationS3Args{
/// 					BucketArn: example.Arn,
/// 					FileKey:   exampleBucketObjectv2.Key,
/// 				},
/// 			},
/// 			Name:        pulumi.String("debezium-example"),
/// 			ContentType: pulumi.String("ZIP"),
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
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
/// }
/// resource "aws_s3_bucketobjectv2" "example" {
///   bucket = aws_s3_bucket.example.id
///   key    = "debezium.zip"
///   source = fileAsset("debezium.zip")
/// }
/// resource "aws_mskconnect_customplugin" "example" {
///   location = {
///     s3 = {
///       bucket_arn = aws_s3_bucket.example.arn
///       file_key   = aws_s3_bucketobjectv2.example.key
///     }
///   }
///   name         = "debezium-example"
///   content_type = "ZIP"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.mskconnect.CustomPlugin;
/// import com.pulumi.aws.mskconnect.CustomPluginArgs;
/// import com.pulumi.aws.mskconnect.inputs.CustomPluginLocationArgs;
/// import com.pulumi.aws.mskconnect.inputs.CustomPluginLocationS3Args;
/// import com.pulumi.asset.FileAsset;
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
///             .bucket("example")
///             .build());
///
///         var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
///             .bucket(example.id())
///             .key("debezium.zip")
///             .source(new FileAsset("debezium.zip"))
///             .build());
///
///         var exampleCustomPlugin = new CustomPlugin("exampleCustomPlugin", CustomPluginArgs.builder()
///             .location(CustomPluginLocationArgs.builder()
///                 .s3(CustomPluginLocationS3Args.builder()
///                     .bucketArn(example.arn())
///                     .fileKey(exampleBucketObjectv2.key())
///                     .build())
///                 .build())
///             .name("debezium-example")
///             .contentType("ZIP")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example
///   exampleBucketObjectv2:
///     type: aws:s3:BucketObjectv2
///     name: example
///     properties:
///       bucket: ${example.id}
///       key: debezium.zip
///       source:
///         fn::fileAsset: debezium.zip
///   exampleCustomPlugin:
///     type: aws:mskconnect:CustomPlugin
///     name: example
///     properties:
///       location:
///         s3:
///           bucketArn: ${example.arn}
///           fileKey: ${exampleBucketObjectv2.key}
///       name: debezium-example
///       contentType: ZIP
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK Connect Custom Plugin using the plugin's `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:mskconnect/customPlugin:CustomPlugin example 'arn:aws:kafkaconnect:eu-central-1:123456789012:custom-plugin/debezium-example/abcdefgh-1234-5678-9abc-defghijklmno-4'
/// ```
class CustomPlugin extends pulumi.CustomResource {
  /// the ARN of the custom plugin.
  late final pulumi.Output<String> arn;
  /// The type of the plugin file. Allowed values are `ZIP` and `JAR`.
  late final pulumi.Output<String> contentType;
  /// A summary description of the custom plugin.
  late final pulumi.Output<String?> description;
  /// an ID of the latest successfully created revision of the custom plugin.
  late final pulumi.Output<int> latestRevision;
  /// Information about the location of a custom plugin. See `location` Block for details.
  late final pulumi.Output<CustomPluginLocation> location;
  /// The name of the custom plugin..
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// the state of the custom plugin.
  late final pulumi.Output<String> state;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [CustomPlugin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomPlugin]. {@macro pulumi_mskconnect_custom_plugin_custom_plugin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomPlugin(
    String name, {
    CustomPluginArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mskconnect/customPlugin:CustomPlugin',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    contentType = registerOutput<String>('contentType');
    description = registerOutput<String?>('description');
    latestRevision = registerOutput<int>('latestRevision');
    location = registerOutput<CustomPluginLocation>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomPluginLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [CustomPlugin] resource's state with the given [name] and [id].
  static CustomPlugin get(
    String name,
    pulumi.Input<String> id, {
    CustomPluginState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomPlugin._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomPlugin._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mskconnect/customPlugin:CustomPlugin',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    contentType = registerOutput<String>('contentType');
    description = registerOutput<String?>('description');
    latestRevision = registerOutput<int>('latestRevision');
    location = registerOutput<CustomPluginLocation>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomPluginLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [CustomPlugin] resource.
  CustomPlugin.reference(String urn)
    : super(
        'aws:mskconnect/customPlugin:CustomPlugin',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    contentType = registerOutput<String>('contentType');
    description = registerOutput<String?>('description');
    latestRevision = registerOutput<int>('latestRevision');
    location = registerOutput<CustomPluginLocation>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomPluginLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
