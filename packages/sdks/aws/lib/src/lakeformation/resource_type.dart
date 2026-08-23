import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';
import 'resource_state.dart';

/// Registers a Lake Formation resource (e.g., S3 bucket) as managed by the Data Catalog. In other words, the S3 path is added to the data lake.
///
/// Choose a role that has read/write access to the chosen Amazon S3 path or use the service-linked role.
/// When you register the S3 path, the service-linked role and a new inline policy are created on your behalf.
/// Lake Formation adds the first path to the inline policy and attaches it to the service-linked role.
/// When you register subsequent paths, Lake Formation adds the path to the existing policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.s3.getBucket({
///     bucket: "an-example-bucket",
/// });
/// const exampleResource = new aws.lakeformation.Resource("example", {arn: example.then(example => example.arn)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.get_bucket(bucket="an-example-bucket")
/// example_resource = aws.lakeformation.Resource("example", arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.S3.GetBucket.Invoke(new()
///     {
///         Bucket = "an-example-bucket",
///     });
///
///     var exampleResource = new Aws.LakeFormation.Resource("example", new()
///     {
///         Arn = example.Apply(getBucketResult => getBucketResult.Arn),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.LookupBucket(ctx, &s3.LookupBucketArgs{
/// 			Bucket: "an-example-bucket",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lakeformation.NewResource(ctx, "example", &lakeformation.ResourceArgs{
/// 			Arn: pulumi.String(example.Arn),
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
/// data "aws_s3_getbucket" "example" {
///   bucket = "an-example-bucket"
/// }
///
/// resource "aws_lakeformation_resource" "example" {
///   arn = data.aws_s3_getbucket.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetBucketArgs;
/// import com.pulumi.aws.lakeformation.Resource;
/// import com.pulumi.aws.lakeformation.ResourceArgs;
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
///         final var example = S3Functions.getBucket(GetBucketArgs.builder()
///             .bucket("an-example-bucket")
///             .build());
///
///         var exampleResource = new Resource("exampleResource", ResourceArgs.builder()
///             .arn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResource:
///     type: aws:lakeformation:Resource
///     name: example
///     properties:
///       arn: ${example.arn}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:s3:getBucket
///       arguments:
///         bucket: an-example-bucket
/// ```
class ResourceType extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> arn;
  /// Flag to enable AWS LakeFormation hybrid access permission mode.
  late final pulumi.Output<bool> hybridAccessEnabled;
  /// Date and time the resource was last modified in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String> lastModified;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Role that has read/write access to the resource.
  late final pulumi.Output<String> roleArn;
  /// Designates an AWS Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog.
  late final pulumi.Output<bool?> useServiceLinkedRole;
  /// Whether or not the resource is a federated resource. Set to true when registering AWS Glue connections for federated catalog functionality.
  late final pulumi.Output<bool> withFederation;
  /// Boolean to grant the calling principal the permissions to perform all supported Lake Formation operations on the registered data location.
  ///
  /// &gt; **NOTE:** AWS does not support registering an S3 location with an IAM role and subsequently updating the S3 location registration to a service-linked role.
  late final pulumi.Output<bool> withPrivilegedAccess;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_lakeformation_resource_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/resource:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    hybridAccessEnabled = registerOutput<bool>('hybridAccessEnabled');
    lastModified = registerOutput<String>('lastModified');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    useServiceLinkedRole = registerOutput<bool?>('useServiceLinkedRole');
    withFederation = registerOutput<bool>('withFederation');
    withPrivilegedAccess = registerOutput<bool>('withPrivilegedAccess');
  }

  /// Gets an existing [ResourceType] resource's state with the given [name] and [id].
  static ResourceType get(
    String name,
    pulumi.Input<String> id, {
    ResourceState? state,
  }) {
    return ResourceType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/resource:Resource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    hybridAccessEnabled = registerOutput<bool>('hybridAccessEnabled');
    lastModified = registerOutput<String>('lastModified');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    useServiceLinkedRole = registerOutput<bool?>('useServiceLinkedRole');
    withFederation = registerOutput<bool>('withFederation');
    withPrivilegedAccess = registerOutput<bool>('withPrivilegedAccess');
  }
}
