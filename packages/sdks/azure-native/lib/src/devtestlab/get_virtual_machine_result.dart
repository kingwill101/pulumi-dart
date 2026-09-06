// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'applicable_schedule_response.dart';
import 'artifact_deployment_status_properties_response.dart';
import 'artifact_install_properties_response.dart';
import 'compute_vm_properties_response.dart';
import 'data_disk_properties_response.dart';
import 'gallery_image_reference_response.dart';
import 'network_interface_properties_response.dart';
import 'schedule_creation_parameter_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVirtualMachine.
class GetVirtualMachineResult {
  /// Indicates whether another user can take ownership of the virtual machine
  final bool? allowClaim;
  /// The applicable schedule for the virtual machine.
  final ApplicableScheduleResponse? applicableSchedule;
  /// The artifact deployment status for the virtual machine.
  final ArtifactDeploymentStatusPropertiesResponse? artifactDeploymentStatus;
  /// The artifacts to be installed on the virtual machine.
  final List<ArtifactInstallPropertiesResponse>? artifacts;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource identifier (Microsoft.Compute) of the virtual machine.
  final String? computeId;
  /// The compute virtual machine properties.
  final ComputeVmPropertiesResponse? computeVm;
  /// The email address of creator of the virtual machine.
  final String? createdByUser;
  /// The object identifier of the creator of the virtual machine.
  final String? createdByUserId;
  /// The creation date of the virtual machine.
  final String? createdDate;
  /// The custom image identifier of the virtual machine.
  final String? customImageId;
  /// New or existing data disks to attach to the virtual machine after creation
  final List<DataDiskPropertiesResponse>? dataDiskParameters;
  /// Indicates whether the virtual machine is to be created without a public IP address.
  final bool? disallowPublicIpAddress;
  /// The resource ID of the environment that contains this virtual machine, if any.
  final String? environmentId;
  /// The expiration date for VM.
  final String? expirationDate;
  /// The fully-qualified domain name of the virtual machine.
  final String? fqdn;
  /// The Microsoft Azure Marketplace image reference of the virtual machine.
  final GalleryImageReferenceResponse? galleryImageReference;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Indicates whether this virtual machine uses an SSH key for authentication.
  final bool? isAuthenticationWithSshKey;
  /// The lab subnet name of the virtual machine.
  final String? labSubnetName;
  /// The lab virtual network identifier of the virtual machine.
  final String? labVirtualNetworkId;
  /// Last known compute power state captured in DTL
  final String? lastKnownPowerState;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The network interface properties.
  final NetworkInterfacePropertiesResponse? networkInterface;
  /// The notes of the virtual machine.
  final String? notes;
  /// The OS type of the virtual machine.
  final String? osType;
  /// The object identifier of the owner of the virtual machine.
  final String? ownerObjectId;
  /// The user principal name of the virtual machine owner.
  final String? ownerUserPrincipalName;
  /// The password of the virtual machine administrator.
  final String? password;
  /// The id of the plan associated with the virtual machine image
  final String? planId;
  /// The provisioning status of the resource.
  final String? provisioningState;
  /// Virtual Machine schedules to be created
  final List<ScheduleCreationParameterResponse>? scheduleParameters;
  /// The size of the virtual machine.
  final String? size;
  /// The SSH key of the virtual machine administrator.
  final String? sshKey;
  /// Storage type to use for virtual machine (i.e. Standard, Premium).
  final String? storageType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The unique immutable identifier of a resource (Guid).
  final String? uniqueIdentifier;
  /// The user name of the virtual machine.
  final String? userName;
  /// Tells source of creation of lab virtual machine. Output property only.
  final String? virtualMachineCreationSource;

  /// Creates a new [GetVirtualMachineResult].
  /// [allowClaim] Indicates whether another user can take ownership of the virtual machine
  /// [applicableSchedule] The applicable schedule for the virtual machine.
  /// [artifactDeploymentStatus] The artifact deployment status for the virtual machine.
  /// [artifacts] The artifacts to be installed on the virtual machine.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [computeId] The resource identifier (Microsoft.Compute) of the virtual machine.
  /// [computeVm] The compute virtual machine properties.
  /// [createdByUser] The email address of creator of the virtual machine.
  /// [createdByUserId] The object identifier of the creator of the virtual machine.
  /// [createdDate] The creation date of the virtual machine.
  /// [customImageId] The custom image identifier of the virtual machine.
  /// [dataDiskParameters] New or existing data disks to attach to the virtual machine after creation
  /// [disallowPublicIpAddress] Indicates whether the virtual machine is to be created without a public IP address.
  /// [environmentId] The resource ID of the environment that contains this virtual machine, if any.
  /// [expirationDate] The expiration date for VM.
  /// [fqdn] The fully-qualified domain name of the virtual machine.
  /// [galleryImageReference] The Microsoft Azure Marketplace image reference of the virtual machine.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isAuthenticationWithSshKey] Indicates whether this virtual machine uses an SSH key for authentication.
  /// [labSubnetName] The lab subnet name of the virtual machine.
  /// [labVirtualNetworkId] The lab virtual network identifier of the virtual machine.
  /// [lastKnownPowerState] Last known compute power state captured in DTL
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkInterface] The network interface properties.
  /// [notes] The notes of the virtual machine.
  /// [osType] The OS type of the virtual machine.
  /// [ownerObjectId] The object identifier of the owner of the virtual machine.
  /// [ownerUserPrincipalName] The user principal name of the virtual machine owner.
  /// [password] The password of the virtual machine administrator.
  /// [planId] The id of the plan associated with the virtual machine image
  /// [provisioningState] The provisioning status of the resource.
  /// [scheduleParameters] Virtual Machine schedules to be created
  /// [size] The size of the virtual machine.
  /// [sshKey] The SSH key of the virtual machine administrator.
  /// [storageType] Storage type to use for virtual machine (i.e. Standard, Premium).
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  /// [userName] The user name of the virtual machine.
  /// [virtualMachineCreationSource] Tells source of creation of lab virtual machine. Output property only.
  GetVirtualMachineResult({
    bool? allowClaim,
    this.applicableSchedule,
    this.artifactDeploymentStatus,
    this.artifacts,
    this.azureApiVersion,
    this.computeId,
    this.computeVm,
    this.createdByUser,
    this.createdByUserId,
    this.createdDate,
    this.customImageId,
    this.dataDiskParameters,
    bool? disallowPublicIpAddress,
    this.environmentId,
    this.expirationDate,
    this.fqdn,
    this.galleryImageReference,
    this.id,
    this.isAuthenticationWithSshKey,
    this.labSubnetName,
    this.labVirtualNetworkId,
    this.lastKnownPowerState,
    this.location,
    this.name,
    this.networkInterface,
    this.notes,
    this.osType,
    String? ownerObjectId,
    this.ownerUserPrincipalName,
    this.password,
    this.planId,
    this.provisioningState,
    this.scheduleParameters,
    this.size,
    this.sshKey,
    String? storageType,
    this.systemData,
    this.tags,
    this.type,
    this.uniqueIdentifier,
    this.userName,
    this.virtualMachineCreationSource,
  }) : allowClaim = allowClaim ?? false, disallowPublicIpAddress = disallowPublicIpAddress ?? false, ownerObjectId = ownerObjectId ?? 'dynamicValue', storageType = storageType ?? 'labStorageType';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowClaim': ?allowClaim,
      'applicableSchedule': ?applicableSchedule?.toMap(),
      'artifactDeploymentStatus': ?artifactDeploymentStatus?.toMap(),
      'artifacts': ?(() { final guardedValue = artifacts; if (guardedValue == null) return null; return pulumi.Input.encodeList<ArtifactInstallPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'computeId': ?computeId,
      'computeVm': ?computeVm?.toMap(),
      'createdByUser': ?createdByUser,
      'createdByUserId': ?createdByUserId,
      'createdDate': ?createdDate,
      'customImageId': ?customImageId,
      'dataDiskParameters': ?(() { final guardedValue = dataDiskParameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<DataDiskPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'disallowPublicIpAddress': ?disallowPublicIpAddress,
      'environmentId': ?environmentId,
      'expirationDate': ?expirationDate,
      'fqdn': ?fqdn,
      'galleryImageReference': ?galleryImageReference?.toMap(),
      'id': ?id,
      'isAuthenticationWithSshKey': ?isAuthenticationWithSshKey,
      'labSubnetName': ?labSubnetName,
      'labVirtualNetworkId': ?labVirtualNetworkId,
      'lastKnownPowerState': ?lastKnownPowerState,
      'location': ?location,
      'name': ?name,
      'networkInterface': ?networkInterface?.toMap(),
      'notes': ?notes,
      'osType': ?osType,
      'ownerObjectId': ?ownerObjectId,
      'ownerUserPrincipalName': ?ownerUserPrincipalName,
      'password': ?password,
      'planId': ?planId,
      'provisioningState': ?provisioningState,
      'scheduleParameters': ?(() { final guardedValue = scheduleParameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<ScheduleCreationParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'size': ?size,
      'sshKey': ?sshKey,
      'storageType': ?storageType,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uniqueIdentifier': ?uniqueIdentifier,
      'userName': ?userName,
      'virtualMachineCreationSource': ?virtualMachineCreationSource,
    };
  }

  factory GetVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineResult(
      allowClaim: (() { final guardedValue = map['allowClaim']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      applicableSchedule: (() { final guardedValue = map['applicableSchedule']; if (guardedValue == null) return null; return ApplicableScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      artifactDeploymentStatus: (() { final guardedValue = map['artifactDeploymentStatus']; if (guardedValue == null) return null; return ArtifactDeploymentStatusPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      artifacts: (() { final guardedValue = map['artifacts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ArtifactInstallPropertiesResponse>(guardedValue, (value) => ArtifactInstallPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeId: (() { final guardedValue = map['computeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeVm: (() { final guardedValue = map['computeVm']; if (guardedValue == null) return null; return ComputeVmPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdByUser: (() { final guardedValue = map['createdByUser']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdByUserId: (() { final guardedValue = map['createdByUserId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customImageId: (() { final guardedValue = map['customImageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataDiskParameters: (() { final guardedValue = map['dataDiskParameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataDiskPropertiesResponse>(guardedValue, (value) => DataDiskPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      disallowPublicIpAddress: (() { final guardedValue = map['disallowPublicIpAddress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      galleryImageReference: (() { final guardedValue = map['galleryImageReference']; if (guardedValue == null) return null; return GalleryImageReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isAuthenticationWithSshKey: (() { final guardedValue = map['isAuthenticationWithSshKey']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labSubnetName: (() { final guardedValue = map['labSubnetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labVirtualNetworkId: (() { final guardedValue = map['labVirtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastKnownPowerState: (() { final guardedValue = map['lastKnownPowerState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterface: (() { final guardedValue = map['networkInterface']; if (guardedValue == null) return null; return NetworkInterfacePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerObjectId: (() { final guardedValue = map['ownerObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerUserPrincipalName: (() { final guardedValue = map['ownerUserPrincipalName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      planId: (() { final guardedValue = map['planId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scheduleParameters: (() { final guardedValue = map['scheduleParameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScheduleCreationParameterResponse>(guardedValue, (value) => ScheduleCreationParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sshKey: (() { final guardedValue = map['sshKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uniqueIdentifier: (() { final guardedValue = map['uniqueIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachineCreationSource: (() { final guardedValue = map['virtualMachineCreationSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
