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
      'artifacts': ?(() {
        final guardedValue = artifacts;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ArtifactInstallPropertiesResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'azureApiVersion': azureApiVersion,
      'computeId': computeId,
      'computeVm': computeVm.toMap(),
      'createdByUser': createdByUser,
      'createdByUserId': createdByUserId,
      'createdDate': ?createdDate,
      'customImageId': ?customImageId,
      'dataDiskParameters': ?(() {
        final guardedValue = dataDiskParameters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          DataDiskPropertiesResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'disallowPublicIpAddress': ?disallowPublicIpAddress,
      'environmentId': ?environmentId,
      'expirationDate': ?expirationDate,
      'fqdn': fqdn,
      'galleryImageReference': ?galleryImageReference?.toMap(),
      'id': id,
      'isAuthenticationWithSshKey': ?isAuthenticationWithSshKey,
      'labSubnetName': ?labSubnetName,
      'labVirtualNetworkId': ?labVirtualNetworkId,
      'lastKnownPowerState': lastKnownPowerState,
      'location': ?location,
      'name': name,
      'networkInterface': ?networkInterface?.toMap(),
      'notes': ?notes,
      'osType': osType,
      'ownerObjectId': ?ownerObjectId,
      'ownerUserPrincipalName': ?ownerUserPrincipalName,
      'password': ?password,
      'planId': ?planId,
      'provisioningState': provisioningState,
      'scheduleParameters': ?(() {
        final guardedValue = scheduleParameters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ScheduleCreationParameterResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
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
      allowClaim: (() {
        final guardedValue = map['allowClaim'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      applicableSchedule: ApplicableScheduleResponse.fromMap(
        (map['applicableSchedule']! as Map).cast<String, dynamic>(),
      ),
      artifactDeploymentStatus:
          ArtifactDeploymentStatusPropertiesResponse.fromMap(
            (map['artifactDeploymentStatus']! as Map).cast<String, dynamic>(),
          ),
      artifacts: (() {
        final guardedValue = map['artifacts'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ArtifactInstallPropertiesResponse>(
          guardedValue,
          (value) => ArtifactInstallPropertiesResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      computeId: map['computeId'] as String,
      computeVm: ComputeVmPropertiesResponse.fromMap(
        (map['computeVm']! as Map).cast<String, dynamic>(),
      ),
      createdByUser: map['createdByUser'] as String,
      createdByUserId: map['createdByUserId'] as String,
      createdDate: (() {
        final guardedValue = map['createdDate'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      customImageId: (() {
        final guardedValue = map['customImageId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dataDiskParameters: (() {
        final guardedValue = map['dataDiskParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<DataDiskPropertiesResponse>(
          guardedValue,
          (value) => DataDiskPropertiesResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      disallowPublicIpAddress: (() {
        final guardedValue = map['disallowPublicIpAddress'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      environmentId: (() {
        final guardedValue = map['environmentId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      expirationDate: (() {
        final guardedValue = map['expirationDate'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      fqdn: map['fqdn'] as String,
      galleryImageReference: (() {
        final guardedValue = map['galleryImageReference'];
        if (guardedValue == null) return null;
        return GalleryImageReferenceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      isAuthenticationWithSshKey: (() {
        final guardedValue = map['isAuthenticationWithSshKey'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      labSubnetName: (() {
        final guardedValue = map['labSubnetName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      labVirtualNetworkId: (() {
        final guardedValue = map['labVirtualNetworkId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      lastKnownPowerState: map['lastKnownPowerState'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      networkInterface: (() {
        final guardedValue = map['networkInterface'];
        if (guardedValue == null) return null;
        return NetworkInterfacePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      notes: (() {
        final guardedValue = map['notes'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      osType: map['osType'] as String,
      ownerObjectId: (() {
        final guardedValue = map['ownerObjectId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      ownerUserPrincipalName: (() {
        final guardedValue = map['ownerUserPrincipalName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      planId: (() {
        final guardedValue = map['planId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      scheduleParameters: (() {
        final guardedValue = map['scheduleParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ScheduleCreationParameterResponse>(
          guardedValue,
          (value) => ScheduleCreationParameterResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sshKey: (() {
        final guardedValue = map['sshKey'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      storageType: (() {
        final guardedValue = map['storageType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      virtualMachineCreationSource:
          map['virtualMachineCreationSource'] as String,
    );
  }
}
