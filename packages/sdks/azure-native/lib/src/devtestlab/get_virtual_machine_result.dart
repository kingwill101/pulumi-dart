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

/// Result data returned by getVirtualMachine.
class GetVirtualMachineResult {
  /// Indicates whether another user can take ownership of the virtual machine
  final bool? allowClaim;
  /// The applicable schedule for the virtual machine.
  final ApplicableScheduleResponse applicableSchedule;
  /// The artifact deployment status for the virtual machine.
  final ArtifactDeploymentStatusPropertiesResponse artifactDeploymentStatus;
  /// The artifacts to be installed on the virtual machine.
  final List<ArtifactInstallPropertiesResponse>? artifacts;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource identifier (Microsoft.Compute) of the virtual machine.
  final String computeId;
  /// The compute virtual machine properties.
  final ComputeVmPropertiesResponse computeVm;
  /// The email address of creator of the virtual machine.
  final String createdByUser;
  /// The object identifier of the creator of the virtual machine.
  final String createdByUserId;
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
  final String fqdn;
  /// The Microsoft Azure Marketplace image reference of the virtual machine.
  final GalleryImageReferenceResponse? galleryImageReference;
  /// The identifier of the resource.
  final String id;
  /// Indicates whether this virtual machine uses an SSH key for authentication.
  final bool? isAuthenticationWithSshKey;
  /// The lab subnet name of the virtual machine.
  final String? labSubnetName;
  /// The lab virtual network identifier of the virtual machine.
  final String? labVirtualNetworkId;
  /// Last known compute power state captured in DTL
  final String lastKnownPowerState;
  /// The location of the resource.
  final String? location;
  /// The name of the resource.
  final String name;
  /// The network interface properties.
  final NetworkInterfacePropertiesResponse? networkInterface;
  /// The notes of the virtual machine.
  final String? notes;
  /// The OS type of the virtual machine.
  final String osType;
  /// The object identifier of the owner of the virtual machine.
  final String? ownerObjectId;
  /// The user principal name of the virtual machine owner.
  final String? ownerUserPrincipalName;
  /// The password of the virtual machine administrator.
  final String? password;
  /// The id of the plan associated with the virtual machine image
  final String? planId;
  /// The provisioning status of the resource.
  final String provisioningState;
  /// Virtual Machine schedules to be created
  final List<ScheduleCreationParameterResponse>? scheduleParameters;
  /// The size of the virtual machine.
  final String? size;
  /// The SSH key of the virtual machine administrator.
  final String? sshKey;
  /// Storage type to use for virtual machine (i.e. Standard, Premium).
  final String? storageType;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;
  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;
  /// The user name of the virtual machine.
  final String? userName;
  /// Tells source of creation of lab virtual machine. Output property only.
  final String virtualMachineCreationSource;

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
  /// [id] The identifier of the resource.
  /// [isAuthenticationWithSshKey] Indicates whether this virtual machine uses an SSH key for authentication.
  /// [labSubnetName] The lab subnet name of the virtual machine.
  /// [labVirtualNetworkId] The lab virtual network identifier of the virtual machine.
  /// [lastKnownPowerState] Last known compute power state captured in DTL
  /// [location] The location of the resource.
  /// [name] The name of the resource.
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
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  /// [userName] The user name of the virtual machine.
  /// [virtualMachineCreationSource] Tells source of creation of lab virtual machine. Output property only.
  GetVirtualMachineResult({
    this.allowClaim,
    required this.applicableSchedule,
    required this.artifactDeploymentStatus,
    this.artifacts,
    required this.azureApiVersion,
    required this.computeId,
    required this.computeVm,
    required this.createdByUser,
    required this.createdByUserId,
    this.createdDate,
    this.customImageId,
    this.dataDiskParameters,
    this.disallowPublicIpAddress,
    this.environmentId,
    this.expirationDate,
    required this.fqdn,
    this.galleryImageReference,
    required this.id,
    this.isAuthenticationWithSshKey,
    this.labSubnetName,
    this.labVirtualNetworkId,
    required this.lastKnownPowerState,
    this.location,
    required this.name,
    this.networkInterface,
    this.notes,
    required this.osType,
    this.ownerObjectId,
    this.ownerUserPrincipalName,
    this.password,
    this.planId,
    required this.provisioningState,
    this.scheduleParameters,
    this.size,
    this.sshKey,
    this.storageType,
    this.tags,
    required this.type,
    required this.uniqueIdentifier,
    this.userName,
    required this.virtualMachineCreationSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowClaim': ?allowClaim,
      'applicableSchedule': applicableSchedule.toMap(),
      'artifactDeploymentStatus': artifactDeploymentStatus.toMap(),
      'artifacts': ?artifacts == null ? null : pulumi.Input.encodeList<ArtifactInstallPropertiesResponse, Map<String, dynamic>>(artifacts!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'computeId': computeId,
      'computeVm': computeVm.toMap(),
      'createdByUser': createdByUser,
      'createdByUserId': createdByUserId,
      'createdDate': ?createdDate,
      'customImageId': ?customImageId,
      'dataDiskParameters': ?dataDiskParameters == null ? null : pulumi.Input.encodeList<DataDiskPropertiesResponse, Map<String, dynamic>>(dataDiskParameters!, (value) => value.toMap()),
      'disallowPublicIpAddress': ?disallowPublicIpAddress,
      'environmentId': ?environmentId,
      'expirationDate': ?expirationDate,
      'fqdn': fqdn,
      'galleryImageReference': ?galleryImageReference == null ? null : galleryImageReference!.toMap(),
      'id': id,
      'isAuthenticationWithSshKey': ?isAuthenticationWithSshKey,
      'labSubnetName': ?labSubnetName,
      'labVirtualNetworkId': ?labVirtualNetworkId,
      'lastKnownPowerState': lastKnownPowerState,
      'location': ?location,
      'name': name,
      'networkInterface': ?networkInterface == null ? null : networkInterface!.toMap(),
      'notes': ?notes,
      'osType': osType,
      'ownerObjectId': ?ownerObjectId,
      'ownerUserPrincipalName': ?ownerUserPrincipalName,
      'password': ?password,
      'planId': ?planId,
      'provisioningState': provisioningState,
      'scheduleParameters': ?scheduleParameters == null ? null : pulumi.Input.encodeList<ScheduleCreationParameterResponse, Map<String, dynamic>>(scheduleParameters!, (value) => value.toMap()),
      'size': ?size,
      'sshKey': ?sshKey,
      'storageType': ?storageType,
      'tags': ?tags,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
      'userName': ?userName,
      'virtualMachineCreationSource': virtualMachineCreationSource,
    };
  }

  factory GetVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineResult(
      allowClaim: map['allowClaim'] == null ? null : map['allowClaim']! as bool,
      applicableSchedule: ApplicableScheduleResponse.fromMap((map['applicableSchedule'] as Map).cast<String, dynamic>()),
      artifactDeploymentStatus: ArtifactDeploymentStatusPropertiesResponse.fromMap((map['artifactDeploymentStatus'] as Map).cast<String, dynamic>()),
      artifacts: map['artifacts'] == null ? null : pulumi.Input.decodeList<ArtifactInstallPropertiesResponse>(map['artifacts']!, (value) => ArtifactInstallPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      computeId: map['computeId'] as String,
      computeVm: ComputeVmPropertiesResponse.fromMap((map['computeVm'] as Map).cast<String, dynamic>()),
      createdByUser: map['createdByUser'] as String,
      createdByUserId: map['createdByUserId'] as String,
      createdDate: map['createdDate'] == null ? null : map['createdDate']! as String,
      customImageId: map['customImageId'] == null ? null : map['customImageId']! as String,
      dataDiskParameters: map['dataDiskParameters'] == null ? null : pulumi.Input.decodeList<DataDiskPropertiesResponse>(map['dataDiskParameters']!, (value) => DataDiskPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      disallowPublicIpAddress: map['disallowPublicIpAddress'] == null ? null : map['disallowPublicIpAddress']! as bool,
      environmentId: map['environmentId'] == null ? null : map['environmentId']! as String,
      expirationDate: map['expirationDate'] == null ? null : map['expirationDate']! as String,
      fqdn: map['fqdn'] as String,
      galleryImageReference: map['galleryImageReference'] == null ? null : GalleryImageReferenceResponse.fromMap((map['galleryImageReference']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      isAuthenticationWithSshKey: map['isAuthenticationWithSshKey'] == null ? null : map['isAuthenticationWithSshKey']! as bool,
      labSubnetName: map['labSubnetName'] == null ? null : map['labSubnetName']! as String,
      labVirtualNetworkId: map['labVirtualNetworkId'] == null ? null : map['labVirtualNetworkId']! as String,
      lastKnownPowerState: map['lastKnownPowerState'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      networkInterface: map['networkInterface'] == null ? null : NetworkInterfacePropertiesResponse.fromMap((map['networkInterface']! as Map).cast<String, dynamic>()),
      notes: map['notes'] == null ? null : map['notes']! as String,
      osType: map['osType'] as String,
      ownerObjectId: map['ownerObjectId'] == null ? null : map['ownerObjectId']! as String,
      ownerUserPrincipalName: map['ownerUserPrincipalName'] == null ? null : map['ownerUserPrincipalName']! as String,
      password: map['password'] == null ? null : map['password']! as String,
      planId: map['planId'] == null ? null : map['planId']! as String,
      provisioningState: map['provisioningState'] as String,
      scheduleParameters: map['scheduleParameters'] == null ? null : pulumi.Input.decodeList<ScheduleCreationParameterResponse>(map['scheduleParameters']!, (value) => ScheduleCreationParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      size: map['size'] == null ? null : map['size']! as String,
      sshKey: map['sshKey'] == null ? null : map['sshKey']! as String,
      storageType: map['storageType'] == null ? null : map['storageType']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
      userName: map['userName'] == null ? null : map['userName']! as String,
      virtualMachineCreationSource: map['virtualMachineCreationSource'] as String,
    );
  }
}

