import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_args.dart';
import 'launch_template_block_device_mapping.dart';
import 'launch_template_capacity_reservation_specification.dart';
import 'launch_template_cpu_options.dart';
import 'launch_template_credit_specification.dart';
import 'launch_template_enclave_options.dart';
import 'launch_template_hibernation_options.dart';
import 'launch_template_iam_instance_profile.dart';
import 'launch_template_instance_market_options.dart';
import 'launch_template_instance_requirements.dart';
import 'launch_template_license_specification.dart';
import 'launch_template_maintenance_options.dart';
import 'launch_template_metadata_options.dart';
import 'launch_template_monitoring.dart';
import 'launch_template_network_interface.dart';
import 'launch_template_network_performance_options.dart';
import 'launch_template_placement.dart';
import 'launch_template_private_dns_name_options.dart';
import 'launch_template_secondary_interface.dart';
import 'launch_template_tag_specification.dart';

/// Provides an EC2 launch template resource. Can be used to create instances or auto scaling groups.
///
/// ## Import
///
/// Using `pulumi import`, import Launch Templates using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/launchTemplate:LaunchTemplate web lt-12345678
/// ```
class LaunchTemplate extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the launch template.
  late final pulumi.Output<String> arn;

  /// Specify volumes to attach to the instance besides the volumes specified by the AMI.
  /// See Block Devices below for details.
  late final pulumi.Output<List<LaunchTemplateBlockDeviceMapping>?>
      blockDeviceMappings;

  /// Targeting for EC2 capacity reservations. See Capacity Reservation Specification below for more details.
  late final pulumi.Output<LaunchTemplateCapacityReservationSpecification?>
      capacityReservationSpecification;

  /// The CPU options for the instance. See CPU Options below for more details.
  late final pulumi.Output<LaunchTemplateCpuOptions?> cpuOptions;

  /// Customize the credit specification of the instance. See Credit
  /// Specification below for more details.
  late final pulumi.Output<LaunchTemplateCreditSpecification?>
      creditSpecification;

  /// Default Version of the launch template.
  late final pulumi.Output<int> defaultVersion;

  /// Description of the launch template.
  late final pulumi.Output<String?> description;

  /// If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-stop-protection.html).
  late final pulumi.Output<bool?> disableApiStop;

  /// If `true`, enables [EC2 Instance
  /// Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingDisableAPITermination.html)
  late final pulumi.Output<bool?> disableApiTermination;

  /// If `true`, the launched EC2 instance will be EBS-optimized.
  late final pulumi.Output<String?> ebsOptimized;

  /// Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  late final pulumi.Output<LaunchTemplateEnclaveOptions?> enclaveOptions;

  /// The hibernation options for the instance. See Hibernation Options below for more details.
  late final pulumi.Output<LaunchTemplateHibernationOptions?>
      hibernationOptions;

  /// The IAM Instance Profile to launch the instance with. See Instance Profile
  /// below for more details.
  late final pulumi.Output<LaunchTemplateIamInstanceProfile?>
      iamInstanceProfile;

  /// The AMI from which to launch the instance or use a Systems Manager parameter convention e.g. `resolve:ssm:parameter-name`. See [docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#use-an-ssm-parameter-instead-of-an-ami-id) for more details.
  late final pulumi.Output<String?> imageId;

  /// Shutdown behavior for the instance. Can be `stop` or `terminate`.
  /// (Default: `stop`).
  late final pulumi.Output<String?> instanceInitiatedShutdownBehavior;

  /// The market (purchasing) option for the instance. See Market Options
  /// below for details.
  late final pulumi.Output<LaunchTemplateInstanceMarketOptions?>
      instanceMarketOptions;

  /// The attribute requirements for the type of instance. If present then `instance_type` cannot be present.
  late final pulumi.Output<LaunchTemplateInstanceRequirements?>
      instanceRequirements;

  /// The type of the instance. If present then `instance_requirements` cannot be present.
  late final pulumi.Output<String?> instanceType;

  /// The kernel ID.
  late final pulumi.Output<String?> kernelId;

  /// The key name to use for the instance.
  late final pulumi.Output<String?> keyName;

  /// The latest version of the launch template.
  late final pulumi.Output<int> latestVersion;

  /// A list of license specifications to associate with. See License Specification below for more details.
  late final pulumi.Output<List<LaunchTemplateLicenseSpecification>?>
      licenseSpecifications;

  /// The maintenance options for the instance. See Maintenance Options below for more details.
  late final pulumi.Output<LaunchTemplateMaintenanceOptions?>
      maintenanceOptions;

  /// Customize the metadata options for the instance. See Metadata Options below for more details.
  late final pulumi.Output<LaunchTemplateMetadataOptions> metadataOptions;

  /// The monitoring option for the instance. See Monitoring below for more details.
  late final pulumi.Output<LaunchTemplateMonitoring?> monitoring;

  /// The name of the launch template. If you leave this blank, the provider will auto-generate a unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Customize network interfaces to be attached at instance boot time. See Network
  /// Interfaces below for more details.
  late final pulumi.Output<List<LaunchTemplateNetworkInterface>?>
      networkInterfaces;
  late final pulumi.Output<LaunchTemplateNetworkPerformanceOptions?>
      networkPerformanceOptions;

  /// The placement of the instance. See Placement below for more details.
  late final pulumi.Output<LaunchTemplatePlacement?> placement;

  /// The options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  late final pulumi.Output<LaunchTemplatePrivateDnsNameOptions?>
      privateDnsNameOptions;

  /// The ID of the RAM disk.
  late final pulumi.Output<String?> ramDiskId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Secondary interfaces to associate with instances launched from the template. See Secondary
  /// Interfaces below for more details.
  late final pulumi.Output<List<LaunchTemplateSecondaryInterface>?>
      secondaryInterfaces;

  /// A list of security group names to associate with. If you are creating Instances in a VPC, use
  /// `vpc_security_group_ids` instead.
  late final pulumi.Output<List<String>?> securityGroupNames;

  /// The tags to apply to the resources during launch. See Tag Specifications below for more details. Default tags are currently not propagated to ASG created resources so you may wish to inject your default tags into this variable against the relevant child resource types created.
  late final pulumi.Output<List<LaunchTemplateTagSpecification>?>
      tagSpecifications;

  /// A map of tags to assign to the launch template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Whether to update Default Version each update. Conflicts with `default_version`.
  late final pulumi.Output<bool?> updateDefaultVersion;

  /// The base64-encoded user data to provide when launching the instance.
  late final pulumi.Output<String?> userData;

  /// A list of security group IDs to associate with. Conflicts with `network_interfaces.security_groups`
  late final pulumi.Output<List<String>?> vpcSecurityGroupIds;

  /// Creates a new [LaunchTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LaunchTemplate]. {@macro pulumi_ec2_launch_template_launch_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LaunchTemplate(
    String name, {
    LaunchTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/launchTemplate:LaunchTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.blockDeviceMappings =
        registerOutput<List<LaunchTemplateBlockDeviceMapping>?>(
            'blockDeviceMappings');
    this.capacityReservationSpecification =
        registerOutput<LaunchTemplateCapacityReservationSpecification?>(
            'capacityReservationSpecification');
    this.cpuOptions = registerOutput<LaunchTemplateCpuOptions?>('cpuOptions');
    this.creditSpecification =
        registerOutput<LaunchTemplateCreditSpecification?>(
            'creditSpecification');
    this.defaultVersion = registerOutput<int>('defaultVersion');
    this.description = registerOutput<String?>('description');
    this.disableApiStop = registerOutput<bool?>('disableApiStop');
    this.disableApiTermination = registerOutput<bool?>('disableApiTermination');
    this.ebsOptimized = registerOutput<String?>('ebsOptimized');
    this.enclaveOptions =
        registerOutput<LaunchTemplateEnclaveOptions?>('enclaveOptions');
    this.hibernationOptions =
        registerOutput<LaunchTemplateHibernationOptions?>('hibernationOptions');
    this.iamInstanceProfile =
        registerOutput<LaunchTemplateIamInstanceProfile?>('iamInstanceProfile');
    this.imageId = registerOutput<String?>('imageId');
    this.instanceInitiatedShutdownBehavior =
        registerOutput<String?>('instanceInitiatedShutdownBehavior');
    this.instanceMarketOptions =
        registerOutput<LaunchTemplateInstanceMarketOptions?>(
            'instanceMarketOptions');
    this.instanceRequirements =
        registerOutput<LaunchTemplateInstanceRequirements?>(
            'instanceRequirements');
    this.instanceType = registerOutput<String?>('instanceType');
    this.kernelId = registerOutput<String?>('kernelId');
    this.keyName = registerOutput<String?>('keyName');
    this.latestVersion = registerOutput<int>('latestVersion');
    this.licenseSpecifications =
        registerOutput<List<LaunchTemplateLicenseSpecification>?>(
            'licenseSpecifications');
    this.maintenanceOptions =
        registerOutput<LaunchTemplateMaintenanceOptions?>('maintenanceOptions');
    this.metadataOptions =
        registerOutput<LaunchTemplateMetadataOptions>('metadataOptions');
    this.monitoring = registerOutput<LaunchTemplateMonitoring?>('monitoring');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.networkInterfaces =
        registerOutput<List<LaunchTemplateNetworkInterface>?>(
            'networkInterfaces');
    this.networkPerformanceOptions =
        registerOutput<LaunchTemplateNetworkPerformanceOptions?>(
            'networkPerformanceOptions');
    this.placement = registerOutput<LaunchTemplatePlacement?>('placement');
    this.privateDnsNameOptions =
        registerOutput<LaunchTemplatePrivateDnsNameOptions?>(
            'privateDnsNameOptions');
    this.ramDiskId = registerOutput<String?>('ramDiskId');
    this.region = registerOutput<String>('region');
    this.secondaryInterfaces =
        registerOutput<List<LaunchTemplateSecondaryInterface>?>(
            'secondaryInterfaces');
    this.securityGroupNames =
        registerOutput<List<String>?>('securityGroupNames');
    this.tagSpecifications =
        registerOutput<List<LaunchTemplateTagSpecification>?>(
            'tagSpecifications');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateDefaultVersion = registerOutput<bool?>('updateDefaultVersion');
    this.userData = registerOutput<String?>('userData');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>?>('vpcSecurityGroupIds');
  }
}
