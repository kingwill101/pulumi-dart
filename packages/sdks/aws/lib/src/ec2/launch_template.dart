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
import 'launch_template_state.dart';
import 'launch_template_tag_specification.dart';

/// Provides an EC2 launch template resource. Can be used to create instances or auto scaling groups.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Launch Templates using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/launchTemplate:LaunchTemplate web lt-12345678
/// ```
class LaunchTemplate extends pulumi.CustomResource {
  /// ARN of the launch template.
  late final pulumi.Output<String> arn;
  /// Specify volumes to attach to the instance besides the volumes specified by the AMI.
  /// See Block Devices below for details.
  late final pulumi.Output<List<LaunchTemplateBlockDeviceMapping>?> blockDeviceMappings;
  /// Targeting for EC2 capacity reservations. See Capacity Reservation Specification below for more details.
  late final pulumi.Output<LaunchTemplateCapacityReservationSpecification?> capacityReservationSpecification;
  /// The CPU options for the instance. See CPU Options below for more details.
  late final pulumi.Output<LaunchTemplateCpuOptions?> cpuOptions;
  /// Customize the credit specification of the instance. See Credit
  /// Specification below for more details.
  late final pulumi.Output<LaunchTemplateCreditSpecification?> creditSpecification;
  /// Default Version of the launch template.
  late final pulumi.Output<int> defaultVersion;
  /// Description of the launch template version (`VersionDescription` in the [EC2 API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplateVersion.html)). Launch templates in AWS do not have a template-level description; whenever a change to this resource creates a new version, the new version is created with this description. To give each version a distinct description, update this argument in the same apply as the other changes.
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
  late final pulumi.Output<LaunchTemplateHibernationOptions?> hibernationOptions;
  /// The IAM Instance Profile to launch the instance with. See Instance Profile
  /// below for more details.
  late final pulumi.Output<LaunchTemplateIamInstanceProfile?> iamInstanceProfile;
  /// The AMI from which to launch the instance or use a Systems Manager parameter convention e.g. `resolve:ssm:parameter-name`. See [docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#use-an-ssm-parameter-instead-of-an-ami-id) for more details.
  late final pulumi.Output<String?> imageId;
  /// Shutdown behavior for the instance. Can be `stop` or `terminate`.
  /// (Default: `stop`).
  late final pulumi.Output<String?> instanceInitiatedShutdownBehavior;
  /// The market (purchasing) option for the instance. See Market Options
  /// below for details.
  late final pulumi.Output<LaunchTemplateInstanceMarketOptions?> instanceMarketOptions;
  /// The attribute requirements for the type of instance. If present then `instanceType` cannot be present.
  late final pulumi.Output<LaunchTemplateInstanceRequirements?> instanceRequirements;
  /// The type of the instance. If present then `instanceRequirements` cannot be present.
  late final pulumi.Output<String?> instanceType;
  /// The kernel ID.
  late final pulumi.Output<String?> kernelId;
  /// The key name to use for the instance.
  late final pulumi.Output<String?> keyName;
  /// The latest version of the launch template.
  late final pulumi.Output<int> latestVersion;
  /// A list of license specifications to associate with. See License Specification below for more details.
  late final pulumi.Output<List<LaunchTemplateLicenseSpecification>?> licenseSpecifications;
  /// The maintenance options for the instance. See Maintenance Options below for more details.
  late final pulumi.Output<LaunchTemplateMaintenanceOptions?> maintenanceOptions;
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
  late final pulumi.Output<List<LaunchTemplateNetworkInterface>?> networkInterfaces;
  late final pulumi.Output<LaunchTemplateNetworkPerformanceOptions?> networkPerformanceOptions;
  /// The placement of the instance. See Placement below for more details.
  late final pulumi.Output<LaunchTemplatePlacement?> placement;
  /// The options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  late final pulumi.Output<LaunchTemplatePrivateDnsNameOptions?> privateDnsNameOptions;
  /// The ID of the RAM disk.
  late final pulumi.Output<String?> ramDiskId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Secondary interfaces to associate with instances launched from the template. See Secondary
  /// Interfaces below for more details.
  late final pulumi.Output<List<LaunchTemplateSecondaryInterface>?> secondaryInterfaces;
  /// A list of security group names to associate with. If you are creating Instances in a VPC, use
  /// `vpcSecurityGroupIds` instead.
  late final pulumi.Output<List<String>?> securityGroupNames;
  /// The tags to apply to the resources during launch. See Tag Specifications below for more details. Default tags are currently not propagated to ASG created resources so you may wish to inject your default tags into this variable against the relevant child resource types created.
  late final pulumi.Output<List<LaunchTemplateTagSpecification>?> tagSpecifications;
  /// A map of tags to assign to the launch template. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Whether to update Default Version each update. Conflicts with `defaultVersion`.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    blockDeviceMappings = registerOutput<List<LaunchTemplateBlockDeviceMapping>?>('blockDeviceMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateBlockDeviceMapping>(guardedValue, (value) => LaunchTemplateBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>())); });
    capacityReservationSpecification = registerOutput<LaunchTemplateCapacityReservationSpecification?>('capacityReservationSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateCapacityReservationSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpuOptions = registerOutput<LaunchTemplateCpuOptions?>('cpuOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateCpuOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creditSpecification = registerOutput<LaunchTemplateCreditSpecification?>('creditSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateCreditSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultVersion = registerOutput<int>('defaultVersion');
    description = registerOutput<String?>('description');
    disableApiStop = registerOutput<bool?>('disableApiStop');
    disableApiTermination = registerOutput<bool?>('disableApiTermination');
    ebsOptimized = registerOutput<String?>('ebsOptimized');
    enclaveOptions = registerOutput<LaunchTemplateEnclaveOptions?>('enclaveOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateEnclaveOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hibernationOptions = registerOutput<LaunchTemplateHibernationOptions?>('hibernationOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateHibernationOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iamInstanceProfile = registerOutput<LaunchTemplateIamInstanceProfile?>('iamInstanceProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateIamInstanceProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageId = registerOutput<String?>('imageId');
    instanceInitiatedShutdownBehavior = registerOutput<String?>('instanceInitiatedShutdownBehavior');
    instanceMarketOptions = registerOutput<LaunchTemplateInstanceMarketOptions?>('instanceMarketOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateInstanceMarketOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceRequirements = registerOutput<LaunchTemplateInstanceRequirements?>('instanceRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateInstanceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceType = registerOutput<String?>('instanceType');
    kernelId = registerOutput<String?>('kernelId');
    keyName = registerOutput<String?>('keyName');
    latestVersion = registerOutput<int>('latestVersion');
    licenseSpecifications = registerOutput<List<LaunchTemplateLicenseSpecification>?>('licenseSpecifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateLicenseSpecification>(guardedValue, (value) => LaunchTemplateLicenseSpecification.fromMap((value as Map).cast<String, dynamic>())); });
    maintenanceOptions = registerOutput<LaunchTemplateMaintenanceOptions?>('maintenanceOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateMaintenanceOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metadataOptions = registerOutput<LaunchTemplateMetadataOptions>('metadataOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateMetadataOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitoring = registerOutput<LaunchTemplateMonitoring?>('monitoring', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateMonitoring.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    networkInterfaces = registerOutput<List<LaunchTemplateNetworkInterface>?>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateNetworkInterface>(guardedValue, (value) => LaunchTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    networkPerformanceOptions = registerOutput<LaunchTemplateNetworkPerformanceOptions?>('networkPerformanceOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateNetworkPerformanceOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placement = registerOutput<LaunchTemplatePlacement?>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplatePlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateDnsNameOptions = registerOutput<LaunchTemplatePrivateDnsNameOptions?>('privateDnsNameOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplatePrivateDnsNameOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ramDiskId = registerOutput<String?>('ramDiskId');
    region = registerOutput<String>('region');
    secondaryInterfaces = registerOutput<List<LaunchTemplateSecondaryInterface>?>('secondaryInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateSecondaryInterface>(guardedValue, (value) => LaunchTemplateSecondaryInterface.fromMap((value as Map).cast<String, dynamic>())); });
    securityGroupNames = registerOutput<List<String>?>('securityGroupNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagSpecifications = registerOutput<List<LaunchTemplateTagSpecification>?>('tagSpecifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateTagSpecification>(guardedValue, (value) => LaunchTemplateTagSpecification.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateDefaultVersion = registerOutput<bool?>('updateDefaultVersion');
    userData = registerOutput<String?>('userData');
    vpcSecurityGroupIds = registerOutput<List<String>?>('vpcSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [LaunchTemplate] resource's state with the given [name] and [id].
  static LaunchTemplate get(
    String name,
    pulumi.Input<String> id, {
    LaunchTemplateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LaunchTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LaunchTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/launchTemplate:LaunchTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    blockDeviceMappings = registerOutput<List<LaunchTemplateBlockDeviceMapping>?>('blockDeviceMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateBlockDeviceMapping>(guardedValue, (value) => LaunchTemplateBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>())); });
    capacityReservationSpecification = registerOutput<LaunchTemplateCapacityReservationSpecification?>('capacityReservationSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateCapacityReservationSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpuOptions = registerOutput<LaunchTemplateCpuOptions?>('cpuOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateCpuOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creditSpecification = registerOutput<LaunchTemplateCreditSpecification?>('creditSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateCreditSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultVersion = registerOutput<int>('defaultVersion');
    description = registerOutput<String?>('description');
    disableApiStop = registerOutput<bool?>('disableApiStop');
    disableApiTermination = registerOutput<bool?>('disableApiTermination');
    ebsOptimized = registerOutput<String?>('ebsOptimized');
    enclaveOptions = registerOutput<LaunchTemplateEnclaveOptions?>('enclaveOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateEnclaveOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hibernationOptions = registerOutput<LaunchTemplateHibernationOptions?>('hibernationOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateHibernationOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iamInstanceProfile = registerOutput<LaunchTemplateIamInstanceProfile?>('iamInstanceProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateIamInstanceProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageId = registerOutput<String?>('imageId');
    instanceInitiatedShutdownBehavior = registerOutput<String?>('instanceInitiatedShutdownBehavior');
    instanceMarketOptions = registerOutput<LaunchTemplateInstanceMarketOptions?>('instanceMarketOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateInstanceMarketOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceRequirements = registerOutput<LaunchTemplateInstanceRequirements?>('instanceRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateInstanceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceType = registerOutput<String?>('instanceType');
    kernelId = registerOutput<String?>('kernelId');
    keyName = registerOutput<String?>('keyName');
    latestVersion = registerOutput<int>('latestVersion');
    licenseSpecifications = registerOutput<List<LaunchTemplateLicenseSpecification>?>('licenseSpecifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateLicenseSpecification>(guardedValue, (value) => LaunchTemplateLicenseSpecification.fromMap((value as Map).cast<String, dynamic>())); });
    maintenanceOptions = registerOutput<LaunchTemplateMaintenanceOptions?>('maintenanceOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateMaintenanceOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metadataOptions = registerOutput<LaunchTemplateMetadataOptions>('metadataOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateMetadataOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitoring = registerOutput<LaunchTemplateMonitoring?>('monitoring', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateMonitoring.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    networkInterfaces = registerOutput<List<LaunchTemplateNetworkInterface>?>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateNetworkInterface>(guardedValue, (value) => LaunchTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    networkPerformanceOptions = registerOutput<LaunchTemplateNetworkPerformanceOptions?>('networkPerformanceOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateNetworkPerformanceOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placement = registerOutput<LaunchTemplatePlacement?>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplatePlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateDnsNameOptions = registerOutput<LaunchTemplatePrivateDnsNameOptions?>('privateDnsNameOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplatePrivateDnsNameOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ramDiskId = registerOutput<String?>('ramDiskId');
    region = registerOutput<String>('region');
    secondaryInterfaces = registerOutput<List<LaunchTemplateSecondaryInterface>?>('secondaryInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateSecondaryInterface>(guardedValue, (value) => LaunchTemplateSecondaryInterface.fromMap((value as Map).cast<String, dynamic>())); });
    securityGroupNames = registerOutput<List<String>?>('securityGroupNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagSpecifications = registerOutput<List<LaunchTemplateTagSpecification>?>('tagSpecifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateTagSpecification>(guardedValue, (value) => LaunchTemplateTagSpecification.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateDefaultVersion = registerOutput<bool?>('updateDefaultVersion');
    userData = registerOutput<String?>('userData');
    vpcSecurityGroupIds = registerOutput<List<String>?>('vpcSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [LaunchTemplate] resource.
  LaunchTemplate.reference(String urn)
    : super(
        'aws:ec2/launchTemplate:LaunchTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    blockDeviceMappings = registerOutput<List<LaunchTemplateBlockDeviceMapping>?>('blockDeviceMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateBlockDeviceMapping>(guardedValue, (value) => LaunchTemplateBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>())); });
    capacityReservationSpecification = registerOutput<LaunchTemplateCapacityReservationSpecification?>('capacityReservationSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateCapacityReservationSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpuOptions = registerOutput<LaunchTemplateCpuOptions?>('cpuOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateCpuOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creditSpecification = registerOutput<LaunchTemplateCreditSpecification?>('creditSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateCreditSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultVersion = registerOutput<int>('defaultVersion');
    description = registerOutput<String?>('description');
    disableApiStop = registerOutput<bool?>('disableApiStop');
    disableApiTermination = registerOutput<bool?>('disableApiTermination');
    ebsOptimized = registerOutput<String?>('ebsOptimized');
    enclaveOptions = registerOutput<LaunchTemplateEnclaveOptions?>('enclaveOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateEnclaveOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hibernationOptions = registerOutput<LaunchTemplateHibernationOptions?>('hibernationOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateHibernationOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iamInstanceProfile = registerOutput<LaunchTemplateIamInstanceProfile?>('iamInstanceProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateIamInstanceProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageId = registerOutput<String?>('imageId');
    instanceInitiatedShutdownBehavior = registerOutput<String?>('instanceInitiatedShutdownBehavior');
    instanceMarketOptions = registerOutput<LaunchTemplateInstanceMarketOptions?>('instanceMarketOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateInstanceMarketOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceRequirements = registerOutput<LaunchTemplateInstanceRequirements?>('instanceRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateInstanceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceType = registerOutput<String?>('instanceType');
    kernelId = registerOutput<String?>('kernelId');
    keyName = registerOutput<String?>('keyName');
    latestVersion = registerOutput<int>('latestVersion');
    licenseSpecifications = registerOutput<List<LaunchTemplateLicenseSpecification>?>('licenseSpecifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateLicenseSpecification>(guardedValue, (value) => LaunchTemplateLicenseSpecification.fromMap((value as Map).cast<String, dynamic>())); });
    maintenanceOptions = registerOutput<LaunchTemplateMaintenanceOptions?>('maintenanceOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateMaintenanceOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metadataOptions = registerOutput<LaunchTemplateMetadataOptions>('metadataOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateMetadataOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitoring = registerOutput<LaunchTemplateMonitoring?>('monitoring', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateMonitoring.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    networkInterfaces = registerOutput<List<LaunchTemplateNetworkInterface>?>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateNetworkInterface>(guardedValue, (value) => LaunchTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    networkPerformanceOptions = registerOutput<LaunchTemplateNetworkPerformanceOptions?>('networkPerformanceOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateNetworkPerformanceOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placement = registerOutput<LaunchTemplatePlacement?>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplatePlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateDnsNameOptions = registerOutput<LaunchTemplatePrivateDnsNameOptions?>('privateDnsNameOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplatePrivateDnsNameOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ramDiskId = registerOutput<String?>('ramDiskId');
    region = registerOutput<String>('region');
    secondaryInterfaces = registerOutput<List<LaunchTemplateSecondaryInterface>?>('secondaryInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateSecondaryInterface>(guardedValue, (value) => LaunchTemplateSecondaryInterface.fromMap((value as Map).cast<String, dynamic>())); });
    securityGroupNames = registerOutput<List<String>?>('securityGroupNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagSpecifications = registerOutput<List<LaunchTemplateTagSpecification>?>('tagSpecifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LaunchTemplateTagSpecification>(guardedValue, (value) => LaunchTemplateTagSpecification.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateDefaultVersion = registerOutput<bool?>('updateDefaultVersion');
    userData = registerOutput<String?>('userData');
    vpcSecurityGroupIds = registerOutput<List<String>?>('vpcSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
