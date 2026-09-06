// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_install_properties_response.dart';
import 'bulk_creation_parameters_response.dart';
import 'data_disk_properties_response.dart';
import 'gallery_image_reference_response.dart';
import 'network_interface_properties_response.dart';
import 'schedule_creation_parameter_response.dart';

/// Properties for creating a virtual machine.
class LabVirtualMachineCreationParameterResponse {
  /// Indicates whether another user can take ownership of the virtual machine
  final pulumi.Input<bool?>? allowClaim;
  /// The artifacts to be installed on the virtual machine.
  final pulumi.Input<List<ArtifactInstallPropertiesResponse>?>? artifacts;
  /// The number of virtual machine instances to create.
  final pulumi.Input<BulkCreationParametersResponse?>? bulkCreationParameters;
  /// The creation date of the virtual machine.
  final pulumi.Input<String?>? createdDate;
  /// The custom image identifier of the virtual machine.
  final pulumi.Input<String?>? customImageId;
  /// New or existing data disks to attach to the virtual machine after creation
  final pulumi.Input<List<DataDiskPropertiesResponse>?>? dataDiskParameters;
  /// Indicates whether the virtual machine is to be created without a public IP address.
  final pulumi.Input<bool?>? disallowPublicIpAddress;
  /// The resource ID of the environment that contains this virtual machine, if any.
  final pulumi.Input<String?>? environmentId;
  /// The expiration date for VM.
  final pulumi.Input<String?>? expirationDate;
  /// The Microsoft Azure Marketplace image reference of the virtual machine.
  final pulumi.Input<GalleryImageReferenceResponse?>? galleryImageReference;
  /// Indicates whether this virtual machine uses an SSH key for authentication.
  final pulumi.Input<bool?>? isAuthenticationWithSshKey;
  /// The lab subnet name of the virtual machine.
  final pulumi.Input<String?>? labSubnetName;
  /// The lab virtual network identifier of the virtual machine.
  final pulumi.Input<String?>? labVirtualNetworkId;
  /// The location of the new virtual machine or environment
  final pulumi.Input<String?>? location;
  /// The name of the virtual machine or environment
  final pulumi.Input<String?>? name;
  /// The network interface properties.
  final pulumi.Input<NetworkInterfacePropertiesResponse?>? networkInterface;
  /// The notes of the virtual machine.
  final pulumi.Input<String?>? notes;
  /// The object identifier of the owner of the virtual machine.
  final pulumi.Input<String?>? ownerObjectId;
  /// The user principal name of the virtual machine owner.
  final pulumi.Input<String?>? ownerUserPrincipalName;
  /// The password of the virtual machine administrator.
  final pulumi.Input<String?>? password;
  /// The id of the plan associated with the virtual machine image
  final pulumi.Input<String?>? planId;
  /// Virtual Machine schedules to be created
  final pulumi.Input<List<ScheduleCreationParameterResponse>?>? scheduleParameters;
  /// The size of the virtual machine.
  final pulumi.Input<String?>? size;
  /// The SSH key of the virtual machine administrator.
  final pulumi.Input<String?>? sshKey;
  /// Storage type to use for virtual machine (i.e. Standard, Premium).
  final pulumi.Input<String?>? storageType;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The user name of the virtual machine.
  final pulumi.Input<String?>? userName;

  /// Creates a new [LabVirtualMachineCreationParameterResponse].
  /// [allowClaim] Indicates whether another user can take ownership of the virtual machine
  /// [artifacts] The artifacts to be installed on the virtual machine.
  /// [bulkCreationParameters] The number of virtual machine instances to create.
  /// [createdDate] The creation date of the virtual machine.
  /// [customImageId] The custom image identifier of the virtual machine.
  /// [dataDiskParameters] New or existing data disks to attach to the virtual machine after creation
  /// [disallowPublicIpAddress] Indicates whether the virtual machine is to be created without a public IP address.
  /// [environmentId] The resource ID of the environment that contains this virtual machine, if any.
  /// [expirationDate] The expiration date for VM.
  /// [galleryImageReference] The Microsoft Azure Marketplace image reference of the virtual machine.
  /// [isAuthenticationWithSshKey] Indicates whether this virtual machine uses an SSH key for authentication.
  /// [labSubnetName] The lab subnet name of the virtual machine.
  /// [labVirtualNetworkId] The lab virtual network identifier of the virtual machine.
  /// [location] The location of the new virtual machine or environment
  /// [name] The name of the virtual machine or environment
  /// [networkInterface] The network interface properties.
  /// [notes] The notes of the virtual machine.
  /// [ownerObjectId] The object identifier of the owner of the virtual machine.
  /// [ownerUserPrincipalName] The user principal name of the virtual machine owner.
  /// [password] The password of the virtual machine administrator.
  /// [planId] The id of the plan associated with the virtual machine image
  /// [scheduleParameters] Virtual Machine schedules to be created
  /// [size] The size of the virtual machine.
  /// [sshKey] The SSH key of the virtual machine administrator.
  /// [storageType] Storage type to use for virtual machine (i.e. Standard, Premium).
  /// [tags] The tags of the resource.
  /// [userName] The user name of the virtual machine.
  LabVirtualMachineCreationParameterResponse({
    pulumi.Input<bool?>? allowClaim,
    this.artifacts,
    this.bulkCreationParameters,
    this.createdDate,
    this.customImageId,
    this.dataDiskParameters,
    pulumi.Input<bool?>? disallowPublicIpAddress,
    this.environmentId,
    this.expirationDate,
    this.galleryImageReference,
    this.isAuthenticationWithSshKey,
    this.labSubnetName,
    this.labVirtualNetworkId,
    this.location,
    this.name,
    this.networkInterface,
    this.notes,
    pulumi.Input<String?>? ownerObjectId,
    this.ownerUserPrincipalName,
    this.password,
    this.planId,
    this.scheduleParameters,
    this.size,
    this.sshKey,
    pulumi.Input<String?>? storageType,
    this.tags,
    this.userName,
  }) : allowClaim = allowClaim ?? pulumi.Input.fromValue(false), disallowPublicIpAddress = disallowPublicIpAddress ?? pulumi.Input.fromValue(false), ownerObjectId = ownerObjectId ?? pulumi.Input.fromValue('dynamicValue'), storageType = storageType ?? pulumi.Input.fromValue('labStorageType');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowClaim': ?allowClaim,
      'artifacts': ?pulumi.Input.mapOptionalInputValue<List<ArtifactInstallPropertiesResponse>, List<Map<String, dynamic>>>(artifacts, (value) => pulumi.Input.encodeList<ArtifactInstallPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bulkCreationParameters': ?pulumi.Input.mapOptionalInputValue<BulkCreationParametersResponse, Map<String, dynamic>>(bulkCreationParameters, (value) => value.toMap()),
      'createdDate': ?createdDate,
      'customImageId': ?customImageId,
      'dataDiskParameters': ?pulumi.Input.mapOptionalInputValue<List<DataDiskPropertiesResponse>, List<Map<String, dynamic>>>(dataDiskParameters, (value) => pulumi.Input.encodeList<DataDiskPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disallowPublicIpAddress': ?disallowPublicIpAddress,
      'environmentId': ?environmentId,
      'expirationDate': ?expirationDate,
      'galleryImageReference': ?pulumi.Input.mapOptionalInputValue<GalleryImageReferenceResponse, Map<String, dynamic>>(galleryImageReference, (value) => value.toMap()),
      'isAuthenticationWithSshKey': ?isAuthenticationWithSshKey,
      'labSubnetName': ?labSubnetName,
      'labVirtualNetworkId': ?labVirtualNetworkId,
      'location': ?location,
      'name': ?name,
      'networkInterface': ?pulumi.Input.mapOptionalInputValue<NetworkInterfacePropertiesResponse, Map<String, dynamic>>(networkInterface, (value) => value.toMap()),
      'notes': ?notes,
      'ownerObjectId': ?ownerObjectId,
      'ownerUserPrincipalName': ?ownerUserPrincipalName,
      'password': ?password,
      'planId': ?planId,
      'scheduleParameters': ?pulumi.Input.mapOptionalInputValue<List<ScheduleCreationParameterResponse>, List<Map<String, dynamic>>>(scheduleParameters, (value) => pulumi.Input.encodeList<ScheduleCreationParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'size': ?size,
      'sshKey': ?sshKey,
      'storageType': ?storageType,
      'tags': ?tags,
      'userName': ?userName,
    };
  }

  factory LabVirtualMachineCreationParameterResponse.fromMap(Map<String, dynamic> map) {
    return LabVirtualMachineCreationParameterResponse(
      allowClaim: (() { final guardedValue = map['allowClaim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      artifacts: (() { final guardedValue = map['artifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArtifactInstallPropertiesResponse>(guardedValue, (value) => ArtifactInstallPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bulkCreationParameters: (() { final guardedValue = map['bulkCreationParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BulkCreationParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customImageId: (() { final guardedValue = map['customImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDiskParameters: (() { final guardedValue = map['dataDiskParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataDiskPropertiesResponse>(guardedValue, (value) => DataDiskPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disallowPublicIpAddress: (() { final guardedValue = map['disallowPublicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleryImageReference: (() { final guardedValue = map['galleryImageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryImageReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isAuthenticationWithSshKey: (() { final guardedValue = map['isAuthenticationWithSshKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labSubnetName: (() { final guardedValue = map['labSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labVirtualNetworkId: (() { final guardedValue = map['labVirtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterface: (() { final guardedValue = map['networkInterface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfacePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerObjectId: (() { final guardedValue = map['ownerObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerUserPrincipalName: (() { final guardedValue = map['ownerUserPrincipalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planId: (() { final guardedValue = map['planId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleParameters: (() { final guardedValue = map['scheduleParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduleCreationParameterResponse>(guardedValue, (value) => ScheduleCreationParameterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshKey: (() { final guardedValue = map['sshKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
