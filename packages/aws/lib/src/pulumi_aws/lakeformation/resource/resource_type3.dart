import 'package:pulumi/pulumi.dart';
import 'resource_args3.dart';

/// Registers a Lake Formation resource (e.g., S3 bucket) as managed by the Data Catalog. In other words, the S3 path is added to the data lake.
///
/// Choose a role that has read/write access to the chosen Amazon S3 path or use the service-linked role.
/// When you register the S3 path, the service-linked role and a new inline policy are created on your behalf.
/// Lake Formation adds the first path to the inline policy and attaches it to the service-linked role.
/// When you register subsequent paths, Lake Formation adds the path to the existing policy.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.s3.getBucket({
/// bucket: "an-example-bucket",
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
/// var example = Aws.S3.GetBucket.Invoke(new()
/// {
/// Bucket = "an-example-bucket",
/// });
///
/// var exampleResource = new Aws.LakeFormation.Resource("example", new()
/// {
/// Arn = example.Apply(getBucketResult => getBucketResult.Arn),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := s3.LookupBucket(ctx, &s3.LookupBucketArgs{
/// Bucket: "an-example-bucket",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = lakeformation.NewResource(ctx, "example", &lakeformation.ResourceArgs{
/// Arn: pulumi.String(example.Arn),
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetBucketArgs;
/// import com.pulumi.aws.lakeformation.Resource;
/// import com.pulumi.aws.lakeformation.ResourceArgs;
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
/// final var example = S3Functions.getBucket(GetBucketArgs.builder()
/// .bucket("an-example-bucket")
/// .build());
///
/// var exampleResource = new Resource("exampleResource", ResourceArgs.builder()
/// .arn(example.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleResource:
/// type: aws:lakeformation:Resource
/// name: example
/// properties:
/// arn: ${example.arn}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:s3:getBucket
/// arguments:
/// bucket: an-example-bucket
/// ```
/// <!--End PulumiCodeChooser -->
class ResourceType3 extends CustomResource {
  /// Amazon Resource Name (ARN) of the resource.
  ///
  /// The following arguments are optional:
  late final Output<String> arn;

  /// Flag to enable AWS LakeFormation hybrid access permission mode.
  late final Output<bool> hybridAccessEnabled;

  /// Date and time the resource was last modified in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final Output<String> lastModified;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Role that has read/write access to the resource.
  late final Output<String> roleArn;

  /// Designates an AWS Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog.
  late final Output<bool?> useServiceLinkedRole;

  /// Whether or not the resource is a federated resource. Set to true when registering AWS Glue connections for federated catalog functionality.
  late final Output<bool> withFederation;

  /// Boolean to grant the calling principal the permissions to perform all supported Lake Formation operations on the registered data location.
  ///
  /// > **NOTE:** AWS does not support registering an S3 location with an IAM role and subsequently updating the S3 location registration to a service-linked role.
  late final Output<bool> withPrivilegedAccess;

  ResourceType3(
    String name, {
    ResourceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/resource:Resource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.hybridAccessEnabled = registerOutput<bool>('hybridAccessEnabled');
    this.lastModified = registerOutput<String>('lastModified');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.useServiceLinkedRole = registerOutput<bool?>('useServiceLinkedRole');
    this.withFederation = registerOutput<bool>('withFederation');
    this.withPrivilegedAccess = registerOutput<bool>('withPrivilegedAccess');
  }
}
