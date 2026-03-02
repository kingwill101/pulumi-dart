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
  final pulumi.Input<bool>? allowClaim;
  /// The artifacts to be installed on the virtual machine.
  final pulumi.Input<List<ArtifactInstallPropertiesResponse>>? artifacts;
  /// The number of virtual machine instances to create.
  final pulumi.Input<BulkCreationParametersResponse>? bulkCreationParameters;
  /// The creation date of the virtual machine.
  final pulumi.Input<String>? createdDate;
  /// The custom image identifier of the virtual machine.
  final pulumi.Input<String>? customImageId;
  /// New or existing data disks to attach to the virtual machine after creation
  final pulumi.Input<List<DataDiskPropertiesResponse>>? dataDiskParameters;
  /// Indicates whether the virtual machine is to be created without a public IP address.
  final pulumi.Input<bool>? disallowPublicIpAddress;
  /// The resource ID of the environment that contains this virtual machine, if any.
  final pulumi.Input<String>? environmentId;
  /// The expiration date for VM.
  final pulumi.Input<String>? expirationDate;
  /// The Microsoft Azure Marketplace image reference of the virtual machine.
  final pulumi.Input<GalleryImageReferenceResponse>? galleryImageReference;
  /// Indicates whether this virtual machine uses an SSH key for authentication.
  final pulumi.Input<bool>? isAuthenticationWithSshKey;
  /// The lab subnet name of the virtual machine.
  final pulumi.Input<String>? labSubnetName;
  /// The lab virtual network identifier of the virtual machine.
  final pulumi.Input<String>? labVirtualNetworkId;
  /// The location of the new virtual machine or environment
  final pulumi.Input<String>? location;
  /// The name of the virtual machine or environment
  final pulumi.Input<String>? name;
  /// The network interface properties.
  final pulumi.Input<NetworkInterfacePropertiesResponse>? networkInterface;
  /// The notes of the virtual machine.
  final pulumi.Input<String>? notes;
  /// The object identifier of the owner of the virtual machine.
  final pulumi.Input<String>? ownerObjectId;
  /// The user principal name of the virtual machine owner.
  final pulumi.Input<String>? ownerUserPrincipalName;
  /// The password of the virtual machine administrator.
  final pulumi.Input<String>? password;
  /// The id of the plan associated with the virtual machine image
  final pulumi.Input<String>? planId;
  /// Virtual Machine schedules to be created
  final pulumi.Input<List<ScheduleCreationParameterResponse>>? scheduleParameters;
  /// The size of the virtual machine.
  final pulumi.Input<String>? size;
  /// The SSH key of the virtual machine administrator.
  final pulumi.Input<String>? sshKey;
  /// Storage type to use for virtual machine (i.e. Standard, Premium).
  final pulumi.Input<String>? storageType;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The user name of the virtual machine.
  final pulumi.Input<String>? userName;

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
    this.allowClaim,
    this.artifacts,
    this.bulkCreationParameters,
    this.createdDate,
    this.customImageId,
    this.dataDiskParameters,
    this.disallowPublicIpAddress,
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
    this.ownerObjectId,
    this.ownerUserPrincipalName,
    this.password,
    this.planId,
    this.scheduleParameters,
    this.size,
    this.sshKey,
    this.storageType,
    this.tags,
    this.userName,
  });

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
      allowClaim: map['allowClaim'] == null ? null : (map['allowClaim']! as bool).input(),
      artifacts: map['artifacts'] == null ? null : (pulumi.Input.decodeList<ArtifactInstallPropertiesResponse>(map['artifacts']!, (value) => ArtifactInstallPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bulkCreationParameters: map['bulkCreationParameters'] == null ? null : (BulkCreationParametersResponse.fromMap((map['bulkCreationParameters']! as Map).cast<String, dynamic>())).input(),
      createdDate: map['createdDate'] == null ? null : (map['createdDate']! as String).input(),
      customImageId: map['customImageId'] == null ? null : (map['customImageId']! as String).input(),
      dataDiskParameters: map['dataDiskParameters'] == null ? null : (pulumi.Input.decodeList<DataDiskPropertiesResponse>(map['dataDiskParameters']!, (value) => DataDiskPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      disallowPublicIpAddress: map['disallowPublicIpAddress'] == null ? null : (map['disallowPublicIpAddress']! as bool).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId']! as String).input(),
      expirationDate: map['expirationDate'] == null ? null : (map['expirationDate']! as String).input(),
      galleryImageReference: map['galleryImageReference'] == null ? null : (GalleryImageReferenceResponse.fromMap((map['galleryImageReference']! as Map).cast<String, dynamic>())).input(),
      isAuthenticationWithSshKey: map['isAuthenticationWithSshKey'] == null ? null : (map['isAuthenticationWithSshKey']! as bool).input(),
      labSubnetName: map['labSubnetName'] == null ? null : (map['labSubnetName']! as String).input(),
      labVirtualNetworkId: map['labVirtualNetworkId'] == null ? null : (map['labVirtualNetworkId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkInterface: map['networkInterface'] == null ? null : (NetworkInterfacePropertiesResponse.fromMap((map['networkInterface']! as Map).cast<String, dynamic>())).input(),
      notes: map['notes'] == null ? null : (map['notes']! as String).input(),
      ownerObjectId: map['ownerObjectId'] == null ? null : (map['ownerObjectId']! as String).input(),
      ownerUserPrincipalName: map['ownerUserPrincipalName'] == null ? null : (map['ownerUserPrincipalName']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      planId: map['planId'] == null ? null : (map['planId']! as String).input(),
      scheduleParameters: map['scheduleParameters'] == null ? null : (pulumi.Input.decodeList<ScheduleCreationParameterResponse>(map['scheduleParameters']!, (value) => ScheduleCreationParameterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      size: map['size'] == null ? null : (map['size']! as String).input(),
      sshKey: map['sshKey'] == null ? null : (map['sshKey']! as String).input(),
      storageType: map['storageType'] == null ? null : (map['storageType']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

