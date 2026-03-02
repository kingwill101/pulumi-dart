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
  final String ami;
  /// ARN of the instance.
  final String arn;
  /// Whether or not the Instance is associated with a public IP address or not (Boolean).
  final bool associatePublicIpAddress;
  /// Availability zone of the Instance.
  final String availabilityZone;
  /// Credit specification of the Instance.
  final List<GetInstanceCreditSpecification> creditSpecifications;
  /// Whether or not EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection) is enabled (Boolean).
  final bool disableApiStop;
  /// Whether or not [EC2 Instance Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination) is enabled (Boolean).
  final bool disableApiTermination;
  /// EBS block device mappings of the Instance.
  final List<GetInstanceEbsBlockDevice> ebsBlockDevices;
  /// Whether the Instance is EBS optimized or not (Boolean).
  final bool ebsOptimized;
  /// Enclave options of the instance.
  final List<GetInstanceEnclaveOption> enclaveOptions;
  /// Ephemeral block device mappings of the Instance.
  final List<GetInstanceEphemeralBlockDevice> ephemeralBlockDevices;
  final List<GetInstanceFilter>? filters;
  final bool? getPasswordData;
  final bool? getUserData;
  /// ID of the dedicated host the instance will be assigned to.
  final String hostId;
  /// ARN of the host resource group the instance is associated with.
  final String hostResourceGroupArn;
  /// Name of the instance profile associated with the Instance.
  final String iamInstanceProfile;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? instanceId;
  /// State of the instance. One of: `pending`, `running`, `shutting-down`, `terminated`, `stopping`, `stopped`. See [Instance Lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) for more information.
  final String instanceState;
  final Map<String, String> instanceTags;
  /// Type of the Instance.
  final String instanceType;
  /// IPv6 addresses associated to the Instance, if applicable. **NOTE**: Unlike the IPv4 address, this doesn't change if you attach an EIP to the instance.
  final List<String> ipv6Addresses;
  /// Key name of the Instance.
  final String keyName;
  /// Time the instance was launched.
  final String launchTime;
  /// Maintenance and recovery options for the instance.
  final List<GetInstanceMaintenanceOption> maintenanceOptions;
  /// Metadata options of the Instance.
  final List<GetInstanceMetadataOption> metadataOptions;
  /// Whether detailed monitoring is enabled or disabled for the Instance (Boolean).
  final bool monitoring;
  /// ID of the network interface that was created with the Instance.
  final String networkInterfaceId;
  /// ARN of the Outpost.
  final String outpostArn;
  /// Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if `get_password_data` is true. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  final String passwordData;
  /// Placement group of the Instance.
  final String placementGroup;
  /// Placement group ID of the Instance.
  final String placementGroupId;
  /// Number of the partition the instance is in.
  final int placementPartitionNumber;
  /// Private DNS name assigned to the Instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC.
  final String privateDns;
  /// Options for the instance hostname.
  final List<GetInstancePrivateDnsNameOption> privateDnsNameOptions;
  /// Private IP address assigned to the Instance.
  final String privateIp;
  /// Public DNS name assigned to the Instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC.
  final String publicDns;
  /// Public IP address assigned to the Instance, if applicable. **NOTE**: If you are using an `aws.ec2.Eip` with your instance, you should refer to the EIP's address directly and not use `public_ip`, as this field will change after the EIP is attached.
  final String publicIp;
  final String region;
  /// Root block device mappings of the Instance
  final List<GetInstanceRootBlockDevice> rootBlockDevices;
  /// Secondary private IPv4 addresses assigned to the instance's primary network interface (eth0) in a VPC.
  final List<String> secondaryPrivateIps;
  /// Associated security groups.
  final List<String> securityGroups;
  /// Whether the network interface performs source/destination checking (Boolean).
  final bool sourceDestCheck;
  /// VPC subnet ID.
  final String subnetId;
  /// Map of tags assigned to the Instance.
  final Map<String, String> tags;
  /// Tenancy of the instance: `dedicated`, `default`, `host`.
  final String tenancy;
  /// SHA-1 hash of User Data supplied to the Instance.
  final String userData;
  /// Base64 encoded contents of User Data supplied to the Instance. This attribute is only exported if `get_user_data` is true.
  final String userDataBase64;
  /// Associated security groups in a non-default VPC.
  final List<String> vpcSecurityGroupIds;

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
  /// [instanceTags] Required.
  /// [instanceType] Type of the Instance.
  /// [ipv6Addresses] IPv6 addresses associated to the Instance, if applicable. **NOTE**: Unlike the IPv4 address, this doesn't change if you attach an EIP to the instance.
  /// [keyName] Key name of the Instance.
  /// [launchTime] Time the instance was launched.
  /// [maintenanceOptions] Maintenance and recovery options for the instance.
  /// [metadataOptions] Metadata options of the Instance.
  /// [monitoring] Whether detailed monitoring is enabled or disabled for the Instance (Boolean).
  /// [networkInterfaceId] ID of the network interface that was created with the Instance.
  /// [outpostArn] ARN of the Outpost.
  /// [passwordData] Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if `get_password_data` is true. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  /// [placementGroup] Placement group of the Instance.
  /// [placementGroupId] Placement group ID of the Instance.
  /// [placementPartitionNumber] Number of the partition the instance is in.
  /// [privateDns] Private DNS name assigned to the Instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC.
  /// [privateDnsNameOptions] Options for the instance hostname.
  /// [privateIp] Private IP address assigned to the Instance.
  /// [publicDns] Public DNS name assigned to the Instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC.
  /// [publicIp] Public IP address assigned to the Instance, if applicable. **NOTE**: If you are using an `aws.ec2.Eip` with your instance, you should refer to the EIP's address directly and not use `public_ip`, as this field will change after the EIP is attached.
  /// [region] Required.
  /// [rootBlockDevices] Root block device mappings of the Instance
  /// [secondaryPrivateIps] Secondary private IPv4 addresses assigned to the instance's primary network interface (eth0) in a VPC.
  /// [securityGroups] Associated security groups.
  /// [sourceDestCheck] Whether the network interface performs source/destination checking (Boolean).
  /// [subnetId] VPC subnet ID.
  /// [tags] Map of tags assigned to the Instance.
  /// [tenancy] Tenancy of the instance: `dedicated`, `default`, `host`.
  /// [userData] SHA-1 hash of User Data supplied to the Instance.
  /// [userDataBase64] Base64 encoded contents of User Data supplied to the Instance. This attribute is only exported if `get_user_data` is true.
  /// [vpcSecurityGroupIds] Associated security groups in a non-default VPC.
  GetInstanceResult({
    required this.ami,
    required this.arn,
    required this.associatePublicIpAddress,
    required this.availabilityZone,
    required this.creditSpecifications,
    required this.disableApiStop,
    required this.disableApiTermination,
    required this.ebsBlockDevices,
    required this.ebsOptimized,
    required this.enclaveOptions,
    required this.ephemeralBlockDevices,
    this.filters,
    this.getPasswordData,
    this.getUserData,
    required this.hostId,
    required this.hostResourceGroupArn,
    required this.iamInstanceProfile,
    required this.id,
    this.instanceId,
    required this.instanceState,
    required this.instanceTags,
    required this.instanceType,
    required this.ipv6Addresses,
    required this.keyName,
    required this.launchTime,
    required this.maintenanceOptions,
    required this.metadataOptions,
    required this.monitoring,
    required this.networkInterfaceId,
    required this.outpostArn,
    required this.passwordData,
    required this.placementGroup,
    required this.placementGroupId,
    required this.placementPartitionNumber,
    required this.privateDns,
    required this.privateDnsNameOptions,
    required this.privateIp,
    required this.publicDns,
    required this.publicIp,
    required this.region,
    required this.rootBlockDevices,
    required this.secondaryPrivateIps,
    required this.securityGroups,
    required this.sourceDestCheck,
    required this.subnetId,
    required this.tags,
    required this.tenancy,
    required this.userData,
    required this.userDataBase64,
    required this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ami': ami,
      'arn': arn,
      'associatePublicIpAddress': associatePublicIpAddress,
      'availabilityZone': availabilityZone,
      'creditSpecifications': pulumi.Input.encodeList<GetInstanceCreditSpecification, Map<String, dynamic>>(creditSpecifications, (value) => value.toMap()),
      'disableApiStop': disableApiStop,
      'disableApiTermination': disableApiTermination,
      'ebsBlockDevices': pulumi.Input.encodeList<GetInstanceEbsBlockDevice, Map<String, dynamic>>(ebsBlockDevices, (value) => value.toMap()),
      'ebsOptimized': ebsOptimized,
      'enclaveOptions': pulumi.Input.encodeList<GetInstanceEnclaveOption, Map<String, dynamic>>(enclaveOptions, (value) => value.toMap()),
      'ephemeralBlockDevices': pulumi.Input.encodeList<GetInstanceEphemeralBlockDevice, Map<String, dynamic>>(ephemeralBlockDevices, (value) => value.toMap()),
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetInstanceFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'getPasswordData': ?getPasswordData,
      'getUserData': ?getUserData,
      'hostId': hostId,
      'hostResourceGroupArn': hostResourceGroupArn,
      'iamInstanceProfile': iamInstanceProfile,
      'id': id,
      'instanceId': ?instanceId,
      'instanceState': instanceState,
      'instanceTags': instanceTags,
      'instanceType': instanceType,
      'ipv6Addresses': ipv6Addresses,
      'keyName': keyName,
      'launchTime': launchTime,
      'maintenanceOptions': pulumi.Input.encodeList<GetInstanceMaintenanceOption, Map<String, dynamic>>(maintenanceOptions, (value) => value.toMap()),
      'metadataOptions': pulumi.Input.encodeList<GetInstanceMetadataOption, Map<String, dynamic>>(metadataOptions, (value) => value.toMap()),
      'monitoring': monitoring,
      'networkInterfaceId': networkInterfaceId,
      'outpostArn': outpostArn,
      'passwordData': passwordData,
      'placementGroup': placementGroup,
      'placementGroupId': placementGroupId,
      'placementPartitionNumber': placementPartitionNumber,
      'privateDns': privateDns,
      'privateDnsNameOptions': pulumi.Input.encodeList<GetInstancePrivateDnsNameOption, Map<String, dynamic>>(privateDnsNameOptions, (value) => value.toMap()),
      'privateIp': privateIp,
      'publicDns': publicDns,
      'publicIp': publicIp,
      'region': region,
      'rootBlockDevices': pulumi.Input.encodeList<GetInstanceRootBlockDevice, Map<String, dynamic>>(rootBlockDevices, (value) => value.toMap()),
      'secondaryPrivateIps': secondaryPrivateIps,
      'securityGroups': securityGroups,
      'sourceDestCheck': sourceDestCheck,
      'subnetId': subnetId,
      'tags': tags,
      'tenancy': tenancy,
      'userData': userData,
      'userDataBase64': userDataBase64,
      'vpcSecurityGroupIds': vpcSecurityGroupIds,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      ami: map['ami'] as String,
      arn: map['arn'] as String,
      associatePublicIpAddress: map['associatePublicIpAddress'] as bool,
      availabilityZone: map['availabilityZone'] as String,
      creditSpecifications: pulumi.Input.decodeList<GetInstanceCreditSpecification>(map['creditSpecifications']!, (value) => GetInstanceCreditSpecification.fromMap((value as Map).cast<String, dynamic>())),
      disableApiStop: map['disableApiStop'] as bool,
      disableApiTermination: map['disableApiTermination'] as bool,
      ebsBlockDevices: pulumi.Input.decodeList<GetInstanceEbsBlockDevice>(map['ebsBlockDevices']!, (value) => GetInstanceEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>())),
      ebsOptimized: map['ebsOptimized'] as bool,
      enclaveOptions: pulumi.Input.decodeList<GetInstanceEnclaveOption>(map['enclaveOptions']!, (value) => GetInstanceEnclaveOption.fromMap((value as Map).cast<String, dynamic>())),
      ephemeralBlockDevices: pulumi.Input.decodeList<GetInstanceEphemeralBlockDevice>(map['ephemeralBlockDevices']!, (value) => GetInstanceEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetInstanceFilter>(map['filters']!, (value) => GetInstanceFilter.fromMap((value as Map).cast<String, dynamic>())),
      getPasswordData: map['getPasswordData'] == null ? null : map['getPasswordData'] as bool,
      getUserData: map['getUserData'] == null ? null : map['getUserData'] as bool,
      hostId: map['hostId'] as String,
      hostResourceGroupArn: map['hostResourceGroupArn'] as String,
      iamInstanceProfile: map['iamInstanceProfile'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      instanceState: map['instanceState'] as String,
      instanceTags: (map['instanceTags'] as Map).cast<String, String>(),
      instanceType: map['instanceType'] as String,
      ipv6Addresses: (map['ipv6Addresses'] as List).cast<String>(),
      keyName: map['keyName'] as String,
      launchTime: map['launchTime'] as String,
      maintenanceOptions: pulumi.Input.decodeList<GetInstanceMaintenanceOption>(map['maintenanceOptions']!, (value) => GetInstanceMaintenanceOption.fromMap((value as Map).cast<String, dynamic>())),
      metadataOptions: pulumi.Input.decodeList<GetInstanceMetadataOption>(map['metadataOptions']!, (value) => GetInstanceMetadataOption.fromMap((value as Map).cast<String, dynamic>())),
      monitoring: map['monitoring'] as bool,
      networkInterfaceId: map['networkInterfaceId'] as String,
      outpostArn: map['outpostArn'] as String,
      passwordData: map['passwordData'] as String,
      placementGroup: map['placementGroup'] as String,
      placementGroupId: map['placementGroupId'] as String,
      placementPartitionNumber: map['placementPartitionNumber'] as int,
      privateDns: map['privateDns'] as String,
      privateDnsNameOptions: pulumi.Input.decodeList<GetInstancePrivateDnsNameOption>(map['privateDnsNameOptions']!, (value) => GetInstancePrivateDnsNameOption.fromMap((value as Map).cast<String, dynamic>())),
      privateIp: map['privateIp'] as String,
      publicDns: map['publicDns'] as String,
      publicIp: map['publicIp'] as String,
      region: map['region'] as String,
      rootBlockDevices: pulumi.Input.decodeList<GetInstanceRootBlockDevice>(map['rootBlockDevices']!, (value) => GetInstanceRootBlockDevice.fromMap((value as Map).cast<String, dynamic>())),
      secondaryPrivateIps: (map['secondaryPrivateIps'] as List).cast<String>(),
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      sourceDestCheck: map['sourceDestCheck'] as bool,
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tenancy: map['tenancy'] as String,
      userData: map['userData'] as String,
      userDataBase64: map['userDataBase64'] as String,
      vpcSecurityGroupIds: (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}

