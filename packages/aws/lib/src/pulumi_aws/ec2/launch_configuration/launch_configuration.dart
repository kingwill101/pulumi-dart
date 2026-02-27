import 'package:pulumi/pulumi.dart' as pulumi;
import '../launch_configuration_ebs_block_device/launch_configuration_ebs_block_device.dart';
import '../launch_configuration_ephemeral_block_device/launch_configuration_ephemeral_block_device.dart';
import '../launch_configuration_metadata_options/launch_configuration_metadata_options.dart';
import '../launch_configuration_root_block_device/launch_configuration_root_block_device.dart';
import 'launch_configuration_args.dart';

/// Provides a resource to create a new launch configuration, used for autoscaling groups.
///
/// !> **WARNING:** The use of launch configurations is discouraged in favor of launch templates. Read more in the [AWS EC2 Documentation](https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-configurations.html).
///
/// > **Note** When using `aws.ec2.LaunchConfiguration` with `aws.autoscaling.Group`, it is recommended to use the `name_prefix` (Optional) instead of the `name` (Optional) attribute.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import launch configurations using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/launchConfiguration:LaunchConfiguration as_conf pulumi-lg-123456
/// ```
class LaunchConfiguration extends pulumi.CustomResource {
  /// The Amazon Resource Name of the launch configuration.
  late final pulumi.Output<String> arn;

  /// Associate a public ip address with an instance in a VPC.
  late final pulumi.Output<bool?> associatePublicIpAddress;

  /// Additional EBS block devices to attach to the instance. See Block Devices below for details.
  late final pulumi.Output<List<LaunchConfigurationEbsBlockDevice>>
      ebsBlockDevices;

  /// If true, the launched EC2 instance will be EBS-optimized.
  late final pulumi.Output<bool> ebsOptimized;

  /// Enables/disables detailed monitoring. This is enabled by default.
  late final pulumi.Output<bool?> enableMonitoring;

  /// Customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details.
  late final pulumi.Output<List<LaunchConfigurationEphemeralBlockDevice>?>
      ephemeralBlockDevices;

  /// The name attribute of the IAM instance profile to associate with launched instances.
  late final pulumi.Output<String?> iamInstanceProfile;

  /// The EC2 image ID to launch.
  late final pulumi.Output<String> imageId;

  /// The size of instance to launch.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> instanceType;

  /// The key name that should be used for the instance.
  late final pulumi.Output<String> keyName;

  /// The metadata options for the instance.
  late final pulumi.Output<LaunchConfigurationMetadataOptions> metadataOptions;

  /// The name of the launch configuration. If you leave this blank, this provider will auto-generate a unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// The tenancy of the instance. Valid values are `default` or `dedicated`, see [AWS's Create Launch Configuration](http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_CreateLaunchConfiguration.html) for more details.
  late final pulumi.Output<String?> placementTenancy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Customize details about the root block device of the instance. See Block Devices below for details.
  late final pulumi.Output<LaunchConfigurationRootBlockDevice> rootBlockDevice;

  /// A list of associated security group IDS.
  late final pulumi.Output<List<String>?> securityGroups;

  /// The maximum price to use for reserving spot instances.
  late final pulumi.Output<String?> spotPrice;

  /// The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `user_data_base64` instead.
  late final pulumi.Output<String?> userData;

  /// Can be used instead of `user_data` to pass base64-encoded binary data directly. Use this instead of `user_data` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption.
  late final pulumi.Output<String?> userDataBase64;

  LaunchConfiguration(
    String name, {
    LaunchConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/launchConfiguration:LaunchConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.associatePublicIpAddress =
        registerOutput<bool?>('associatePublicIpAddress');
    this.ebsBlockDevices =
        registerOutput<List<LaunchConfigurationEbsBlockDevice>>(
            'ebsBlockDevices');
    this.ebsOptimized = registerOutput<bool>('ebsOptimized');
    this.enableMonitoring = registerOutput<bool?>('enableMonitoring');
    this.ephemeralBlockDevices =
        registerOutput<List<LaunchConfigurationEphemeralBlockDevice>?>(
            'ephemeralBlockDevices');
    this.iamInstanceProfile = registerOutput<String?>('iamInstanceProfile');
    this.imageId = registerOutput<String>('imageId');
    this.instanceType = registerOutput<String>('instanceType');
    this.keyName = registerOutput<String>('keyName');
    this.metadataOptions =
        registerOutput<LaunchConfigurationMetadataOptions>('metadataOptions');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.placementTenancy = registerOutput<String?>('placementTenancy');
    this.region = registerOutput<String>('region');
    this.rootBlockDevice =
        registerOutput<LaunchConfigurationRootBlockDevice>('rootBlockDevice');
    this.securityGroups = registerOutput<List<String>?>('securityGroups');
    this.spotPrice = registerOutput<String?>('spotPrice');
    this.userData = registerOutput<String?>('userData');
    this.userDataBase64 = registerOutput<String?>('userDataBase64');
  }
}
