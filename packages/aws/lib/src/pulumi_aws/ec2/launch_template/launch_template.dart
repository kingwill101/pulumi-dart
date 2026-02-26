import 'package:pulumi/pulumi.dart';
import '../launch_template_block_device_mapping/launch_template_block_device_mapping.dart';
import '../launch_template_capacity_reservation_specification/launch_template_capacity_reservation_specification.dart';
import '../launch_template_cpu_options/launch_template_cpu_options.dart';
import '../launch_template_credit_specification/launch_template_credit_specification.dart';
import '../launch_template_enclave_options/launch_template_enclave_options.dart';
import '../launch_template_hibernation_options/launch_template_hibernation_options.dart';
import '../launch_template_iam_instance_profile/launch_template_iam_instance_profile.dart';
import '../launch_template_instance_market_options/launch_template_instance_market_options.dart';
import '../launch_template_instance_requirements/launch_template_instance_requirements.dart';
import '../launch_template_license_specification/launch_template_license_specification.dart';
import '../launch_template_maintenance_options/launch_template_maintenance_options.dart';
import '../launch_template_metadata_options/launch_template_metadata_options.dart';
import '../launch_template_monitoring/launch_template_monitoring.dart';
import '../launch_template_network_interface/launch_template_network_interface.dart';
import '../launch_template_network_performance_options/launch_template_network_performance_options.dart';
import '../launch_template_placement/launch_template_placement.dart';
import '../launch_template_private_dns_name_options/launch_template_private_dns_name_options.dart';
import '../launch_template_secondary_interface/launch_template_secondary_interface.dart';
import '../launch_template_tag_specification/launch_template_tag_specification.dart';
import 'launch_template_args.dart';

/// Provides an EC2 launch template resource. Can be used to create instances or auto scaling groups.
///
/// ## Import
///
/// Using `pulumi import`, import Launch Templates using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/launchTemplate:LaunchTemplate web lt-12345678
/// ```
class LaunchTemplate extends CustomResource {
  /// Amazon Resource Name (ARN) of the launch template.
  late final Output<String> arn;

  /// Specify volumes to attach to the instance besides the volumes specified by the AMI.
  /// See Block Devices below for details.
  late final Output<List<LaunchTemplateBlockDeviceMapping>?>
      blockDeviceMappings;

  /// Targeting for EC2 capacity reservations. See Capacity Reservation Specification below for more details.
  late final Output<LaunchTemplateCapacityReservationSpecification?>
      capacityReservationSpecification;

  /// The CPU options for the instance. See CPU Options below for more details.
  late final Output<LaunchTemplateCpuOptions?> cpuOptions;

  /// Customize the credit specification of the instance. See Credit
  /// Specification below for more details.
  late final Output<LaunchTemplateCreditSpecification?> creditSpecification;

  /// Default Version of the launch template.
  late final Output<int> defaultVersion;

  /// Description of the launch template.
  late final Output<String?> description;

  /// If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-stop-protection.html).
  late final Output<bool?> disableApiStop;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, enables [EC2 Instance
  /// Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingDisableAPITermination.html)
  late final Output<bool?> disableApiTermination;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the launched EC2 instance will be EBS-optimized.
  late final Output<String?> ebsOptimized;

  /// Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  late final Output<LaunchTemplateEnclaveOptions?> enclaveOptions;

  /// The hibernation options for the instance. See Hibernation Options below for more details.
  late final Output<LaunchTemplateHibernationOptions?> hibernationOptions;

  /// The IAM Instance Profile to launch the instance with. See Instance Profile
  /// below for more details.
  late final Output<LaunchTemplateIamInstanceProfile?> iamInstanceProfile;

  /// The AMI from which to launch the instance or use a Systems Manager parameter convention e.g. `resolve:ssm:parameter-name`. See [docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#use-an-ssm-parameter-instead-of-an-ami-id) for more details.
  late final Output<String?> imageId;

  /// Shutdown behavior for the instance. Can be <span pulumi-lang-nodejs="`stop`" pulumi-lang-dotnet="`Stop`" pulumi-lang-go="`stop`" pulumi-lang-python="`stop`" pulumi-lang-yaml="`stop`" pulumi-lang-java="`stop`">`stop`</span> or <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span>.
  /// (Default: <span pulumi-lang-nodejs="`stop`" pulumi-lang-dotnet="`Stop`" pulumi-lang-go="`stop`" pulumi-lang-python="`stop`" pulumi-lang-yaml="`stop`" pulumi-lang-java="`stop`">`stop`</span>).
  late final Output<String?> instanceInitiatedShutdownBehavior;

  /// The market (purchasing) option for the instance. See Market Options
  /// below for details.
  late final Output<LaunchTemplateInstanceMarketOptions?> instanceMarketOptions;

  /// The attribute requirements for the type of instance. If present then <span pulumi-lang-nodejs="`instanceType`" pulumi-lang-dotnet="`InstanceType`" pulumi-lang-go="`instanceType`" pulumi-lang-python="`instance_type`" pulumi-lang-yaml="`instanceType`" pulumi-lang-java="`instanceType`">`instance_type`</span> cannot be present.
  late final Output<LaunchTemplateInstanceRequirements?> instanceRequirements;

  /// The type of the instance. If present then <span pulumi-lang-nodejs="`instanceRequirements`" pulumi-lang-dotnet="`InstanceRequirements`" pulumi-lang-go="`instanceRequirements`" pulumi-lang-python="`instance_requirements`" pulumi-lang-yaml="`instanceRequirements`" pulumi-lang-java="`instanceRequirements`">`instance_requirements`</span> cannot be present.
  late final Output<String?> instanceType;

  /// The kernel ID.
  late final Output<String?> kernelId;

  /// The key name to use for the instance.
  late final Output<String?> keyName;

  /// The latest version of the launch template.
  late final Output<int> latestVersion;

  /// A list of license specifications to associate with. See License Specification below for more details.
  late final Output<List<LaunchTemplateLicenseSpecification>?>
      licenseSpecifications;

  /// The maintenance options for the instance. See Maintenance Options below for more details.
  late final Output<LaunchTemplateMaintenanceOptions?> maintenanceOptions;

  /// Customize the metadata options for the instance. See Metadata Options below for more details.
  late final Output<LaunchTemplateMetadataOptions> metadataOptions;

  /// The monitoring option for the instance. See Monitoring below for more details.
  late final Output<LaunchTemplateMonitoring?> monitoring;

  /// The name of the launch template. If you leave this blank, the provider will auto-generate a unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Customize network interfaces to be attached at instance boot time. See Network
  /// Interfaces below for more details.
  late final Output<List<LaunchTemplateNetworkInterface>?> networkInterfaces;
  late final Output<LaunchTemplateNetworkPerformanceOptions?>
      networkPerformanceOptions;

  /// The placement of the instance. See Placement below for more details.
  late final Output<LaunchTemplatePlacement?> placement;

  /// The options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  late final Output<LaunchTemplatePrivateDnsNameOptions?> privateDnsNameOptions;

  /// The ID of the RAM disk.
  late final Output<String?> ramDiskId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Secondary interfaces to associate with instances launched from the template. See Secondary
  /// Interfaces below for more details.
  late final Output<List<LaunchTemplateSecondaryInterface>?>
      secondaryInterfaces;

  /// A list of security group names to associate with. If you are creating Instances in a VPC, use
  /// <span pulumi-lang-nodejs="`vpcSecurityGroupIds`" pulumi-lang-dotnet="`VpcSecurityGroupIds`" pulumi-lang-go="`vpcSecurityGroupIds`" pulumi-lang-python="`vpc_security_group_ids`" pulumi-lang-yaml="`vpcSecurityGroupIds`" pulumi-lang-java="`vpcSecurityGroupIds`">`vpc_security_group_ids`</span> instead.
  late final Output<List<String>?> securityGroupNames;

  /// The tags to apply to the resources during launch. See Tag Specifications below for more details. Default tags are currently not propagated to ASG created resources so you may wish to inject your default tags into this variable against the relevant child resource types created.
  late final Output<List<LaunchTemplateTagSpecification>?> tagSpecifications;

  /// A map of tags to assign to the launch template. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Whether to update Default Version each update. Conflicts with <span pulumi-lang-nodejs="`defaultVersion`" pulumi-lang-dotnet="`DefaultVersion`" pulumi-lang-go="`defaultVersion`" pulumi-lang-python="`default_version`" pulumi-lang-yaml="`defaultVersion`" pulumi-lang-java="`defaultVersion`">`default_version`</span>.
  late final Output<bool?> updateDefaultVersion;

  /// The base64-encoded user data to provide when launching the instance.
  late final Output<String?> userData;

  /// A list of security group IDs to associate with. Conflicts with `network_interfaces.security_groups`
  late final Output<List<String>?> vpcSecurityGroupIds;

  LaunchTemplate(
    String name, {
    LaunchTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/launchTemplate:LaunchTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.blockDeviceMappings =
        Output.createUnknown<List<LaunchTemplateBlockDeviceMapping>?>();
    this.capacityReservationSpecification =
        Output.createUnknown<LaunchTemplateCapacityReservationSpecification?>();
    this.cpuOptions = Output.createUnknown<LaunchTemplateCpuOptions?>();
    this.creditSpecification =
        Output.createUnknown<LaunchTemplateCreditSpecification?>();
    this.defaultVersion = Output.createUnknown<int>();
    this.description = Output.createUnknown<String?>();
    this.disableApiStop = Output.createUnknown<bool?>();
    this.disableApiTermination = Output.createUnknown<bool?>();
    this.ebsOptimized = Output.createUnknown<String?>();
    this.enclaveOptions = Output.createUnknown<LaunchTemplateEnclaveOptions?>();
    this.hibernationOptions =
        Output.createUnknown<LaunchTemplateHibernationOptions?>();
    this.iamInstanceProfile =
        Output.createUnknown<LaunchTemplateIamInstanceProfile?>();
    this.imageId = Output.createUnknown<String?>();
    this.instanceInitiatedShutdownBehavior = Output.createUnknown<String?>();
    this.instanceMarketOptions =
        Output.createUnknown<LaunchTemplateInstanceMarketOptions?>();
    this.instanceRequirements =
        Output.createUnknown<LaunchTemplateInstanceRequirements?>();
    this.instanceType = Output.createUnknown<String?>();
    this.kernelId = Output.createUnknown<String?>();
    this.keyName = Output.createUnknown<String?>();
    this.latestVersion = Output.createUnknown<int>();
    this.licenseSpecifications =
        Output.createUnknown<List<LaunchTemplateLicenseSpecification>?>();
    this.maintenanceOptions =
        Output.createUnknown<LaunchTemplateMaintenanceOptions?>();
    this.metadataOptions =
        Output.createUnknown<LaunchTemplateMetadataOptions>();
    this.monitoring = Output.createUnknown<LaunchTemplateMonitoring?>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.networkInterfaces =
        Output.createUnknown<List<LaunchTemplateNetworkInterface>?>();
    this.networkPerformanceOptions =
        Output.createUnknown<LaunchTemplateNetworkPerformanceOptions?>();
    this.placement = Output.createUnknown<LaunchTemplatePlacement?>();
    this.privateDnsNameOptions =
        Output.createUnknown<LaunchTemplatePrivateDnsNameOptions?>();
    this.ramDiskId = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.secondaryInterfaces =
        Output.createUnknown<List<LaunchTemplateSecondaryInterface>?>();
    this.securityGroupNames = Output.createUnknown<List<String>?>();
    this.tagSpecifications =
        Output.createUnknown<List<LaunchTemplateTagSpecification>?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.updateDefaultVersion = Output.createUnknown<bool?>();
    this.userData = Output.createUnknown<String?>();
    this.vpcSecurityGroupIds = Output.createUnknown<List<String>?>();
  }
}
