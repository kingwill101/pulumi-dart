import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_args.dart';

/// Manages an AWS Storage Gateway cache.
///
/// > **NOTE:** The Storage Gateway API provides no method to remove a cache disk. Destroying this resource does not perform any Storage Gateway actions.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.Cache` using the gateway Amazon Resource Name (ARN) and local disk identifier separated with a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/cache:Cache example arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678:pci-0000:03:00.0-scsi-0:0:0:0
/// ```
class Cache extends pulumi.CustomResource {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  late final pulumi.Output<String> diskId;

  /// The Amazon Resource Name (ARN) of the gateway.
  late final pulumi.Output<String> gatewayArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  Cache(
    String name, {
    CacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/cache:Cache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.diskId = registerOutput<String>('diskId');
    this.gatewayArn = registerOutput<String>('gatewayArn');
    this.region = registerOutput<String>('region');
  }
}
