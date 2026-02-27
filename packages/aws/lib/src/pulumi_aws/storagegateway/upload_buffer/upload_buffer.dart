import 'package:pulumi/pulumi.dart' as pulumi;
import 'upload_buffer_args.dart';

/// Manages an AWS Storage Gateway upload buffer.
///
/// > **NOTE:** The Storage Gateway API provides no method to remove an upload buffer disk. Destroying this resource does not perform any Storage Gateway actions.
///
/// ## Example Usage
///
/// ### Cached and VTL Gateway Type
///
///
///
/// ### Stored Gateway Type
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.UploadBuffer` using the gateway Amazon Resource Name (ARN) and local disk identifier separated with a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/uploadBuffer:UploadBuffer example arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678:pci-0000:03:00.0-scsi-0:0:0:0
/// ```
class UploadBuffer extends pulumi.CustomResource {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  late final pulumi.Output<String> diskId;

  /// Local disk path. For example, `/dev/nvme1n1`.
  late final pulumi.Output<String> diskPath;

  /// The Amazon Resource Name (ARN) of the gateway.
  late final pulumi.Output<String> gatewayArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  UploadBuffer(
    String name, {
    UploadBufferArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/uploadBuffer:UploadBuffer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.diskId = registerOutput<String>('diskId');
    this.diskPath = registerOutput<String>('diskPath');
    this.gatewayArn = registerOutput<String>('gatewayArn');
    this.region = registerOutput<String>('region');
  }
}
