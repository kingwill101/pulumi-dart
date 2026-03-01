// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_install_properties.dart';
import 'bulk_creation_parameters.dart';
import 'data_disk_properties.dart';
import 'gallery_image_reference.dart';
import 'network_interface_properties.dart';
import 'schedule_creation_parameter.dart';

/// Properties for creating a virtual machine.
class LabVirtualMachineCreationParameter {
  /// Indicates whether another user can take ownership of the virtual machine
  final bool? allowClaim;
  /// The artifacts to be installed on the virtual machine.
  final List<ArtifactInstallProperties>? artifacts;
  /// The number of virtual machine instances to create.
  final BulkCreationParameters? bulkCreationParameters;
  /// The creation date of the virtual machine.
  final String? createdDate;
  /// The custom image identifier of the virtual machine.
  final String? customImageId;
  /// New or existing data disks to attach to the virtual machine after creation
  final List<DataDiskProperties>? dataDiskParameters;
  /// Indicates whether the virtual machine is to be created without a public IP address.
  final bool? disallowPublicIpAddress;
  /// The resource ID of the environment that contains this virtual machine, if any.
  final String? environmentId;
  /// The expiration date for VM.
  final String? expirationDate;
  /// The Microsoft Azure Marketplace image reference of the virtual machine.
  final GalleryImageReference? galleryImageReference;
  /// Indicates whether this virtual machine uses an SSH key for authentication.
  final bool? isAuthenticationWithSshKey;
  /// The lab subnet name of the virtual machine.
  final String? labSubnetName;
  /// The lab virtual network identifier of the virtual machine.
  final String? labVirtualNetworkId;
  /// The location of the new virtual machine or environment
  final String? location;
  /// The name of the virtual machine or environment
  final String? name;
  /// The network interface properties.
  final NetworkInterfaceProperties? networkInterface;
  /// The notes of the virtual machine.
  final String? notes;
  /// The object identifier of the owner of the virtual machine.
  final String? ownerObjectId;
  /// The user principal name of the virtual machine owner.
  final String? ownerUserPrincipalName;
  /// The password of the virtual machine administrator.
  final String? password;
  /// The id of the plan associated with the virtual machine image
  final String? planId;
  /// Virtual Machine schedules to be created
  final List<ScheduleCreationParameter>? scheduleParameters;
  /// The size of the virtual machine.
  final String? size;
  /// The SSH key of the virtual machine administrator.
  final String? sshKey;
  /// Storage type to use for virtual machine (i.e. Standard, Premium).
  final String? storageType;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The user name of the virtual machine.
  final String? userName;

  /// Creates a new [LabVirtualMachineCreationParameter].
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
  LabVirtualMachineCreationParameter({
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
      'artifacts': ?artifacts == null ? null : pulumi.Input.encodeList<ArtifactInstallProperties, Map<String, dynamic>>(artifacts!, (value) => value.toMap()),
      'bulkCreationParameters': ?bulkCreationParameters == null ? null : bulkCreationParameters!.toMap(),
      'createdDate': ?createdDate,
      'customImageId': ?customImageId,
      'dataDiskParameters': ?dataDiskParameters == null ? null : pulumi.Input.encodeList<DataDiskProperties, Map<String, dynamic>>(dataDiskParameters!, (value) => value.toMap()),
      'disallowPublicIpAddress': ?disallowPublicIpAddress,
      'environmentId': ?environmentId,
      'expirationDate': ?expirationDate,
      'galleryImageReference': ?galleryImageReference == null ? null : galleryImageReference!.toMap(),
      'isAuthenticationWithSshKey': ?isAuthenticationWithSshKey,
      'labSubnetName': ?labSubnetName,
      'labVirtualNetworkId': ?labVirtualNetworkId,
      'location': ?location,
      'name': ?name,
      'networkInterface': ?networkInterface == null ? null : networkInterface!.toMap(),
      'notes': ?notes,
      'ownerObjectId': ?ownerObjectId,
      'ownerUserPrincipalName': ?ownerUserPrincipalName,
      'password': ?password,
      'planId': ?planId,
      'scheduleParameters': ?scheduleParameters == null ? null : pulumi.Input.encodeList<ScheduleCreationParameter, Map<String, dynamic>>(scheduleParameters!, (value) => value.toMap()),
      'size': ?size,
      'sshKey': ?sshKey,
      'storageType': ?storageType,
      'tags': ?tags,
      'userName': ?userName,
    };
  }

  factory LabVirtualMachineCreationParameter.fromMap(Map<String, dynamic> map) {
    return LabVirtualMachineCreationParameter(
      allowClaim: map['allowClaim'] == null ? null : map['allowClaim'] as bool,
      artifacts: map['artifacts'] == null ? null : pulumi.Input.decodeList<ArtifactInstallProperties>(map['artifacts'], (value) => ArtifactInstallProperties.fromMap((value as Map).cast<String, dynamic>())),
      bulkCreationParameters: map['bulkCreationParameters'] == null ? null : BulkCreationParameters.fromMap((map['bulkCreationParameters'] as Map).cast<String, dynamic>()),
      createdDate: map['createdDate'] == null ? null : map['createdDate'] as String,
      customImageId: map['customImageId'] == null ? null : map['customImageId'] as String,
      dataDiskParameters: map['dataDiskParameters'] == null ? null : pulumi.Input.decodeList<DataDiskProperties>(map['dataDiskParameters'], (value) => DataDiskProperties.fromMap((value as Map).cast<String, dynamic>())),
      disallowPublicIpAddress: map['disallowPublicIpAddress'] == null ? null : map['disallowPublicIpAddress'] as bool,
      environmentId: map['environmentId'] == null ? null : map['environmentId'] as String,
      expirationDate: map['expirationDate'] == null ? null : map['expirationDate'] as String,
      galleryImageReference: map['galleryImageReference'] == null ? null : GalleryImageReference.fromMap((map['galleryImageReference'] as Map).cast<String, dynamic>()),
      isAuthenticationWithSshKey: map['isAuthenticationWithSshKey'] == null ? null : map['isAuthenticationWithSshKey'] as bool,
      labSubnetName: map['labSubnetName'] == null ? null : map['labSubnetName'] as String,
      labVirtualNetworkId: map['labVirtualNetworkId'] == null ? null : map['labVirtualNetworkId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkInterface: map['networkInterface'] == null ? null : NetworkInterfaceProperties.fromMap((map['networkInterface'] as Map).cast<String, dynamic>()),
      notes: map['notes'] == null ? null : map['notes'] as String,
      ownerObjectId: map['ownerObjectId'] == null ? null : map['ownerObjectId'] as String,
      ownerUserPrincipalName: map['ownerUserPrincipalName'] == null ? null : map['ownerUserPrincipalName'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      planId: map['planId'] == null ? null : map['planId'] as String,
      scheduleParameters: map['scheduleParameters'] == null ? null : pulumi.Input.decodeList<ScheduleCreationParameter>(map['scheduleParameters'], (value) => ScheduleCreationParameter.fromMap((value as Map).cast<String, dynamic>())),
      size: map['size'] == null ? null : map['size'] as String,
      sshKey: map['sshKey'] == null ? null : map['sshKey'] as String,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

