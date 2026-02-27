import 'package:pulumi/pulumi.dart';
import 'bucket_access_key_args.dart';

/// Manages a Lightsail bucket access key. Use this resource to create credentials that allow programmatic access to your Lightsail bucket via API requests.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.BucketAccessKey` using the `id` attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/bucketAccessKey:BucketAccessKey example example-bucket,AKIAIOSFODNN7EXAMPLE
/// ```
class BucketAccessKey extends CustomResource {
  /// Access key ID.
  late final Output<String> accessKeyId;

  /// Name of the bucket that the access key will belong to and grant access to.
  late final Output<String> bucketName;

  /// Date and time when the access key was created.
  late final Output<String> createdAt;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Secret access key used to sign requests. This attribute is not available for imported resources. Note that this will be written to the state file.
  late final Output<String> secretAccessKey;

  /// Status of the access key.
  late final Output<String> status;

  BucketAccessKey(
    String name, {
    BucketAccessKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/bucketAccessKey:BucketAccessKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessKeyId = registerOutput<String>('accessKeyId');
    this.bucketName = registerOutput<String>('bucketName');
    this.createdAt = registerOutput<String>('createdAt');
    this.region = registerOutput<String>('region');
    this.secretAccessKey = registerOutput<String>('secretAccessKey');
    this.status = registerOutput<String>('status');
  }
}
