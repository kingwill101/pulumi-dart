import 'package:pulumi/pulumi.dart' as pulumi;
import '../ami_ebs_block_device/ami_ebs_block_device.dart';
import '../ami_ephemeral_block_device/ami_ephemeral_block_device.dart';
import 'ami_args.dart';

/// The AMI resource allows the creation and management of a completely-custom
/// *Amazon Machine Image* (AMI).
///
/// If you just want to duplicate an existing AMI, possibly copying it to another
/// region, it's better to use `aws.ec2.AmiCopy` instead.
///
/// If you just want to share an existing AMI with another AWS account,
/// it's better to use `aws.ec2.AmiLaunchPermission` instead.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.Ami` using the ID of the AMI. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/ami:Ami example ami-12345678
/// ```
class Ami extends pulumi.CustomResource {
  /// Machine architecture for created instances. Defaults to `x86_64`.
  late final pulumi.Output<String?> architecture;

  /// ARN of the AMI.
  late final pulumi.Output<String> arn;

  /// Boot mode of the AMI. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the Amazon Elastic Compute Cloud User Guide.
  late final pulumi.Output<String?> bootMode;

  /// Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final pulumi.Output<String?> deprecationTime;

  /// Longer, human-readable description for the AMI.
  late final pulumi.Output<String?> description;

  /// Nested block describing an EBS block device that should be
  /// attached to created instances. The structure of this block is described below.
  late final pulumi.Output<List<AmiEbsBlockDevice>> ebsBlockDevices;

  /// Whether enhanced networking with ENA is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> enaSupport;

  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  late final pulumi.Output<List<AmiEphemeralBlockDevice>> ephemeralBlockDevices;

  /// Hypervisor type of the image.
  late final pulumi.Output<String> hypervisor;
  late final pulumi.Output<String> imageLocation;

  /// AWS account alias (for example, amazon, self) or the AWS account ID of the AMI owner.
  late final pulumi.Output<String> imageOwnerAlias;

  /// Type of image.
  late final pulumi.Output<String> imageType;

  /// If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to `v2.0`. For more information, see [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration).
  late final pulumi.Output<String?> imdsSupport;
  late final pulumi.Output<String?> kernelId;

  /// Date and time, in ISO 8601 date-time format , when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported. For more information, see the following [AWS document](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-last-launched-time.html).
  late final pulumi.Output<String> lastLaunchedTime;
  late final pulumi.Output<bool> manageEbsSnapshots;

  /// Region-unique name for the AMI.
  late final pulumi.Output<String> name;

  /// AWS account ID of the image owner.
  late final pulumi.Output<String> ownerId;

  /// This value is set to windows for Windows AMIs; otherwise, it is blank.
  late final pulumi.Output<String> platform;

  /// Platform details associated with the billing code of the AMI.
  late final pulumi.Output<String> platformDetails;

  /// Whether the image has public launch permissions.
  late final pulumi.Output<bool> public;
  late final pulumi.Output<String?> ramdiskId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the root device (for example, `/dev/sda1`, or `/dev/xvda`).
  late final pulumi.Output<String?> rootDeviceName;

  /// Snapshot ID for the root volume (for EBS-backed AMIs)
  late final pulumi.Output<String> rootSnapshotId;
  late final pulumi.Output<String?> sriovNetSupport;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// If the image is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the Amazon Elastic Compute Cloud User Guide.
  late final pulumi.Output<String?> tpmSupport;

  /// Base64 representation of the non-volatile UEFI variable store.
  late final pulumi.Output<String?> uefiData;

  /// Operation of the Amazon EC2 instance and the billing code that is associated with the AMI.
  late final pulumi.Output<String> usageOperation;

  /// Keyword to choose what virtualization mode created instances
  /// will use. Can be either "paravirtual" (the default) or "hvm". The choice of virtualization type
  /// changes the set of further arguments that are required, as described below.
  late final pulumi.Output<String?> virtualizationType;

  Ami(
    String name, {
    AmiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/ami:Ami',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.architecture = registerOutput<String?>('architecture');
    this.arn = registerOutput<String>('arn');
    this.bootMode = registerOutput<String?>('bootMode');
    this.deprecationTime = registerOutput<String?>('deprecationTime');
    this.description = registerOutput<String?>('description');
    this.ebsBlockDevices =
        registerOutput<List<AmiEbsBlockDevice>>('ebsBlockDevices');
    this.enaSupport = registerOutput<bool?>('enaSupport');
    this.ephemeralBlockDevices =
        registerOutput<List<AmiEphemeralBlockDevice>>('ephemeralBlockDevices');
    this.hypervisor = registerOutput<String>('hypervisor');
    this.imageLocation = registerOutput<String>('imageLocation');
    this.imageOwnerAlias = registerOutput<String>('imageOwnerAlias');
    this.imageType = registerOutput<String>('imageType');
    this.imdsSupport = registerOutput<String?>('imdsSupport');
    this.kernelId = registerOutput<String?>('kernelId');
    this.lastLaunchedTime = registerOutput<String>('lastLaunchedTime');
    this.manageEbsSnapshots = registerOutput<bool>('manageEbsSnapshots');
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.platform = registerOutput<String>('platform');
    this.platformDetails = registerOutput<String>('platformDetails');
    this.public = registerOutput<bool>('public');
    this.ramdiskId = registerOutput<String?>('ramdiskId');
    this.region = registerOutput<String>('region');
    this.rootDeviceName = registerOutput<String?>('rootDeviceName');
    this.rootSnapshotId = registerOutput<String>('rootSnapshotId');
    this.sriovNetSupport = registerOutput<String?>('sriovNetSupport');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tpmSupport = registerOutput<String?>('tpmSupport');
    this.uefiData = registerOutput<String?>('uefiData');
    this.usageOperation = registerOutput<String>('usageOperation');
    this.virtualizationType = registerOutput<String?>('virtualizationType');
  }
}
