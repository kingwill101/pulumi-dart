import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_resource_access_args.dart';

/// Manages a Lightsail bucket resource access. Use this resource to grant a Lightsail resource (such as an instance) access to a specific bucket.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.BucketResourceAccess` using the `id` attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/bucketResourceAccess:BucketResourceAccess example example-bucket,example-instance
/// ```
class BucketResourceAccess extends pulumi.CustomResource {
  /// Name of the bucket to grant access to.
  late final pulumi.Output<String> bucketName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the resource to grant bucket access.
  late final pulumi.Output<String> resourceName;

  BucketResourceAccess(
    String name, {
    BucketResourceAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/bucketResourceAccess:BucketResourceAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucketName = registerOutput<String>('bucketName');
    this.region = registerOutput<String>('region');
    this.resourceName = registerOutput<String>('resourceName');
  }
}
