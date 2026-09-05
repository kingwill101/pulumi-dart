// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_credit_specification.dart';
import 'get_instance_ebs_block_device.dart';
import 'get_instance_enclave_option.dart';
import 'get_instance_ephemeral_block_device.dart';
import 'get_instance_filter.dart';
import 'get_instance_maintenance_option.dart';
import 'get_instance_metadata_option.dart';
import 'get_instance_private_dns_name_option.dart';
import 'get_instance_root_block_device.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// ID of the AMI used to launch the instance.
  final String? ami;
  /// ARN of the instance.
  final String? arn;
  /// Whether or not the Instance is associated with a public IP address or not (Boolean).
  final bool? associatePublicIpAddress;
  /// Availability zone of the Instance.
  final String? availabilityZone;
  /// Credit specification of the Instance.
  final List<GetInstanceCreditSpecification>? creditSpecifications;
  /// Whether or not EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection) is enabled (Boolean).
  final bool? disableApiStop;
  /// Whether or not [EC2 Instance Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination) is enabled (Boolean).
  final bool? disableApiTermination;
  /// EBS block device mappings of the Instance.
  final List<GetInstanceEbsBlockDevice>? ebsBlockDevices;
  /// Whether the Instance is EBS optimized or not (Boolean).
  final bool? ebsOptimized;
  /// Enclave options of the instance.
  final List<GetInstanceEnclaveOption>? enclaveOptions;
  /// Ephemeral block device mappings of the Instance.
  final List<GetInstanceEphemeralBlockDevice>? ephemeralBlockDevices;
  final List<GetInstanceFilter>? filters;
  final bool? getPasswordData;
  final bool? getUserData;
  /// ID of the dedicated host the instance will be assigned to.
  final String? hostId;
  /// ARN of the host resource group the instance is associated with.
  final String? hostResourceGroupArn;
  /// Name of the instance profile associated with the Instance.
  final String? iamInstanceProfile;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  /// State of the instance. One of: `pending`, `running`, `shutting-down`, `terminated`, `stopping`, `stopped`. See [Instance Lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) for more information.
  final String? instanceState;
  final Map<String, String>? instanceTags;
  /// Type of the Instance.
  final String? instanceType;
  /// IPv6 addresses associated to the Instance, if applicable. **NOTE**: Unlike the IPv4 address, this doesn't change if you attach an EIP to the instance.
  final List<String>? ipv6Addresses;
  /// Key name of the Instance.
  final String? keyName;
  /// Time the instance was launched.
  final String? launchTime;
  /// Maintenance and recovery options for the instance.
  final List<GetInstanceMaintenanceOption>? maintenanceOptions;
  /// Metadata options of the Instance.
  final List<GetInstanceMetadataOption>? metadataOptions;
  /// Whether detailed monitoring is enabled or disabled for the Instance (Boolean).
  final bool? monitoring;
  /// ID of the network interface that was created with the Instance.
  final String? networkInterfaceId;
  /// ARN of the Outpost.
  final String? outpostArn;
  /// Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if `getPasswordData` is true. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  final String? passwordData;
  /// Placement group of the Instance.
  final String? placementGroup;
  /// Placement group ID of the Instance.
  final String? placementGroupId;
  /// Number of the partition the instance is in.
  final int? placementPartitionNumber;
  /// Private DNS name assigned to the Instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC.
  final String? privateDns;
  /// Options for the instance hostname.
  final List<GetInstancePrivateDnsNameOption>? privateDnsNameOptions;
  /// Private IP address assigned to the Instance.
  final String? privateIp;
  /// Public DNS name assigned to the Instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC.
  final String? publicDns;
  /// Public IP address assigned to the Instance, if applicable. **NOTE**: If you are using an `aws.ec2.Eip` with your instance, you should refer to the EIP's address directly and not use `publicIp`, as this field will change after the EIP is attached.
  final String? publicIp;
  final String? region;
  /// Root block device mappings of the Instance
  final List<GetInstanceRootBlockDevice>? rootBlockDevices;
  /// Secondary private IPv4 addresses assigned to the instance's primary network interface (eth0) in a VPC.
  final List<String>? secondaryPrivateIps;
  /// Associated security groups.
  final List<String>? securityGroups;
  /// Whether the network interface performs source/destination checking (Boolean).
  final bool? sourceDestCheck;
  /// VPC subnet ID.
  final String? subnetId;
  /// Map of tags assigned to the Instance.
  final Map<String, String>? tags;
  /// Tenancy of the instance: `dedicated`, `default`, `host`.
  final String? tenancy;
  /// SHA-1 hash of User Data supplied to the Instance.
  final String? userData;
  /// Base64 encoded contents of User Data supplied to the Instance. This attribute is only exported if `getUserData` is true.
  final String? userDataBase64;
  /// Associated security groups in a non-default VPC.
  final List<String>? vpcSecurityGroupIds;

  /// Creates a new [GetInstanceResult].
  /// [ami] ID of the AMI used to launch the instance.
  /// [arn] ARN of the instance.
  /// [associatePublicIpAddress] Whether or not the Instance is associated with a public IP address or not (Boolean).
  /// [availabilityZone] Availability zone of the Instance.
  /// [creditSpecifications] Credit specification of the Instance.
  /// [disableApiStop] Whether or not EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection) is enabled (Boolean).
  /// [disableApiTermination] Whether or not [EC2 Instance Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination) is enabled (Boolean).
  /// [ebsBlockDevices] EBS block device mappings of the Instance.
  /// [ebsOptimized] Whether the Instance is EBS optimized or not (Boolean).
  /// [enclaveOptions] Enclave options of the instance.
  /// [ephemeralBlockDevices] Ephemeral block device mappings of the Instance.
  /// [filters] Optional.
  /// [getPasswordData] Optional.
  /// [getUserData] Optional.
  /// [hostId] ID of the dedicated host the instance will be assigned to.
  /// [hostResourceGroupArn] ARN of the host resource group the instance is associated with.
  /// [iamInstanceProfile] Name of the instance profile associated with the Instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [instanceState] State of the instance. One of: `pending`, `running`, `shutting-down`, `terminated`, `stopping`, `stopped`. See [Instance Lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) for more information.
  /// [instanceTags] Optional.
  /// [instanceType] Type of the Instance.
  /// [ipv6Addresses] IPv6 addresses associated to the Instance, if applicable. **NOTE**: Unlike the IPv4 address, this doesn't change if you attach an EIP to the instance.
  /// [keyName] Key name of the Instance.
  /// [launchTime] Time the instance was launched.
  /// [maintenanceOptions] Maintenance and recovery options for the instance.
  /// [metadataOptions] Metadata options of the Instance.
  /// [monitoring] Whether detailed monitoring is enabled or disabled for the Instance (Boolean).
  /// [networkInterfaceId] ID of the network interface that was created with the Instance.
  /// [outpostArn] ARN of the Outpost.
  /// [passwordData] Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if `getPasswordData` is true. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  /// [placementGroup] Placement group of the Instance.
  /// [placementGroupId] Placement group ID of the Instance.
  /// [placementPartitionNumber] Number of the partition the instance is in.
  /// [privateDns] Private DNS name assigned to the Instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC.
  /// [privateDnsNameOptions] Options for the instance hostname.
  /// [privateIp] Private IP address assigned to the Instance.
  /// [publicDns] Public DNS name assigned to the Instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC.
  /// [publicIp] Public IP address assigned to the Instance, if applicable. **NOTE**: If you are using an `aws.ec2.Eip` with your instance, you should refer to the EIP's address directly and not use `publicIp`, as this field will change after the EIP is attached.
  /// [region] Optional.
  /// [rootBlockDevices] Root block device mappings of the Instance
  /// [secondaryPrivateIps] Secondary private IPv4 addresses assigned to the instance's primary network interface (eth0) in a VPC.
  /// [securityGroups] Associated security groups.
  /// [sourceDestCheck] Whether the network interface performs source/destination checking (Boolean).
  /// [subnetId] VPC subnet ID.
  /// [tags] Map of tags assigned to the Instance.
  /// [tenancy] Tenancy of the instance: `dedicated`, `default`, `host`.
  /// [userData] SHA-1 hash of User Data supplied to the Instance.
  /// [userDataBase64] Base64 encoded contents of User Data supplied to the Instance. This attribute is only exported if `getUserData` is true.
  /// [vpcSecurityGroupIds] Associated security groups in a non-default VPC.
  const GetInstanceResult({
    this.ami,
    this.arn,
    this.associatePublicIpAddress,
    this.availabilityZone,
    this.creditSpecifications,
    this.disableApiStop,
    this.disableApiTermination,
    this.ebsBlockDevices,
    this.ebsOptimized,
    this.enclaveOptions,
    this.ephemeralBlockDevices,
    this.filters,
    this.getPasswordData,
    this.getUserData,
    this.hostId,
    this.hostResourceGroupArn,
    this.iamInstanceProfile,
    this.id,
    this.instanceId,
    this.instanceState,
    this.instanceTags,
    this.instanceType,
    this.ipv6Addresses,
    this.keyName,
    this.launchTime,
    this.maintenanceOptions,
    this.metadataOptions,
    this.monitoring,
    this.networkInterfaceId,
    this.outpostArn,
    this.passwordData,
    this.placementGroup,
    this.placementGroupId,
    this.placementPartitionNumber,
    this.privateDns,
    this.privateDnsNameOptions,
    this.privateIp,
    this.publicDns,
    this.publicIp,
    this.region,
    this.rootBlockDevices,
    this.secondaryPrivateIps,
    this.securityGroups,
    this.sourceDestCheck,
    this.subnetId,
    this.tags,
    this.tenancy,
    this.userData,
    this.userDataBase64,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ami': ?ami,
      'arn': ?arn,
      'associatePublicIpAddress': ?associatePublicIpAddress,
      'availabilityZone': ?availabilityZone,
      'creditSpecifications': ?(() { final guardedValue = creditSpecifications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceCreditSpecification, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'disableApiStop': ?disableApiStop,
      'disableApiTermination': ?disableApiTermination,
      'ebsBlockDevices': ?(() { final guardedValue = ebsBlockDevices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceEbsBlockDevice, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ebsOptimized': ?ebsOptimized,
      'enclaveOptions': ?(() { final guardedValue = enclaveOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceEnclaveOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ephemeralBlockDevices': ?(() { final guardedValue = ephemeralBlockDevices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceEphemeralBlockDevice, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'getPasswordData': ?getPasswordData,
      'getUserData': ?getUserData,
      'hostId': ?hostId,
      'hostResourceGroupArn': ?hostResourceGroupArn,
      'iamInstanceProfile': ?iamInstanceProfile,
      'id': ?id,
      'instanceId': ?instanceId,
      'instanceState': ?instanceState,
      'instanceTags': ?instanceTags,
      'instanceType': ?instanceType,
      'ipv6Addresses': ?ipv6Addresses,
      'keyName': ?keyName,
      'launchTime': ?launchTime,
      'maintenanceOptions': ?(() { final guardedValue = maintenanceOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMaintenanceOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'metadataOptions': ?(() { final guardedValue = metadataOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMetadataOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'monitoring': ?monitoring,
      'networkInterfaceId': ?networkInterfaceId,
      'outpostArn': ?outpostArn,
      'passwordData': ?passwordData,
      'placementGroup': ?placementGroup,
      'placementGroupId': ?placementGroupId,
      'placementPartitionNumber': ?placementPartitionNumber,
      'privateDns': ?privateDns,
      'privateDnsNameOptions': ?(() { final guardedValue = privateDnsNameOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstancePrivateDnsNameOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'privateIp': ?privateIp,
      'publicDns': ?publicDns,
      'publicIp': ?publicIp,
      'region': ?region,
      'rootBlockDevices': ?(() { final guardedValue = rootBlockDevices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceRootBlockDevice, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secondaryPrivateIps': ?secondaryPrivateIps,
      'securityGroups': ?securityGroups,
      'sourceDestCheck': ?sourceDestCheck,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tenancy': ?tenancy,
      'userData': ?userData,
      'userDataBase64': ?userDataBase64,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      ami: (() { final guardedValue = map['ami']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associatePublicIpAddress: (() { final guardedValue = map['associatePublicIpAddress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creditSpecifications: (() { final guardedValue = map['creditSpecifications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceCreditSpecification>(guardedValue, (value) => GetInstanceCreditSpecification.fromMap((value as Map).cast<String, dynamic>())); })(),
      disableApiStop: (() { final guardedValue = map['disableApiStop']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      disableApiTermination: (() { final guardedValue = map['disableApiTermination']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ebsBlockDevices: (() { final guardedValue = map['ebsBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceEbsBlockDevice>(guardedValue, (value) => GetInstanceEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>())); })(),
      ebsOptimized: (() { final guardedValue = map['ebsOptimized']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enclaveOptions: (() { final guardedValue = map['enclaveOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceEnclaveOption>(guardedValue, (value) => GetInstanceEnclaveOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      ephemeralBlockDevices: (() { final guardedValue = map['ephemeralBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceEphemeralBlockDevice>(guardedValue, (value) => GetInstanceEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceFilter>(guardedValue, (value) => GetInstanceFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      getPasswordData: (() { final guardedValue = map['getPasswordData']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      getUserData: (() { final guardedValue = map['getUserData']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostId: (() { final guardedValue = map['hostId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostResourceGroupArn: (() { final guardedValue = map['hostResourceGroupArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iamInstanceProfile: (() { final guardedValue = map['iamInstanceProfile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceState: (() { final guardedValue = map['instanceState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceTags: (() { final guardedValue = map['instanceTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      launchTime: (() { final guardedValue = map['launchTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceOptions: (() { final guardedValue = map['maintenanceOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMaintenanceOption>(guardedValue, (value) => GetInstanceMaintenanceOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      metadataOptions: (() { final guardedValue = map['metadataOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMetadataOption>(guardedValue, (value) => GetInstanceMetadataOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      monitoring: (() { final guardedValue = map['monitoring']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      passwordData: (() { final guardedValue = map['passwordData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      placementGroup: (() { final guardedValue = map['placementGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      placementGroupId: (() { final guardedValue = map['placementGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      placementPartitionNumber: (() { final guardedValue = map['placementPartitionNumber']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      privateDns: (() { final guardedValue = map['privateDns']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDnsNameOptions: (() { final guardedValue = map['privateDnsNameOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstancePrivateDnsNameOption>(guardedValue, (value) => GetInstancePrivateDnsNameOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicDns: (() { final guardedValue = map['publicDns']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIp: (() { final guardedValue = map['publicIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootBlockDevices: (() { final guardedValue = map['rootBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceRootBlockDevice>(guardedValue, (value) => GetInstanceRootBlockDevice.fromMap((value as Map).cast<String, dynamic>())); })(),
      secondaryPrivateIps: (() { final guardedValue = map['secondaryPrivateIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sourceDestCheck: (() { final guardedValue = map['sourceDestCheck']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenancy: (() { final guardedValue = map['tenancy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userDataBase64: (() { final guardedValue = map['userDataBase64']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
