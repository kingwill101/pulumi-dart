// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'architecture_values_enum_value.dart';
import 'boot_mode_values_enum_value.dart';
import 'capacity_reservation_specification_response.dart';
import 'cpu_options.dart';
import 'device_type_enum_value.dart';
import 'elastic_gpu_association.dart';
import 'elastic_inference_accelerator_association.dart';
import 'enclave_options.dart';
import 'group_identifier.dart';
import 'hibernation_options.dart';
import 'hypervisor_type_enum_value.dart';
import 'iam_instance_profile.dart';
import 'instance_block_device_mapping.dart';
import 'instance_boot_mode_values_enum_value.dart';
import 'instance_lifecycle_type_enum_value.dart';
import 'instance_maintenance_options.dart';
import 'instance_metadata_options_response.dart';
import 'instance_network_interface.dart';
import 'instance_state.dart';
import 'instance_type_enum_value.dart';
import 'license_configuration.dart';
import 'monitoring.dart';
import 'placement.dart';
import 'platform_values_enum_value.dart';
import 'private_dns_name_options_response.dart';
import 'product_code.dart';
import 'state_reason.dart';
import 'tag.dart';
import 'virtualization_type_enum_value.dart';

/// Definition of awsEc2Instance
class AwsEc2InstanceProperties {
  /// &lt;p&gt;The AMI launch index, which can be used to find this instance in the launch group.&lt;/p&gt;
  final pulumi.Input<int?>? amiLaunchIndex;
  /// &lt;p&gt;The architecture of the image.&lt;/p&gt;
  final pulumi.Input<ArchitectureValuesEnumValue?>? architecture;
  /// &lt;p&gt;Any block device mapping entries for the instance.&lt;/p&gt;
  final pulumi.Input<List<InstanceBlockDeviceMapping>?>? blockDeviceMappings;
  /// &lt;p&gt;The boot mode that was specified by the AMI. If the value is &lt;code&gt;uefi-preferred&lt;/code&gt;, the AMI supports both UEFI and Legacy BIOS. The &lt;code&gt;currentInstanceBootMode&lt;/code&gt; parameter is the boot mode that is used to boot the instance at launch or start.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The operating system contained in the AMI must be configured to support the specified boot mode.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html'&gt;Boot modes&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<BootModeValuesEnumValue?>? bootMode;
  /// &lt;p&gt;The ID of the Capacity Reservation.&lt;/p&gt;
  final pulumi.Input<String?>? capacityReservationId;
  /// &lt;p&gt;Information about the Capacity Reservation targeting option.&lt;/p&gt;
  final pulumi.Input<CapacityReservationSpecificationResponse?>? capacityReservationSpecification;
  /// &lt;p&gt;The idempotency token you provided when you launched the instance, if applicable.&lt;/p&gt;
  final pulumi.Input<String?>? clientToken;
  /// &lt;p&gt;The CPU options for the instance.&lt;/p&gt;
  final pulumi.Input<CpuOptions?>? cpuOptions;
  /// &lt;p&gt;The boot mode that is used to boot the instance at launch or start. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html'&gt;Boot modes&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<InstanceBootModeValuesEnumValue?>? currentInstanceBootMode;
  /// &lt;p&gt;Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.&lt;/p&gt;
  final pulumi.Input<bool?>? ebsOptimized;
  /// &lt;p&gt;Deprecated.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Amazon Elastic Graphics reached end of life on January 8, 2024. For workloads that require graphics acceleration, we recommend that you use Amazon EC2 G4ad, G4dn, or G5 instances.&lt;/p&gt; &lt;/note&gt;
  final pulumi.Input<List<ElasticGpuAssociation>?>? elasticGpuAssociations;
  /// &lt;p&gt;The elastic inference accelerator associated with the instance.&lt;/p&gt;
  final pulumi.Input<List<ElasticInferenceAcceleratorAssociation>?>? elasticInferenceAcceleratorAssociations;
  /// &lt;p&gt;Specifies whether enhanced networking with ENA is enabled.&lt;/p&gt;
  final pulumi.Input<bool?>? enaSupport;
  /// &lt;p&gt;Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.&lt;/p&gt;
  final pulumi.Input<EnclaveOptions?>? enclaveOptions;
  /// &lt;p&gt;Indicates whether the instance is enabled for hibernation.&lt;/p&gt;
  final pulumi.Input<HibernationOptions?>? hibernationOptions;
  /// &lt;p&gt;The hypervisor type of the instance. The value &lt;code&gt;xen&lt;/code&gt; is used for both Xen and Nitro hypervisors.&lt;/p&gt;
  final pulumi.Input<HypervisorTypeEnumValue?>? hypervisor;
  /// &lt;p&gt;The IAM instance profile associated with the instance, if applicable.&lt;/p&gt;
  final pulumi.Input<IamInstanceProfile?>? iamInstanceProfile;
  /// &lt;p&gt;The ID of the AMI used to launch the instance.&lt;/p&gt;
  final pulumi.Input<String?>? imageId;
  /// &lt;p&gt;The ID of the instance.&lt;/p&gt;
  final pulumi.Input<String?>? instanceId;
  /// &lt;p&gt;Indicates whether this is a Spot Instance or a Scheduled Instance.&lt;/p&gt;
  final pulumi.Input<InstanceLifecycleTypeEnumValue?>? instanceLifecycle;
  /// &lt;p&gt;The instance type.&lt;/p&gt;
  final pulumi.Input<InstanceTypeEnumValue?>? instanceType;
  /// &lt;p&gt;The IPv6 address assigned to the instance.&lt;/p&gt;
  final pulumi.Input<String?>? ipv6Address;
  /// &lt;p&gt;The kernel associated with this instance, if applicable.&lt;/p&gt;
  final pulumi.Input<String?>? kernelId;
  /// &lt;p&gt;The name of the key pair, if this instance was launched with an associated key pair.&lt;/p&gt;
  final pulumi.Input<String?>? keyName;
  /// &lt;p&gt;The time the instance was launched.&lt;/p&gt;
  final pulumi.Input<String?>? launchTime;
  /// &lt;p&gt;The license configurations for the instance.&lt;/p&gt;
  final pulumi.Input<List<LicenseConfiguration>?>? licenses;
  /// &lt;p&gt;Provides information on the recovery and maintenance options of your instance.&lt;/p&gt;
  final pulumi.Input<InstanceMaintenanceOptions?>? maintenanceOptions;
  /// &lt;p&gt;The metadata options for the instance.&lt;/p&gt;
  final pulumi.Input<InstanceMetadataOptionsResponse?>? metadataOptions;
  /// &lt;p&gt;The monitoring for the instance.&lt;/p&gt;
  final pulumi.Input<Monitoring?>? monitoring;
  /// &lt;p&gt;The network interfaces for the instance.&lt;/p&gt;
  final pulumi.Input<List<InstanceNetworkInterface>?>? networkInterfaces;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the Outpost.&lt;/p&gt;
  final pulumi.Input<String?>? outpostArn;
  /// &lt;p&gt;The location where the instance launched, if applicable.&lt;/p&gt;
  final pulumi.Input<Placement?>? placement;
  /// &lt;p&gt;The platform. This value is &lt;code&gt;windows&lt;/code&gt; for Windows instances; otherwise, it is empty.&lt;/p&gt;
  final pulumi.Input<PlatformValuesEnumValue?>? platform;
  /// &lt;p&gt;The platform details value for the instance. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html'&gt;AMI billing information fields&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<String?>? platformDetails;
  /// &lt;p&gt;[IPv4 only] The private DNS hostname name assigned to the instance. This DNS hostname can only be used inside the Amazon EC2 network. This name is not available until the instance enters the &lt;code&gt;running&lt;/code&gt; state. &lt;/p&gt; &lt;p&gt;The Amazon-provided DNS server resolves Amazon-provided private DNS hostnames if you've enabled DNS resolution and DNS hostnames in your VPC. If you are not using the Amazon-provided DNS server in your VPC, your custom domain name servers must resolve the hostname as appropriate.&lt;/p&gt;
  final pulumi.Input<String?>? privateDnsName;
  /// &lt;p&gt;The options for the instance hostname.&lt;/p&gt;
  final pulumi.Input<PrivateDnsNameOptionsResponse?>? privateDnsNameOptions;
  /// &lt;p&gt;The private IPv4 address assigned to the instance.&lt;/p&gt;
  final pulumi.Input<String?>? privateIpAddress;
  /// &lt;p&gt;The product codes attached to this instance, if applicable.&lt;/p&gt;
  final pulumi.Input<List<ProductCode>?>? productCodes;
  /// &lt;p&gt;[IPv4 only] The public DNS name assigned to the instance. This name is not available until the instance enters the &lt;code&gt;running&lt;/code&gt; state. This name is only available if you've enabled DNS hostnames for your VPC.&lt;/p&gt;
  final pulumi.Input<String?>? publicDnsName;
  /// &lt;p&gt;The public IPv4 address, or the Carrier IP address assigned to the instance, if applicable.&lt;/p&gt; &lt;p&gt;A Carrier IP address only applies to an instance launched in a subnet associated with a Wavelength Zone.&lt;/p&gt;
  final pulumi.Input<String?>? publicIpAddress;
  /// &lt;p&gt;The RAM disk associated with this instance, if applicable.&lt;/p&gt;
  final pulumi.Input<String?>? ramdiskId;
  /// &lt;p&gt;The device name of the root device volume (for example, &lt;code&gt;/dev/sda1&lt;/code&gt;).&lt;/p&gt;
  final pulumi.Input<String?>? rootDeviceName;
  /// &lt;p&gt;The root device type used by the AMI. The AMI can use an EBS volume or an instance store volume.&lt;/p&gt;
  final pulumi.Input<DeviceTypeEnumValue?>? rootDeviceType;
  /// &lt;p&gt;The security groups for the instance.&lt;/p&gt;
  final pulumi.Input<List<GroupIdentifier>?>? securityGroups;
  /// &lt;p&gt;Indicates whether source/destination checking is enabled.&lt;/p&gt;
  final pulumi.Input<bool?>? sourceDestCheck;
  /// &lt;p&gt;If the request is a Spot Instance request, the ID of the request.&lt;/p&gt;
  final pulumi.Input<String?>? spotInstanceRequestId;
  /// &lt;p&gt;Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.&lt;/p&gt;
  final pulumi.Input<String?>? sriovNetSupport;
  /// &lt;p&gt;The current state of the instance.&lt;/p&gt;
  final pulumi.Input<InstanceState?>? state;
  /// &lt;p&gt;The reason for the most recent state transition.&lt;/p&gt;
  final pulumi.Input<StateReason?>? stateReason;
  /// &lt;p&gt;The reason for the most recent state transition. This might be an empty string.&lt;/p&gt;
  final pulumi.Input<String?>? stateTransitionReason;
  /// &lt;p&gt;The ID of the subnet in which the instance is running.&lt;/p&gt;
  final pulumi.Input<String?>? subnetId;
  /// &lt;p&gt;Any tags assigned to the instance.&lt;/p&gt;
  final pulumi.Input<List<Tag>?>? tags;
  /// &lt;p&gt;If the instance is configured for NitroTPM support, the value is &lt;code&gt;v2.0&lt;/code&gt;. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html'&gt;NitroTPM&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<String?>? tpmSupport;
  /// &lt;p&gt;The usage operation value for the instance. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html'&gt;AMI billing information fields&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<String?>? usageOperation;
  /// &lt;p&gt;The time that the usage operation was last updated.&lt;/p&gt;
  final pulumi.Input<String?>? usageOperationUpdateTime;
  /// &lt;p&gt;The virtualization type of the instance.&lt;/p&gt;
  final pulumi.Input<VirtualizationTypeEnumValue?>? virtualizationType;
  /// &lt;p&gt;The ID of the VPC in which the instance is running.&lt;/p&gt;
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [AwsEc2InstanceProperties].
  /// [amiLaunchIndex] &lt;p&gt;The AMI launch index, which can be used to find this instance in the launch group.&lt;/p&gt;
  /// [architecture] &lt;p&gt;The architecture of the image.&lt;/p&gt;
  /// [blockDeviceMappings] &lt;p&gt;Any block device mapping entries for the instance.&lt;/p&gt;
  /// [bootMode] &lt;p&gt;The boot mode that was specified by the AMI. If the value is &lt;code&gt;uefi-preferred&lt;/code&gt;, the AMI supports both UEFI and Legacy BIOS. The &lt;code&gt;currentInstanceBootMode&lt;/code&gt; parameter is the boot mode that is used to boot the instance at launch or start.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The operating system contained in the AMI must be configured to support the specified boot mode.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html'&gt;Boot modes&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [capacityReservationId] &lt;p&gt;The ID of the Capacity Reservation.&lt;/p&gt;
  /// [capacityReservationSpecification] &lt;p&gt;Information about the Capacity Reservation targeting option.&lt;/p&gt;
  /// [clientToken] &lt;p&gt;The idempotency token you provided when you launched the instance, if applicable.&lt;/p&gt;
  /// [cpuOptions] &lt;p&gt;The CPU options for the instance.&lt;/p&gt;
  /// [currentInstanceBootMode] &lt;p&gt;The boot mode that is used to boot the instance at launch or start. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html'&gt;Boot modes&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [ebsOptimized] &lt;p&gt;Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.&lt;/p&gt;
  /// [elasticGpuAssociations] &lt;p&gt;Deprecated.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Amazon Elastic Graphics reached end of life on January 8, 2024. For workloads that require graphics acceleration, we recommend that you use Amazon EC2 G4ad, G4dn, or G5 instances.&lt;/p&gt; &lt;/note&gt;
  /// [elasticInferenceAcceleratorAssociations] &lt;p&gt;The elastic inference accelerator associated with the instance.&lt;/p&gt;
  /// [enaSupport] &lt;p&gt;Specifies whether enhanced networking with ENA is enabled.&lt;/p&gt;
  /// [enclaveOptions] &lt;p&gt;Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.&lt;/p&gt;
  /// [hibernationOptions] &lt;p&gt;Indicates whether the instance is enabled for hibernation.&lt;/p&gt;
  /// [hypervisor] &lt;p&gt;The hypervisor type of the instance. The value &lt;code&gt;xen&lt;/code&gt; is used for both Xen and Nitro hypervisors.&lt;/p&gt;
  /// [iamInstanceProfile] &lt;p&gt;The IAM instance profile associated with the instance, if applicable.&lt;/p&gt;
  /// [imageId] &lt;p&gt;The ID of the AMI used to launch the instance.&lt;/p&gt;
  /// [instanceId] &lt;p&gt;The ID of the instance.&lt;/p&gt;
  /// [instanceLifecycle] &lt;p&gt;Indicates whether this is a Spot Instance or a Scheduled Instance.&lt;/p&gt;
  /// [instanceType] &lt;p&gt;The instance type.&lt;/p&gt;
  /// [ipv6Address] &lt;p&gt;The IPv6 address assigned to the instance.&lt;/p&gt;
  /// [kernelId] &lt;p&gt;The kernel associated with this instance, if applicable.&lt;/p&gt;
  /// [keyName] &lt;p&gt;The name of the key pair, if this instance was launched with an associated key pair.&lt;/p&gt;
  /// [launchTime] &lt;p&gt;The time the instance was launched.&lt;/p&gt;
  /// [licenses] &lt;p&gt;The license configurations for the instance.&lt;/p&gt;
  /// [maintenanceOptions] &lt;p&gt;Provides information on the recovery and maintenance options of your instance.&lt;/p&gt;
  /// [metadataOptions] &lt;p&gt;The metadata options for the instance.&lt;/p&gt;
  /// [monitoring] &lt;p&gt;The monitoring for the instance.&lt;/p&gt;
  /// [networkInterfaces] &lt;p&gt;The network interfaces for the instance.&lt;/p&gt;
  /// [outpostArn] &lt;p&gt;The Amazon Resource Name (ARN) of the Outpost.&lt;/p&gt;
  /// [placement] &lt;p&gt;The location where the instance launched, if applicable.&lt;/p&gt;
  /// [platform] &lt;p&gt;The platform. This value is &lt;code&gt;windows&lt;/code&gt; for Windows instances; otherwise, it is empty.&lt;/p&gt;
  /// [platformDetails] &lt;p&gt;The platform details value for the instance. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html'&gt;AMI billing information fields&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [privateDnsName] &lt;p&gt;[IPv4 only] The private DNS hostname name assigned to the instance. This DNS hostname can only be used inside the Amazon EC2 network. This name is not available until the instance enters the &lt;code&gt;running&lt;/code&gt; state. &lt;/p&gt; &lt;p&gt;The Amazon-provided DNS server resolves Amazon-provided private DNS hostnames if you've enabled DNS resolution and DNS hostnames in your VPC. If you are not using the Amazon-provided DNS server in your VPC, your custom domain name servers must resolve the hostname as appropriate.&lt;/p&gt;
  /// [privateDnsNameOptions] &lt;p&gt;The options for the instance hostname.&lt;/p&gt;
  /// [privateIpAddress] &lt;p&gt;The private IPv4 address assigned to the instance.&lt;/p&gt;
  /// [productCodes] &lt;p&gt;The product codes attached to this instance, if applicable.&lt;/p&gt;
  /// [publicDnsName] &lt;p&gt;[IPv4 only] The public DNS name assigned to the instance. This name is not available until the instance enters the &lt;code&gt;running&lt;/code&gt; state. This name is only available if you've enabled DNS hostnames for your VPC.&lt;/p&gt;
  /// [publicIpAddress] &lt;p&gt;The public IPv4 address, or the Carrier IP address assigned to the instance, if applicable.&lt;/p&gt; &lt;p&gt;A Carrier IP address only applies to an instance launched in a subnet associated with a Wavelength Zone.&lt;/p&gt;
  /// [ramdiskId] &lt;p&gt;The RAM disk associated with this instance, if applicable.&lt;/p&gt;
  /// [rootDeviceName] &lt;p&gt;The device name of the root device volume (for example, &lt;code&gt;/dev/sda1&lt;/code&gt;).&lt;/p&gt;
  /// [rootDeviceType] &lt;p&gt;The root device type used by the AMI. The AMI can use an EBS volume or an instance store volume.&lt;/p&gt;
  /// [securityGroups] &lt;p&gt;The security groups for the instance.&lt;/p&gt;
  /// [sourceDestCheck] &lt;p&gt;Indicates whether source/destination checking is enabled.&lt;/p&gt;
  /// [spotInstanceRequestId] &lt;p&gt;If the request is a Spot Instance request, the ID of the request.&lt;/p&gt;
  /// [sriovNetSupport] &lt;p&gt;Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.&lt;/p&gt;
  /// [state] &lt;p&gt;The current state of the instance.&lt;/p&gt;
  /// [stateReason] &lt;p&gt;The reason for the most recent state transition.&lt;/p&gt;
  /// [stateTransitionReason] &lt;p&gt;The reason for the most recent state transition. This might be an empty string.&lt;/p&gt;
  /// [subnetId] &lt;p&gt;The ID of the subnet in which the instance is running.&lt;/p&gt;
  /// [tags] &lt;p&gt;Any tags assigned to the instance.&lt;/p&gt;
  /// [tpmSupport] &lt;p&gt;If the instance is configured for NitroTPM support, the value is &lt;code&gt;v2.0&lt;/code&gt;. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html'&gt;NitroTPM&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [usageOperation] &lt;p&gt;The usage operation value for the instance. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html'&gt;AMI billing information fields&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [usageOperationUpdateTime] &lt;p&gt;The time that the usage operation was last updated.&lt;/p&gt;
  /// [virtualizationType] &lt;p&gt;The virtualization type of the instance.&lt;/p&gt;
  /// [vpcId] &lt;p&gt;The ID of the VPC in which the instance is running.&lt;/p&gt;
  const AwsEc2InstanceProperties({
    this.amiLaunchIndex,
    this.architecture,
    this.blockDeviceMappings,
    this.bootMode,
    this.capacityReservationId,
    this.capacityReservationSpecification,
    this.clientToken,
    this.cpuOptions,
    this.currentInstanceBootMode,
    this.ebsOptimized,
    this.elasticGpuAssociations,
    this.elasticInferenceAcceleratorAssociations,
    this.enaSupport,
    this.enclaveOptions,
    this.hibernationOptions,
    this.hypervisor,
    this.iamInstanceProfile,
    this.imageId,
    this.instanceId,
    this.instanceLifecycle,
    this.instanceType,
    this.ipv6Address,
    this.kernelId,
    this.keyName,
    this.launchTime,
    this.licenses,
    this.maintenanceOptions,
    this.metadataOptions,
    this.monitoring,
    this.networkInterfaces,
    this.outpostArn,
    this.placement,
    this.platform,
    this.platformDetails,
    this.privateDnsName,
    this.privateDnsNameOptions,
    this.privateIpAddress,
    this.productCodes,
    this.publicDnsName,
    this.publicIpAddress,
    this.ramdiskId,
    this.rootDeviceName,
    this.rootDeviceType,
    this.securityGroups,
    this.sourceDestCheck,
    this.spotInstanceRequestId,
    this.sriovNetSupport,
    this.state,
    this.stateReason,
    this.stateTransitionReason,
    this.subnetId,
    this.tags,
    this.tpmSupport,
    this.usageOperation,
    this.usageOperationUpdateTime,
    this.virtualizationType,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiLaunchIndex': ?amiLaunchIndex,
      'architecture': ?pulumi.Input.mapOptionalInputValue<ArchitectureValuesEnumValue, Map<String, dynamic>>(architecture, (value) => value.toMap()),
      'blockDeviceMappings': ?pulumi.Input.mapOptionalInputValue<List<InstanceBlockDeviceMapping>, List<Map<String, dynamic>>>(blockDeviceMappings, (value) => pulumi.Input.encodeList<InstanceBlockDeviceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootMode': ?pulumi.Input.mapOptionalInputValue<BootModeValuesEnumValue, Map<String, dynamic>>(bootMode, (value) => value.toMap()),
      'capacityReservationId': ?capacityReservationId,
      'capacityReservationSpecification': ?pulumi.Input.mapOptionalInputValue<CapacityReservationSpecificationResponse, Map<String, dynamic>>(capacityReservationSpecification, (value) => value.toMap()),
      'clientToken': ?clientToken,
      'cpuOptions': ?pulumi.Input.mapOptionalInputValue<CpuOptions, Map<String, dynamic>>(cpuOptions, (value) => value.toMap()),
      'currentInstanceBootMode': ?pulumi.Input.mapOptionalInputValue<InstanceBootModeValuesEnumValue, Map<String, dynamic>>(currentInstanceBootMode, (value) => value.toMap()),
      'ebsOptimized': ?ebsOptimized,
      'elasticGpuAssociations': ?pulumi.Input.mapOptionalInputValue<List<ElasticGpuAssociation>, List<Map<String, dynamic>>>(elasticGpuAssociations, (value) => pulumi.Input.encodeList<ElasticGpuAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'elasticInferenceAcceleratorAssociations': ?pulumi.Input.mapOptionalInputValue<List<ElasticInferenceAcceleratorAssociation>, List<Map<String, dynamic>>>(elasticInferenceAcceleratorAssociations, (value) => pulumi.Input.encodeList<ElasticInferenceAcceleratorAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enaSupport': ?enaSupport,
      'enclaveOptions': ?pulumi.Input.mapOptionalInputValue<EnclaveOptions, Map<String, dynamic>>(enclaveOptions, (value) => value.toMap()),
      'hibernationOptions': ?pulumi.Input.mapOptionalInputValue<HibernationOptions, Map<String, dynamic>>(hibernationOptions, (value) => value.toMap()),
      'hypervisor': ?pulumi.Input.mapOptionalInputValue<HypervisorTypeEnumValue, Map<String, dynamic>>(hypervisor, (value) => value.toMap()),
      'iamInstanceProfile': ?pulumi.Input.mapOptionalInputValue<IamInstanceProfile, Map<String, dynamic>>(iamInstanceProfile, (value) => value.toMap()),
      'imageId': ?imageId,
      'instanceId': ?instanceId,
      'instanceLifecycle': ?pulumi.Input.mapOptionalInputValue<InstanceLifecycleTypeEnumValue, Map<String, dynamic>>(instanceLifecycle, (value) => value.toMap()),
      'instanceType': ?pulumi.Input.mapOptionalInputValue<InstanceTypeEnumValue, Map<String, dynamic>>(instanceType, (value) => value.toMap()),
      'ipv6Address': ?ipv6Address,
      'kernelId': ?kernelId,
      'keyName': ?keyName,
      'launchTime': ?launchTime,
      'licenses': ?pulumi.Input.mapOptionalInputValue<List<LicenseConfiguration>, List<Map<String, dynamic>>>(licenses, (value) => pulumi.Input.encodeList<LicenseConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceOptions': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenanceOptions, Map<String, dynamic>>(maintenanceOptions, (value) => value.toMap()),
      'metadataOptions': ?pulumi.Input.mapOptionalInputValue<InstanceMetadataOptionsResponse, Map<String, dynamic>>(metadataOptions, (value) => value.toMap()),
      'monitoring': ?pulumi.Input.mapOptionalInputValue<Monitoring, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<InstanceNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<InstanceNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outpostArn': ?outpostArn,
      'placement': ?pulumi.Input.mapOptionalInputValue<Placement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'platform': ?pulumi.Input.mapOptionalInputValue<PlatformValuesEnumValue, Map<String, dynamic>>(platform, (value) => value.toMap()),
      'platformDetails': ?platformDetails,
      'privateDnsName': ?privateDnsName,
      'privateDnsNameOptions': ?pulumi.Input.mapOptionalInputValue<PrivateDnsNameOptionsResponse, Map<String, dynamic>>(privateDnsNameOptions, (value) => value.toMap()),
      'privateIpAddress': ?privateIpAddress,
      'productCodes': ?pulumi.Input.mapOptionalInputValue<List<ProductCode>, List<Map<String, dynamic>>>(productCodes, (value) => pulumi.Input.encodeList<ProductCode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicDnsName': ?publicDnsName,
      'publicIpAddress': ?publicIpAddress,
      'ramdiskId': ?ramdiskId,
      'rootDeviceName': ?rootDeviceName,
      'rootDeviceType': ?pulumi.Input.mapOptionalInputValue<DeviceTypeEnumValue, Map<String, dynamic>>(rootDeviceType, (value) => value.toMap()),
      'securityGroups': ?pulumi.Input.mapOptionalInputValue<List<GroupIdentifier>, List<Map<String, dynamic>>>(securityGroups, (value) => pulumi.Input.encodeList<GroupIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceDestCheck': ?sourceDestCheck,
      'spotInstanceRequestId': ?spotInstanceRequestId,
      'sriovNetSupport': ?sriovNetSupport,
      'state': ?pulumi.Input.mapOptionalInputValue<InstanceState, Map<String, dynamic>>(state, (value) => value.toMap()),
      'stateReason': ?pulumi.Input.mapOptionalInputValue<StateReason, Map<String, dynamic>>(stateReason, (value) => value.toMap()),
      'stateTransitionReason': ?stateTransitionReason,
      'subnetId': ?subnetId,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tpmSupport': ?tpmSupport,
      'usageOperation': ?usageOperation,
      'usageOperationUpdateTime': ?usageOperationUpdateTime,
      'virtualizationType': ?pulumi.Input.mapOptionalInputValue<VirtualizationTypeEnumValue, Map<String, dynamic>>(virtualizationType, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2InstanceProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2InstanceProperties(
      amiLaunchIndex: (() { final guardedValue = map['amiLaunchIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArchitectureValuesEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blockDeviceMappings: (() { final guardedValue = map['blockDeviceMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceBlockDeviceMapping>(guardedValue, (value) => InstanceBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bootMode: (() { final guardedValue = map['bootMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BootModeValuesEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capacityReservationId: (() { final guardedValue = map['capacityReservationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityReservationSpecification: (() { final guardedValue = map['capacityReservationSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityReservationSpecificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientToken: (() { final guardedValue = map['clientToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuOptions: (() { final guardedValue = map['cpuOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CpuOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      currentInstanceBootMode: (() { final guardedValue = map['currentInstanceBootMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceBootModeValuesEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ebsOptimized: (() { final guardedValue = map['ebsOptimized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      elasticGpuAssociations: (() { final guardedValue = map['elasticGpuAssociations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ElasticGpuAssociation>(guardedValue, (value) => ElasticGpuAssociation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      elasticInferenceAcceleratorAssociations: (() { final guardedValue = map['elasticInferenceAcceleratorAssociations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ElasticInferenceAcceleratorAssociation>(guardedValue, (value) => ElasticInferenceAcceleratorAssociation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enaSupport: (() { final guardedValue = map['enaSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enclaveOptions: (() { final guardedValue = map['enclaveOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnclaveOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hibernationOptions: (() { final guardedValue = map['hibernationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HibernationOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hypervisor: (() { final guardedValue = map['hypervisor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HypervisorTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iamInstanceProfile: (() { final guardedValue = map['iamInstanceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IamInstanceProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceLifecycle: (() { final guardedValue = map['instanceLifecycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceLifecycleTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kernelId: (() { final guardedValue = map['kernelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTime: (() { final guardedValue = map['launchTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenses: (() { final guardedValue = map['licenses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LicenseConfiguration>(guardedValue, (value) => LicenseConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maintenanceOptions: (() { final guardedValue = map['maintenanceOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMaintenanceOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadataOptions: (() { final guardedValue = map['metadataOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMetadataOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoring: (() { final guardedValue = map['monitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Monitoring.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceNetworkInterface>(guardedValue, (value) => InstanceNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Placement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlatformValuesEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platformDetails: (() { final guardedValue = map['platformDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsName: (() { final guardedValue = map['privateDnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsNameOptions: (() { final guardedValue = map['privateDnsNameOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateDnsNameOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productCodes: (() { final guardedValue = map['productCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProductCode>(guardedValue, (value) => ProductCode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicDnsName: (() { final guardedValue = map['publicDnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddress: (() { final guardedValue = map['publicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ramdiskId: (() { final guardedValue = map['ramdiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootDeviceName: (() { final guardedValue = map['rootDeviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootDeviceType: (() { final guardedValue = map['rootDeviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupIdentifier>(guardedValue, (value) => GroupIdentifier.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceDestCheck: (() { final guardedValue = map['sourceDestCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      spotInstanceRequestId: (() { final guardedValue = map['spotInstanceRequestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sriovNetSupport: (() { final guardedValue = map['sriovNetSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StateReason.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stateTransitionReason: (() { final guardedValue = map['stateTransitionReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tpmSupport: (() { final guardedValue = map['tpmSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageOperation: (() { final guardedValue = map['usageOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageOperationUpdateTime: (() { final guardedValue = map['usageOperationUpdateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualizationType: (() { final guardedValue = map['virtualizationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualizationTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
