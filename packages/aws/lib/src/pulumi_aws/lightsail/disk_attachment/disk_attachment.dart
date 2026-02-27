import 'package:pulumi/pulumi.dart';
import 'disk_attachment_args.dart';

/// Manages a Lightsail disk attachment. Use this resource to attach additional storage disks to your Lightsail instances for expanded storage capacity.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.Disk_attachment` using the id attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/disk_attachment:Disk_attachment example example-disk,example-instance
/// ```
class DiskAttachment extends CustomResource {
  /// Name of the Lightsail disk.
  late final Output<String> diskName;

  /// Disk path to expose to the instance.
  late final Output<String> diskPath;

  /// Name of the Lightsail instance to attach to.
  late final Output<String> instanceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DiskAttachment(
    String name, {
    DiskAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/disk_attachment:Disk_attachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.diskName = registerOutput<String>('diskName');
    this.diskPath = registerOutput<String>('diskPath');
    this.instanceName = registerOutput<String>('instanceName');
    this.region = registerOutput<String>('region');
  }
}
