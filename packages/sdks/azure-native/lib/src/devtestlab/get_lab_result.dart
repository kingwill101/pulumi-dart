// ignore_for_file: unused_element, unnecessary_cast

import 'lab_announcement_properties_response.dart';
import 'lab_support_properties_response.dart';

/// Result data returned by getLab.
class GetLabResult {
  /// The properties of any lab announcement associated with this lab
  final LabAnnouncementPropertiesResponse? announcement;
  /// The lab's artifact storage account.
  final String artifactsStorageAccount;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation date of the lab.
  final String createdDate;
  /// The lab's default premium storage account.
  final String defaultPremiumStorageAccount;
  /// The lab's default storage account.
  final String defaultStorageAccount;
  /// The access rights to be granted to the user when provisioning an environment
  final String? environmentPermission;
  /// Extended properties of the lab used for experimental features
  final Map<String, String>? extendedProperties;
  /// The identifier of the resource.
  final String id;
  /// Type of storage used by the lab. It can be either Premium or Standard. Default is Premium.
  final String? labStorageType;
  /// The load balancer used to for lab VMs that use shared IP address.
  final String loadBalancerId;
  /// The location of the resource.
  final String? location;
  /// The ordered list of artifact resource IDs that should be applied on all Linux VM creations by default, prior to the artifacts specified by the user.
  final List<String>? mandatoryArtifactsResourceIdsLinux;
  /// The ordered list of artifact resource IDs that should be applied on all Windows VM creations by default, prior to the artifacts specified by the user.
  final List<String>? mandatoryArtifactsResourceIdsWindows;
  /// The name of the resource.
  final String name;
  /// The Network Security Group attached to the lab VMs Network interfaces to restrict open ports.
  final String networkSecurityGroupId;
  /// The lab's premium data disk storage account.
  final String premiumDataDiskStorageAccount;
  /// The setting to enable usage of premium data disks.
  /// When its value is 'Enabled', creation of standard or premium data disks is allowed.
  /// When its value is 'Disabled', only creation of standard data disks is allowed.
  final String? premiumDataDisks;
  /// The provisioning status of the resource.
  final String provisioningState;
  /// The public IP address for the lab's load balancer.
  final String publicIpId;
  /// The properties of any lab support message associated with this lab
  final LabSupportPropertiesResponse? support;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;
  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;
  /// The lab's Key vault.
  final String vaultName;
  /// The resource group in which all new lab virtual machines will be created. To let DevTest Labs manage resource group creation, set this value to null.
  final String vmCreationResourceGroup;

  /// Creates a new [GetLabResult].
  /// [announcement] The properties of any lab announcement associated with this lab
  /// [artifactsStorageAccount] The lab's artifact storage account.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] The creation date of the lab.
  /// [defaultPremiumStorageAccount] The lab's default premium storage account.
  /// [defaultStorageAccount] The lab's default storage account.
  /// [environmentPermission] The access rights to be granted to the user when provisioning an environment
  /// [extendedProperties] Extended properties of the lab used for experimental features
  /// [id] The identifier of the resource.
  /// [labStorageType] Type of storage used by the lab. It can be either Premium or Standard. Default is Premium.
  /// [loadBalancerId] The load balancer used to for lab VMs that use shared IP address.
  /// [location] The location of the resource.
  /// [mandatoryArtifactsResourceIdsLinux] The ordered list of artifact resource IDs that should be applied on all Linux VM creations by default, prior to the artifacts specified by the user.
  /// [mandatoryArtifactsResourceIdsWindows] The ordered list of artifact resource IDs that should be applied on all Windows VM creations by default, prior to the artifacts specified by the user.
  /// [name] The name of the resource.
  /// [networkSecurityGroupId] The Network Security Group attached to the lab VMs Network interfaces to restrict open ports.
  /// [premiumDataDiskStorageAccount] The lab's premium data disk storage account.
  /// [premiumDataDisks] The setting to enable usage of premium data disks.
  /// [provisioningState] The provisioning status of the resource.
  /// [publicIpId] The public IP address for the lab's load balancer.
  /// [support] The properties of any lab support message associated with this lab
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  /// [vaultName] The lab's Key vault.
  /// [vmCreationResourceGroup] The resource group in which all new lab virtual machines will be created. To let DevTest Labs manage resource group creation, set this value to null.
  GetLabResult({
    this.announcement,
    required this.artifactsStorageAccount,
    required this.azureApiVersion,
    required this.createdDate,
    required this.defaultPremiumStorageAccount,
    required this.defaultStorageAccount,
    this.environmentPermission,
    this.extendedProperties,
    required this.id,
    this.labStorageType,
    required this.loadBalancerId,
    this.location,
    this.mandatoryArtifactsResourceIdsLinux,
    this.mandatoryArtifactsResourceIdsWindows,
    required this.name,
    required this.networkSecurityGroupId,
    required this.premiumDataDiskStorageAccount,
    this.premiumDataDisks,
    required this.provisioningState,
    required this.publicIpId,
    this.support,
    this.tags,
    required this.type,
    required this.uniqueIdentifier,
    required this.vaultName,
    required this.vmCreationResourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'announcement': ?announcement == null ? null : announcement!.toMap(),
      'artifactsStorageAccount': artifactsStorageAccount,
      'azureApiVersion': azureApiVersion,
      'createdDate': createdDate,
      'defaultPremiumStorageAccount': defaultPremiumStorageAccount,
      'defaultStorageAccount': defaultStorageAccount,
      'environmentPermission': ?environmentPermission,
      'extendedProperties': ?extendedProperties,
      'id': id,
      'labStorageType': ?labStorageType,
      'loadBalancerId': loadBalancerId,
      'location': ?location,
      'mandatoryArtifactsResourceIdsLinux': ?mandatoryArtifactsResourceIdsLinux,
      'mandatoryArtifactsResourceIdsWindows': ?mandatoryArtifactsResourceIdsWindows,
      'name': name,
      'networkSecurityGroupId': networkSecurityGroupId,
      'premiumDataDiskStorageAccount': premiumDataDiskStorageAccount,
      'premiumDataDisks': ?premiumDataDisks,
      'provisioningState': provisioningState,
      'publicIpId': publicIpId,
      'support': ?support == null ? null : support!.toMap(),
      'tags': ?tags,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
      'vaultName': vaultName,
      'vmCreationResourceGroup': vmCreationResourceGroup,
    };
  }

  factory GetLabResult.fromMap(Map<String, dynamic> map) {
    return GetLabResult(
      announcement: map['announcement'] == null ? null : LabAnnouncementPropertiesResponse.fromMap((map['announcement'] as Map).cast<String, dynamic>()),
      artifactsStorageAccount: map['artifactsStorageAccount'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: map['createdDate'] as String,
      defaultPremiumStorageAccount: map['defaultPremiumStorageAccount'] as String,
      defaultStorageAccount: map['defaultStorageAccount'] as String,
      environmentPermission: map['environmentPermission'] == null ? null : map['environmentPermission'] as String,
      extendedProperties: map['extendedProperties'] == null ? null : (map['extendedProperties'] as Map).cast<String, String>(),
      id: map['id'] as String,
      labStorageType: map['labStorageType'] == null ? null : map['labStorageType'] as String,
      loadBalancerId: map['loadBalancerId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      mandatoryArtifactsResourceIdsLinux: map['mandatoryArtifactsResourceIdsLinux'] == null ? null : (map['mandatoryArtifactsResourceIdsLinux'] as List).cast<String>(),
      mandatoryArtifactsResourceIdsWindows: map['mandatoryArtifactsResourceIdsWindows'] == null ? null : (map['mandatoryArtifactsResourceIdsWindows'] as List).cast<String>(),
      name: map['name'] as String,
      networkSecurityGroupId: map['networkSecurityGroupId'] as String,
      premiumDataDiskStorageAccount: map['premiumDataDiskStorageAccount'] as String,
      premiumDataDisks: map['premiumDataDisks'] == null ? null : map['premiumDataDisks'] as String,
      provisioningState: map['provisioningState'] as String,
      publicIpId: map['publicIpId'] as String,
      support: map['support'] == null ? null : LabSupportPropertiesResponse.fromMap((map['support'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
      vaultName: map['vaultName'] as String,
      vmCreationResourceGroup: map['vmCreationResourceGroup'] as String,
    );
  }
}

