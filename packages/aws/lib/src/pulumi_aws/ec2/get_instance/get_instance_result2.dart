// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_credit_specification/get_instance_credit_specification.dart';
import '../get_instance_ebs_block_device/get_instance_ebs_block_device.dart';
import '../get_instance_enclave_option/get_instance_enclave_option.dart';
import '../get_instance_ephemeral_block_device/get_instance_ephemeral_block_device.dart';
import '../get_instance_filter/get_instance_filter.dart';
import '../get_instance_maintenance_option/get_instance_maintenance_option.dart';
import '../get_instance_metadata_option/get_instance_metadata_option.dart';
import '../get_instance_private_dns_name_option/get_instance_private_dns_name_option.dart';
import '../get_instance_root_block_device/get_instance_root_block_device.dart';

/// Result data returned by getInstance.
class GetInstanceResult2 {
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

  /// State of the instance. One of: <span pulumi-lang-nodejs="`pending`" pulumi-lang-dotnet="`Pending`" pulumi-lang-go="`pending`" pulumi-lang-python="`pending`" pulumi-lang-yaml="`pending`" pulumi-lang-java="`pending`">`pending`</span>, <span pulumi-lang-nodejs="`running`" pulumi-lang-dotnet="`Running`" pulumi-lang-go="`running`" pulumi-lang-python="`running`" pulumi-lang-yaml="`running`" pulumi-lang-java="`running`">`running`</span>, `shutting-down`, <span pulumi-lang-nodejs="`terminated`" pulumi-lang-dotnet="`Terminated`" pulumi-lang-go="`terminated`" pulumi-lang-python="`terminated`" pulumi-lang-yaml="`terminated`" pulumi-lang-java="`terminated`">`terminated`</span>, <span pulumi-lang-nodejs="`stopping`" pulumi-lang-dotnet="`Stopping`" pulumi-lang-go="`stopping`" pulumi-lang-python="`stopping`" pulumi-lang-yaml="`stopping`" pulumi-lang-java="`stopping`">`stopping`</span>, <span pulumi-lang-nodejs="`stopped`" pulumi-lang-dotnet="`Stopped`" pulumi-lang-go="`stopped`" pulumi-lang-python="`stopped`" pulumi-lang-yaml="`stopped`" pulumi-lang-java="`stopped`">`stopped`</span>. See [Instance Lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) for more information.
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

  /// Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if <span pulumi-lang-nodejs="`getPasswordData`" pulumi-lang-dotnet="`GetPasswordData`" pulumi-lang-go="`getPasswordData`" pulumi-lang-python="`get_password_data`" pulumi-lang-yaml="`getPasswordData`" pulumi-lang-java="`getPasswordData`">`get_password_data`</span> is true. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
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

  /// Public IP address assigned to the Instance, if applicable. **NOTE**: If you are using an <span pulumi-lang-nodejs="`aws.ec2.Eip`" pulumi-lang-dotnet="`aws.ec2.Eip`" pulumi-lang-go="`ec2.Eip`" pulumi-lang-python="`ec2.Eip`" pulumi-lang-yaml="`aws.ec2.Eip`" pulumi-lang-java="`aws.ec2.Eip`">`aws.ec2.Eip`</span> with your instance, you should refer to the EIP's address directly and not use <span pulumi-lang-nodejs="`publicIp`" pulumi-lang-dotnet="`PublicIp`" pulumi-lang-go="`publicIp`" pulumi-lang-python="`public_ip`" pulumi-lang-yaml="`publicIp`" pulumi-lang-java="`publicIp`">`public_ip`</span>, as this field will change after the EIP is attached.
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

  /// Tenancy of the instance: <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span>, <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>.
  final String tenancy;

  /// SHA-1 hash of User Data supplied to the Instance.
  final String userData;

  /// Base64 encoded contents of User Data supplied to the Instance. This attribute is only exported if <span pulumi-lang-nodejs="`getUserData`" pulumi-lang-dotnet="`GetUserData`" pulumi-lang-go="`getUserData`" pulumi-lang-python="`get_user_data`" pulumi-lang-yaml="`getUserData`" pulumi-lang-java="`getUserData`">`get_user_data`</span> is true.
  final String userDataBase64;

  /// Associated security groups in a non-default VPC.
  final List<String> vpcSecurityGroupIds;

  GetInstanceResult2({
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
    final map = <String, dynamic>{};
    map['ami'] = ami;
    map['arn'] = arn;
    map['associatePublicIpAddress'] = associatePublicIpAddress;
    map['availabilityZone'] = availabilityZone;
    map['creditSpecifications'] =
        Input.encodeList<GetInstanceCreditSpecification, Map<String, dynamic>>(
            creditSpecifications, (value) => value.toMap());
    map['disableApiStop'] = disableApiStop;
    map['disableApiTermination'] = disableApiTermination;
    map['ebsBlockDevices'] =
        Input.encodeList<GetInstanceEbsBlockDevice, Map<String, dynamic>>(
            ebsBlockDevices, (value) => value.toMap());
    map['ebsOptimized'] = ebsOptimized;
    map['enclaveOptions'] =
        Input.encodeList<GetInstanceEnclaveOption, Map<String, dynamic>>(
            enclaveOptions, (value) => value.toMap());
    map['ephemeralBlockDevices'] =
        Input.encodeList<GetInstanceEphemeralBlockDevice, Map<String, dynamic>>(
            ephemeralBlockDevices, (value) => value.toMap());
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetInstanceFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    final getPasswordDataValue = getPasswordData;
    if (getPasswordDataValue != null) {
      map['getPasswordData'] = getPasswordDataValue;
    }
    final getUserDataValue = getUserData;
    if (getUserDataValue != null) {
      map['getUserData'] = getUserDataValue;
    }
    map['hostId'] = hostId;
    map['hostResourceGroupArn'] = hostResourceGroupArn;
    map['iamInstanceProfile'] = iamInstanceProfile;
    map['id'] = id;
    final instanceIdValue = instanceId;
    if (instanceIdValue != null) {
      map['instanceId'] = instanceIdValue;
    }
    map['instanceState'] = instanceState;
    map['instanceTags'] = instanceTags;
    map['instanceType'] = instanceType;
    map['ipv6Addresses'] = ipv6Addresses;
    map['keyName'] = keyName;
    map['launchTime'] = launchTime;
    map['maintenanceOptions'] =
        Input.encodeList<GetInstanceMaintenanceOption, Map<String, dynamic>>(
            maintenanceOptions, (value) => value.toMap());
    map['metadataOptions'] =
        Input.encodeList<GetInstanceMetadataOption, Map<String, dynamic>>(
            metadataOptions, (value) => value.toMap());
    map['monitoring'] = monitoring;
    map['networkInterfaceId'] = networkInterfaceId;
    map['outpostArn'] = outpostArn;
    map['passwordData'] = passwordData;
    map['placementGroup'] = placementGroup;
    map['placementGroupId'] = placementGroupId;
    map['placementPartitionNumber'] = placementPartitionNumber;
    map['privateDns'] = privateDns;
    map['privateDnsNameOptions'] =
        Input.encodeList<GetInstancePrivateDnsNameOption, Map<String, dynamic>>(
            privateDnsNameOptions, (value) => value.toMap());
    map['privateIp'] = privateIp;
    map['publicDns'] = publicDns;
    map['publicIp'] = publicIp;
    map['region'] = region;
    map['rootBlockDevices'] =
        Input.encodeList<GetInstanceRootBlockDevice, Map<String, dynamic>>(
            rootBlockDevices, (value) => value.toMap());
    map['secondaryPrivateIps'] = secondaryPrivateIps;
    map['securityGroups'] = securityGroups;
    map['sourceDestCheck'] = sourceDestCheck;
    map['subnetId'] = subnetId;
    map['tags'] = tags;
    map['tenancy'] = tenancy;
    map['userData'] = userData;
    map['userDataBase64'] = userDataBase64;
    map['vpcSecurityGroupIds'] = vpcSecurityGroupIds;
    return map;
  }

  factory GetInstanceResult2.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult2(
      ami: map['ami'] as String,
      arn: map['arn'] as String,
      associatePublicIpAddress: map['associatePublicIpAddress'] as bool,
      availabilityZone: map['availabilityZone'] as String,
      creditSpecifications: Input.decodeList<GetInstanceCreditSpecification>(
          map['creditSpecifications'],
          (value) => GetInstanceCreditSpecification.fromMap(
              (value as Map).cast<String, dynamic>())),
      disableApiStop: map['disableApiStop'] as bool,
      disableApiTermination: map['disableApiTermination'] as bool,
      ebsBlockDevices: Input.decodeList<GetInstanceEbsBlockDevice>(
          map['ebsBlockDevices'],
          (value) => GetInstanceEbsBlockDevice.fromMap(
              (value as Map).cast<String, dynamic>())),
      ebsOptimized: map['ebsOptimized'] as bool,
      enclaveOptions: Input.decodeList<GetInstanceEnclaveOption>(
          map['enclaveOptions'],
          (value) => GetInstanceEnclaveOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      ephemeralBlockDevices: Input.decodeList<GetInstanceEphemeralBlockDevice>(
          map['ephemeralBlockDevices'],
          (value) => GetInstanceEphemeralBlockDevice.fromMap(
              (value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetInstanceFilter>(
              map['filters'],
              (value) => GetInstanceFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      getPasswordData: map['getPasswordData'] == null
          ? null
          : map['getPasswordData'] as bool,
      getUserData:
          map['getUserData'] == null ? null : map['getUserData'] as bool,
      hostId: map['hostId'] as String,
      hostResourceGroupArn: map['hostResourceGroupArn'] as String,
      iamInstanceProfile: map['iamInstanceProfile'] as String,
      id: map['id'] as String,
      instanceId:
          map['instanceId'] == null ? null : map['instanceId'] as String,
      instanceState: map['instanceState'] as String,
      instanceTags: (map['instanceTags'] as Map).cast<String, String>(),
      instanceType: map['instanceType'] as String,
      ipv6Addresses: (map['ipv6Addresses'] as List).cast<String>(),
      keyName: map['keyName'] as String,
      launchTime: map['launchTime'] as String,
      maintenanceOptions: Input.decodeList<GetInstanceMaintenanceOption>(
          map['maintenanceOptions'],
          (value) => GetInstanceMaintenanceOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      metadataOptions: Input.decodeList<GetInstanceMetadataOption>(
          map['metadataOptions'],
          (value) => GetInstanceMetadataOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      monitoring: map['monitoring'] as bool,
      networkInterfaceId: map['networkInterfaceId'] as String,
      outpostArn: map['outpostArn'] as String,
      passwordData: map['passwordData'] as String,
      placementGroup: map['placementGroup'] as String,
      placementGroupId: map['placementGroupId'] as String,
      placementPartitionNumber: map['placementPartitionNumber'] as int,
      privateDns: map['privateDns'] as String,
      privateDnsNameOptions: Input.decodeList<GetInstancePrivateDnsNameOption>(
          map['privateDnsNameOptions'],
          (value) => GetInstancePrivateDnsNameOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      privateIp: map['privateIp'] as String,
      publicDns: map['publicDns'] as String,
      publicIp: map['publicIp'] as String,
      region: map['region'] as String,
      rootBlockDevices: Input.decodeList<GetInstanceRootBlockDevice>(
          map['rootBlockDevices'],
          (value) => GetInstanceRootBlockDevice.fromMap(
              (value as Map).cast<String, dynamic>())),
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
