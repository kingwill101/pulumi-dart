import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_args.dart';

/// Manages a Lightsail disk. Use this resource to create additional block storage that can be attached to Lightsail instances for extra storage capacity.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.Disk` using the name attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/disk:Disk example example-disk
/// ```
class Disk extends pulumi.CustomResource {
  /// ARN of the disk.
  late final pulumi.Output<String> arn;

  /// Availability Zone in which to create the disk.
  late final pulumi.Output<String> availabilityZone;

  /// Date and time when the disk was created.
  late final pulumi.Output<String> createdAt;

  /// Name of the disk. Must begin with an alphabetic character and contain only alphanumeric characters, underscores, hyphens, and dots.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Size of the disk in GB.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> sizeInGb;

  /// Support code for the disk. Include this code in your email to support when you have questions about a disk in Lightsail.
  late final pulumi.Output<String> supportCode;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Disk(
    String name, {
    DiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/disk:Disk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sizeInGb = registerOutput<int>('sizeInGb');
    this.supportCode = registerOutput<String>('supportCode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
