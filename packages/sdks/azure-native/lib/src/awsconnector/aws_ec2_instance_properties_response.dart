// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'architecture_values_enum_value_response.dart';
import 'boot_mode_values_enum_value_response.dart';
import 'capacity_reservation_specification_response_response.dart';
import 'cpu_options_response.dart';
import 'device_type_enum_value_response.dart';
import 'elastic_gpu_association_response.dart';
import 'elastic_inference_accelerator_association_response.dart';
import 'enclave_options_response.dart';
import 'group_identifier_response.dart';
import 'hibernation_options_response.dart';
import 'hypervisor_type_enum_value_response.dart';
import 'iam_instance_profile_response.dart';
import 'instance_block_device_mapping_response.dart';
import 'instance_boot_mode_values_enum_value_response.dart';
import 'instance_lifecycle_type_enum_value_response.dart';
import 'instance_maintenance_options_response.dart';
import 'instance_metadata_options_response_response.dart';
import 'instance_network_interface_response.dart';
import 'instance_state_response.dart';
import 'instance_type_enum_value_response.dart';
import 'license_configuration_response.dart';
import 'monitoring_response.dart';
import 'placement_response.dart';
import 'platform_values_enum_value_response.dart';
import 'private_dns_name_options_response_response.dart';
import 'product_code_response.dart';
import 'state_reason_response.dart';
import 'tag_response.dart';
import 'virtualization_type_enum_value_response.dart';

/// Definition of awsEc2Instance
class AwsEc2InstancePropertiesResponse {
  /// <p>The AMI launch index, which can be used to find this instance in the launch group.</p>
  final int? amiLaunchIndex;
  /// <p>The architecture of the image.</p>
  final ArchitectureValuesEnumValueResponse? architecture;
  /// <p>Any block device mapping entries for the instance.</p>
  final List<InstanceBlockDeviceMappingResponse>? blockDeviceMappings;
  /// <p>The boot mode that was specified by the AMI. If the value is <code>uefi-preferred</code>, the AMI supports both UEFI and Legacy BIOS. The <code>currentInstanceBootMode</code> parameter is the boot mode that is used to boot the instance at launch or start.</p> <note> <p>The operating system contained in the AMI must be configured to support the specified boot mode.</p> </note> <p>For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html'>Boot modes</a> in the <i>Amazon EC2 User Guide</i>.</p>
  final BootModeValuesEnumValueResponse? bootMode;
  /// <p>The ID of the Capacity Reservation.</p>
  final String? capacityReservationId;
  /// <p>Information about the Capacity Reservation targeting option.</p>
  final CapacityReservationSpecificationResponseResponse? capacityReservationSpecification;
  /// <p>The idempotency token you provided when you launched the instance, if applicable.</p>
  final String? clientToken;
  /// <p>The CPU options for the instance.</p>
  final CpuOptionsResponse? cpuOptions;
  /// <p>The boot mode that is used to boot the instance at launch or start. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html'>Boot modes</a> in the <i>Amazon EC2 User Guide</i>.</p>
  final InstanceBootModeValuesEnumValueResponse? currentInstanceBootMode;
  /// <p>Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.</p>
  final bool? ebsOptimized;
  /// <p>Deprecated.</p> <note> <p>Amazon Elastic Graphics reached end of life on January 8, 2024. For workloads that require graphics acceleration, we recommend that you use Amazon EC2 G4ad, G4dn, or G5 instances.</p> </note>
  final List<ElasticGpuAssociationResponse>? elasticGpuAssociations;
  /// <p>The elastic inference accelerator associated with the instance.</p>
  final List<ElasticInferenceAcceleratorAssociationResponse>? elasticInferenceAcceleratorAssociations;
  /// <p>Specifies whether enhanced networking with ENA is enabled.</p>
  final bool? enaSupport;
  /// <p>Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.</p>
  final EnclaveOptionsResponse? enclaveOptions;
  /// <p>Indicates whether the instance is enabled for hibernation.</p>
  final HibernationOptionsResponse? hibernationOptions;
  /// <p>The hypervisor type of the instance. The value <code>xen</code> is used for both Xen and Nitro hypervisors.</p>
  final HypervisorTypeEnumValueResponse? hypervisor;
  /// <p>The IAM instance profile associated with the instance, if applicable.</p>
  final IamInstanceProfileResponse? iamInstanceProfile;
  /// <p>The ID of the AMI used to launch the instance.</p>
  final String? imageId;
  /// <p>The ID of the instance.</p>
  final String? instanceId;
  /// <p>Indicates whether this is a Spot Instance or a Scheduled Instance.</p>
  final InstanceLifecycleTypeEnumValueResponse? instanceLifecycle;
  /// <p>The instance type.</p>
  final InstanceTypeEnumValueResponse? instanceType;
  /// <p>The IPv6 address assigned to the instance.</p>
  final String? ipv6Address;
  /// <p>The kernel associated with this instance, if applicable.</p>
  final String? kernelId;
  /// <p>The name of the key pair, if this instance was launched with an associated key pair.</p>
  final String? keyName;
  /// <p>The time the instance was launched.</p>
  final String? launchTime;
  /// <p>The license configurations for the instance.</p>
  final List<LicenseConfigurationResponse>? licenses;
  /// <p>Provides information on the recovery and maintenance options of your instance.</p>
  final InstanceMaintenanceOptionsResponse? maintenanceOptions;
  /// <p>The metadata options for the instance.</p>
  final InstanceMetadataOptionsResponseResponse? metadataOptions;
  /// <p>The monitoring for the instance.</p>
  final MonitoringResponse? monitoring;
  /// <p>The network interfaces for the instance.</p>
  final List<InstanceNetworkInterfaceResponse>? networkInterfaces;
  /// <p>The Amazon Resource Name (ARN) of the Outpost.</p>
  final String? outpostArn;
  /// <p>The location where the instance launched, if applicable.</p>
  final PlacementResponse? placement;
  /// <p>The platform. This value is <code>windows</code> for Windows instances; otherwise, it is empty.</p>
  final PlatformValuesEnumValueResponse? platform;
  /// <p>The platform details value for the instance. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html'>AMI billing information fields</a> in the <i>Amazon EC2 User Guide</i>.</p>
  final String? platformDetails;
  /// <p>[IPv4 only] The private DNS hostname name assigned to the instance. This DNS hostname can only be used inside the Amazon EC2 network. This name is not available until the instance enters the <code>running</code> state. </p> <p>The Amazon-provided DNS server resolves Amazon-provided private DNS hostnames if you've enabled DNS resolution and DNS hostnames in your VPC. If you are not using the Amazon-provided DNS server in your VPC, your custom domain name servers must resolve the hostname as appropriate.</p>
  final String? privateDnsName;
  /// <p>The options for the instance hostname.</p>
  final PrivateDnsNameOptionsResponseResponse? privateDnsNameOptions;
  /// <p>The private IPv4 address assigned to the instance.</p>
  final String? privateIpAddress;
  /// <p>The product codes attached to this instance, if applicable.</p>
  final List<ProductCodeResponse>? productCodes;
  /// <p>[IPv4 only] The public DNS name assigned to the instance. This name is not available until the instance enters the <code>running</code> state. This name is only available if you've enabled DNS hostnames for your VPC.</p>
  final String? publicDnsName;
  /// <p>The public IPv4 address, or the Carrier IP address assigned to the instance, if applicable.</p> <p>A Carrier IP address only applies to an instance launched in a subnet associated with a Wavelength Zone.</p>
  final String? publicIpAddress;
  /// <p>The RAM disk associated with this instance, if applicable.</p>
  final String? ramdiskId;
  /// <p>The device name of the root device volume (for example, <code>/dev/sda1</code>).</p>
  final String? rootDeviceName;
  /// <p>The root device type used by the AMI. The AMI can use an EBS volume or an instance store volume.</p>
  final DeviceTypeEnumValueResponse? rootDeviceType;
  /// <p>The security groups for the instance.</p>
  final List<GroupIdentifierResponse>? securityGroups;
  /// <p>Indicates whether source/destination checking is enabled.</p>
  final bool? sourceDestCheck;
  /// <p>If the request is a Spot Instance request, the ID of the request.</p>
  final String? spotInstanceRequestId;
  /// <p>Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.</p>
  final String? sriovNetSupport;
  /// <p>The current state of the instance.</p>
  final InstanceStateResponse? state;
  /// <p>The reason for the most recent state transition.</p>
  final StateReasonResponse? stateReason;
  /// <p>The reason for the most recent state transition. This might be an empty string.</p>
  final String? stateTransitionReason;
  /// <p>The ID of the subnet in which the instance is running.</p>
  final String? subnetId;
  /// <p>Any tags assigned to the instance.</p>
  final List<TagResponse>? tags;
  /// <p>If the instance is configured for NitroTPM support, the value is <code>v2.0</code>. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html'>NitroTPM</a> in the <i>Amazon EC2 User Guide</i>.</p>
  final String? tpmSupport;
  /// <p>The usage operation value for the instance. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html'>AMI billing information fields</a> in the <i>Amazon EC2 User Guide</i>.</p>
  final String? usageOperation;
  /// <p>The time that the usage operation was last updated.</p>
  final String? usageOperationUpdateTime;
  /// <p>The virtualization type of the instance.</p>
  final VirtualizationTypeEnumValueResponse? virtualizationType;
  /// <p>The ID of the VPC in which the instance is running.</p>
  final String? vpcId;

  /// Creates a new [AwsEc2InstancePropertiesResponse].
  /// [amiLaunchIndex] <p>The AMI launch index, which can be used to find this instance in the launch group.</p>
  /// [architecture] <p>The architecture of the image.</p>
  /// [blockDeviceMappings] <p>Any block device mapping entries for the instance.</p>
  /// [bootMode] <p>The boot mode that was specified by the AMI. If the value is <code>uefi-preferred</code>, the AMI supports both UEFI and Legacy BIOS. The <code>currentInstanceBootMode</code> parameter is the boot mode that is used to boot the instance at launch or start.</p> <note> <p>The operating system contained in the AMI must be configured to support the specified boot mode.</p> </note> <p>For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html'>Boot modes</a> in the <i>Amazon EC2 User Guide</i>.</p>
  /// [capacityReservationId] <p>The ID of the Capacity Reservation.</p>
  /// [capacityReservationSpecification] <p>Information about the Capacity Reservation targeting option.</p>
  /// [clientToken] <p>The idempotency token you provided when you launched the instance, if applicable.</p>
  /// [cpuOptions] <p>The CPU options for the instance.</p>
  /// [currentInstanceBootMode] <p>The boot mode that is used to boot the instance at launch or start. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html'>Boot modes</a> in the <i>Amazon EC2 User Guide</i>.</p>
  /// [ebsOptimized] <p>Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.</p>
  /// [elasticGpuAssociations] <p>Deprecated.</p> <note> <p>Amazon Elastic Graphics reached end of life on January 8, 2024. For workloads that require graphics acceleration, we recommend that you use Amazon EC2 G4ad, G4dn, or G5 instances.</p> </note>
  /// [elasticInferenceAcceleratorAssociations] <p>The elastic inference accelerator associated with the instance.</p>
  /// [enaSupport] <p>Specifies whether enhanced networking with ENA is enabled.</p>
  /// [enclaveOptions] <p>Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.</p>
  /// [hibernationOptions] <p>Indicates whether the instance is enabled for hibernation.</p>
  /// [hypervisor] <p>The hypervisor type of the instance. The value <code>xen</code> is used for both Xen and Nitro hypervisors.</p>
  /// [iamInstanceProfile] <p>The IAM instance profile associated with the instance, if applicable.</p>
  /// [imageId] <p>The ID of the AMI used to launch the instance.</p>
  /// [instanceId] <p>The ID of the instance.</p>
  /// [instanceLifecycle] <p>Indicates whether this is a Spot Instance or a Scheduled Instance.</p>
  /// [instanceType] <p>The instance type.</p>
  /// [ipv6Address] <p>The IPv6 address assigned to the instance.</p>
  /// [kernelId] <p>The kernel associated with this instance, if applicable.</p>
  /// [keyName] <p>The name of the key pair, if this instance was launched with an associated key pair.</p>
  /// [launchTime] <p>The time the instance was launched.</p>
  /// [licenses] <p>The license configurations for the instance.</p>
  /// [maintenanceOptions] <p>Provides information on the recovery and maintenance options of your instance.</p>
  /// [metadataOptions] <p>The metadata options for the instance.</p>
  /// [monitoring] <p>The monitoring for the instance.</p>
  /// [networkInterfaces] <p>The network interfaces for the instance.</p>
  /// [outpostArn] <p>The Amazon Resource Name (ARN) of the Outpost.</p>
  /// [placement] <p>The location where the instance launched, if applicable.</p>
  /// [platform] <p>The platform. This value is <code>windows</code> for Windows instances; otherwise, it is empty.</p>
  /// [platformDetails] <p>The platform details value for the instance. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html'>AMI billing information fields</a> in the <i>Amazon EC2 User Guide</i>.</p>
  /// [privateDnsName] <p>[IPv4 only] The private DNS hostname name assigned to the instance. This DNS hostname can only be used inside the Amazon EC2 network. This name is not available until the instance enters the <code>running</code> state. </p> <p>The Amazon-provided DNS server resolves Amazon-provided private DNS hostnames if you've enabled DNS resolution and DNS hostnames in your VPC. If you are not using the Amazon-provided DNS server in your VPC, your custom domain name servers must resolve the hostname as appropriate.</p>
  /// [privateDnsNameOptions] <p>The options for the instance hostname.</p>
  /// [privateIpAddress] <p>The private IPv4 address assigned to the instance.</p>
  /// [productCodes] <p>The product codes attached to this instance, if applicable.</p>
  /// [publicDnsName] <p>[IPv4 only] The public DNS name assigned to the instance. This name is not available until the instance enters the <code>running</code> state. This name is only available if you've enabled DNS hostnames for your VPC.</p>
  /// [publicIpAddress] <p>The public IPv4 address, or the Carrier IP address assigned to the instance, if applicable.</p> <p>A Carrier IP address only applies to an instance launched in a subnet associated with a Wavelength Zone.</p>
  /// [ramdiskId] <p>The RAM disk associated with this instance, if applicable.</p>
  /// [rootDeviceName] <p>The device name of the root device volume (for example, <code>/dev/sda1</code>).</p>
  /// [rootDeviceType] <p>The root device type used by the AMI. The AMI can use an EBS volume or an instance store volume.</p>
  /// [securityGroups] <p>The security groups for the instance.</p>
  /// [sourceDestCheck] <p>Indicates whether source/destination checking is enabled.</p>
  /// [spotInstanceRequestId] <p>If the request is a Spot Instance request, the ID of the request.</p>
  /// [sriovNetSupport] <p>Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.</p>
  /// [state] <p>The current state of the instance.</p>
  /// [stateReason] <p>The reason for the most recent state transition.</p>
  /// [stateTransitionReason] <p>The reason for the most recent state transition. This might be an empty string.</p>
  /// [subnetId] <p>The ID of the subnet in which the instance is running.</p>
  /// [tags] <p>Any tags assigned to the instance.</p>
  /// [tpmSupport] <p>If the instance is configured for NitroTPM support, the value is <code>v2.0</code>. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html'>NitroTPM</a> in the <i>Amazon EC2 User Guide</i>.</p>
  /// [usageOperation] <p>The usage operation value for the instance. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html'>AMI billing information fields</a> in the <i>Amazon EC2 User Guide</i>.</p>
  /// [usageOperationUpdateTime] <p>The time that the usage operation was last updated.</p>
  /// [virtualizationType] <p>The virtualization type of the instance.</p>
  /// [vpcId] <p>The ID of the VPC in which the instance is running.</p>
  AwsEc2InstancePropertiesResponse({
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
      'architecture': ?architecture == null ? null : architecture!.toMap(),
      'blockDeviceMappings': ?blockDeviceMappings == null ? null : pulumi.Input.encodeList<InstanceBlockDeviceMappingResponse, Map<String, dynamic>>(blockDeviceMappings!, (value) => value.toMap()),
      'bootMode': ?bootMode == null ? null : bootMode!.toMap(),
      'capacityReservationId': ?capacityReservationId,
      'capacityReservationSpecification': ?capacityReservationSpecification == null ? null : capacityReservationSpecification!.toMap(),
      'clientToken': ?clientToken,
      'cpuOptions': ?cpuOptions == null ? null : cpuOptions!.toMap(),
      'currentInstanceBootMode': ?currentInstanceBootMode == null ? null : currentInstanceBootMode!.toMap(),
      'ebsOptimized': ?ebsOptimized,
      'elasticGpuAssociations': ?elasticGpuAssociations == null ? null : pulumi.Input.encodeList<ElasticGpuAssociationResponse, Map<String, dynamic>>(elasticGpuAssociations!, (value) => value.toMap()),
      'elasticInferenceAcceleratorAssociations': ?elasticInferenceAcceleratorAssociations == null ? null : pulumi.Input.encodeList<ElasticInferenceAcceleratorAssociationResponse, Map<String, dynamic>>(elasticInferenceAcceleratorAssociations!, (value) => value.toMap()),
      'enaSupport': ?enaSupport,
      'enclaveOptions': ?enclaveOptions == null ? null : enclaveOptions!.toMap(),
      'hibernationOptions': ?hibernationOptions == null ? null : hibernationOptions!.toMap(),
      'hypervisor': ?hypervisor == null ? null : hypervisor!.toMap(),
      'iamInstanceProfile': ?iamInstanceProfile == null ? null : iamInstanceProfile!.toMap(),
      'imageId': ?imageId,
      'instanceId': ?instanceId,
      'instanceLifecycle': ?instanceLifecycle == null ? null : instanceLifecycle!.toMap(),
      'instanceType': ?instanceType == null ? null : instanceType!.toMap(),
      'ipv6Address': ?ipv6Address,
      'kernelId': ?kernelId,
      'keyName': ?keyName,
      'launchTime': ?launchTime,
      'licenses': ?licenses == null ? null : pulumi.Input.encodeList<LicenseConfigurationResponse, Map<String, dynamic>>(licenses!, (value) => value.toMap()),
      'maintenanceOptions': ?maintenanceOptions == null ? null : maintenanceOptions!.toMap(),
      'metadataOptions': ?metadataOptions == null ? null : metadataOptions!.toMap(),
      'monitoring': ?monitoring == null ? null : monitoring!.toMap(),
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<InstanceNetworkInterfaceResponse, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
      'outpostArn': ?outpostArn,
      'placement': ?placement == null ? null : placement!.toMap(),
      'platform': ?platform == null ? null : platform!.toMap(),
      'platformDetails': ?platformDetails,
      'privateDnsName': ?privateDnsName,
      'privateDnsNameOptions': ?privateDnsNameOptions == null ? null : privateDnsNameOptions!.toMap(),
      'privateIpAddress': ?privateIpAddress,
      'productCodes': ?productCodes == null ? null : pulumi.Input.encodeList<ProductCodeResponse, Map<String, dynamic>>(productCodes!, (value) => value.toMap()),
      'publicDnsName': ?publicDnsName,
      'publicIpAddress': ?publicIpAddress,
      'ramdiskId': ?ramdiskId,
      'rootDeviceName': ?rootDeviceName,
      'rootDeviceType': ?rootDeviceType == null ? null : rootDeviceType!.toMap(),
      'securityGroups': ?securityGroups == null ? null : pulumi.Input.encodeList<GroupIdentifierResponse, Map<String, dynamic>>(securityGroups!, (value) => value.toMap()),
      'sourceDestCheck': ?sourceDestCheck,
      'spotInstanceRequestId': ?spotInstanceRequestId,
      'sriovNetSupport': ?sriovNetSupport,
      'state': ?state == null ? null : state!.toMap(),
      'stateReason': ?stateReason == null ? null : stateReason!.toMap(),
      'stateTransitionReason': ?stateTransitionReason,
      'subnetId': ?subnetId,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'tpmSupport': ?tpmSupport,
      'usageOperation': ?usageOperation,
      'usageOperationUpdateTime': ?usageOperationUpdateTime,
      'virtualizationType': ?virtualizationType == null ? null : virtualizationType!.toMap(),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2InstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2InstancePropertiesResponse(
      amiLaunchIndex: map['amiLaunchIndex'] == null ? null : map['amiLaunchIndex'] as int,
      architecture: map['architecture'] == null ? null : ArchitectureValuesEnumValueResponse.fromMap((map['architecture'] as Map).cast<String, dynamic>()),
      blockDeviceMappings: map['blockDeviceMappings'] == null ? null : pulumi.Input.decodeList<InstanceBlockDeviceMappingResponse>(map['blockDeviceMappings'], (value) => InstanceBlockDeviceMappingResponse.fromMap((value as Map).cast<String, dynamic>())),
      bootMode: map['bootMode'] == null ? null : BootModeValuesEnumValueResponse.fromMap((map['bootMode'] as Map).cast<String, dynamic>()),
      capacityReservationId: map['capacityReservationId'] == null ? null : map['capacityReservationId'] as String,
      capacityReservationSpecification: map['capacityReservationSpecification'] == null ? null : CapacityReservationSpecificationResponseResponse.fromMap((map['capacityReservationSpecification'] as Map).cast<String, dynamic>()),
      clientToken: map['clientToken'] == null ? null : map['clientToken'] as String,
      cpuOptions: map['cpuOptions'] == null ? null : CpuOptionsResponse.fromMap((map['cpuOptions'] as Map).cast<String, dynamic>()),
      currentInstanceBootMode: map['currentInstanceBootMode'] == null ? null : InstanceBootModeValuesEnumValueResponse.fromMap((map['currentInstanceBootMode'] as Map).cast<String, dynamic>()),
      ebsOptimized: map['ebsOptimized'] == null ? null : map['ebsOptimized'] as bool,
      elasticGpuAssociations: map['elasticGpuAssociations'] == null ? null : pulumi.Input.decodeList<ElasticGpuAssociationResponse>(map['elasticGpuAssociations'], (value) => ElasticGpuAssociationResponse.fromMap((value as Map).cast<String, dynamic>())),
      elasticInferenceAcceleratorAssociations: map['elasticInferenceAcceleratorAssociations'] == null ? null : pulumi.Input.decodeList<ElasticInferenceAcceleratorAssociationResponse>(map['elasticInferenceAcceleratorAssociations'], (value) => ElasticInferenceAcceleratorAssociationResponse.fromMap((value as Map).cast<String, dynamic>())),
      enaSupport: map['enaSupport'] == null ? null : map['enaSupport'] as bool,
      enclaveOptions: map['enclaveOptions'] == null ? null : EnclaveOptionsResponse.fromMap((map['enclaveOptions'] as Map).cast<String, dynamic>()),
      hibernationOptions: map['hibernationOptions'] == null ? null : HibernationOptionsResponse.fromMap((map['hibernationOptions'] as Map).cast<String, dynamic>()),
      hypervisor: map['hypervisor'] == null ? null : HypervisorTypeEnumValueResponse.fromMap((map['hypervisor'] as Map).cast<String, dynamic>()),
      iamInstanceProfile: map['iamInstanceProfile'] == null ? null : IamInstanceProfileResponse.fromMap((map['iamInstanceProfile'] as Map).cast<String, dynamic>()),
      imageId: map['imageId'] == null ? null : map['imageId'] as String,
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      instanceLifecycle: map['instanceLifecycle'] == null ? null : InstanceLifecycleTypeEnumValueResponse.fromMap((map['instanceLifecycle'] as Map).cast<String, dynamic>()),
      instanceType: map['instanceType'] == null ? null : InstanceTypeEnumValueResponse.fromMap((map['instanceType'] as Map).cast<String, dynamic>()),
      ipv6Address: map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      kernelId: map['kernelId'] == null ? null : map['kernelId'] as String,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      launchTime: map['launchTime'] == null ? null : map['launchTime'] as String,
      licenses: map['licenses'] == null ? null : pulumi.Input.decodeList<LicenseConfigurationResponse>(map['licenses'], (value) => LicenseConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      maintenanceOptions: map['maintenanceOptions'] == null ? null : InstanceMaintenanceOptionsResponse.fromMap((map['maintenanceOptions'] as Map).cast<String, dynamic>()),
      metadataOptions: map['metadataOptions'] == null ? null : InstanceMetadataOptionsResponseResponse.fromMap((map['metadataOptions'] as Map).cast<String, dynamic>()),
      monitoring: map['monitoring'] == null ? null : MonitoringResponse.fromMap((map['monitoring'] as Map).cast<String, dynamic>()),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<InstanceNetworkInterfaceResponse>(map['networkInterfaces'], (value) => InstanceNetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())),
      outpostArn: map['outpostArn'] == null ? null : map['outpostArn'] as String,
      placement: map['placement'] == null ? null : PlacementResponse.fromMap((map['placement'] as Map).cast<String, dynamic>()),
      platform: map['platform'] == null ? null : PlatformValuesEnumValueResponse.fromMap((map['platform'] as Map).cast<String, dynamic>()),
      platformDetails: map['platformDetails'] == null ? null : map['platformDetails'] as String,
      privateDnsName: map['privateDnsName'] == null ? null : map['privateDnsName'] as String,
      privateDnsNameOptions: map['privateDnsNameOptions'] == null ? null : PrivateDnsNameOptionsResponseResponse.fromMap((map['privateDnsNameOptions'] as Map).cast<String, dynamic>()),
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      productCodes: map['productCodes'] == null ? null : pulumi.Input.decodeList<ProductCodeResponse>(map['productCodes'], (value) => ProductCodeResponse.fromMap((value as Map).cast<String, dynamic>())),
      publicDnsName: map['publicDnsName'] == null ? null : map['publicDnsName'] as String,
      publicIpAddress: map['publicIpAddress'] == null ? null : map['publicIpAddress'] as String,
      ramdiskId: map['ramdiskId'] == null ? null : map['ramdiskId'] as String,
      rootDeviceName: map['rootDeviceName'] == null ? null : map['rootDeviceName'] as String,
      rootDeviceType: map['rootDeviceType'] == null ? null : DeviceTypeEnumValueResponse.fromMap((map['rootDeviceType'] as Map).cast<String, dynamic>()),
      securityGroups: map['securityGroups'] == null ? null : pulumi.Input.decodeList<GroupIdentifierResponse>(map['securityGroups'], (value) => GroupIdentifierResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceDestCheck: map['sourceDestCheck'] == null ? null : map['sourceDestCheck'] as bool,
      spotInstanceRequestId: map['spotInstanceRequestId'] == null ? null : map['spotInstanceRequestId'] as String,
      sriovNetSupport: map['sriovNetSupport'] == null ? null : map['sriovNetSupport'] as String,
      state: map['state'] == null ? null : InstanceStateResponse.fromMap((map['state'] as Map).cast<String, dynamic>()),
      stateReason: map['stateReason'] == null ? null : StateReasonResponse.fromMap((map['stateReason'] as Map).cast<String, dynamic>()),
      stateTransitionReason: map['stateTransitionReason'] == null ? null : map['stateTransitionReason'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      tpmSupport: map['tpmSupport'] == null ? null : map['tpmSupport'] as String,
      usageOperation: map['usageOperation'] == null ? null : map['usageOperation'] as String,
      usageOperationUpdateTime: map['usageOperationUpdateTime'] == null ? null : map['usageOperationUpdateTime'] as String,
      virtualizationType: map['virtualizationType'] == null ? null : VirtualizationTypeEnumValueResponse.fromMap((map['virtualizationType'] as Map).cast<String, dynamic>()),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

