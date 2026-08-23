// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_install_properties.dart';
import 'data_disk_properties.dart';
import 'gallery_image_reference.dart';
import 'network_interface_properties.dart';
import 'schedule_creation_parameter.dart';

/// {@template pulumi_devtestlab_virtual_machine_args_doc}
/// The set of arguments for VirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_virtual_machine_args_doc}
class VirtualMachineArgs {
  /// Indicates whether another user can take ownership of the virtual machine
  final pulumi.Input<bool>? allowClaim;
  /// The artifacts to be installed on the virtual machine.
  final pulumi.Input<List<ArtifactInstallProperties>>? artifacts;
  /// The creation date of the virtual machine.
  final pulumi.Input<String>? createdDate;
  /// The custom image identifier of the virtual machine.
  final pulumi.Input<String>? customImageId;
  /// New or existing data disks to attach to the virtual machine after creation
  final pulumi.Input<List<DataDiskProperties>>? dataDiskParameters;
  /// Indicates whether the virtual machine is to be created without a public IP address.
  final pulumi.Input<bool>? disallowPublicIpAddress;
  /// The resource ID of the environment that contains this virtual machine, if any.
  final pulumi.Input<String>? environmentId;
  /// The expiration date for VM.
  final pulumi.Input<String>? expirationDate;
  /// The Microsoft Azure Marketplace image reference of the virtual machine.
  final pulumi.Input<GalleryImageReference>? galleryImageReference;
  /// Indicates whether this virtual machine uses an SSH key for authentication.
  final pulumi.Input<bool>? isAuthenticationWithSshKey;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The lab subnet name of the virtual machine.
  final pulumi.Input<String>? labSubnetName;
  /// The lab virtual network identifier of the virtual machine.
  final pulumi.Input<String>? labVirtualNetworkId;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the virtual machine.
  final pulumi.Input<String>? name;
  /// The network interface properties.
  final pulumi.Input<NetworkInterfaceProperties>? networkInterface;
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
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Virtual Machine schedules to be created
  final pulumi.Input<List<ScheduleCreationParameter>>? scheduleParameters;
  /// The size of the virtual machine.
  final pulumi.Input<String>? size;
  /// The SSH key of the virtual machine administrator.
  final pulumi.Input<String>? sshKey;
  /// Storage type to use for virtual machine (i.e. Standard, Premium).
  final pulumi.Input<String>? storageType;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The user name of the virtual machine.
  final pulumi.Input<String>? userName;

  /// Creates a new [VirtualMachineArgs].
  /// [allowClaim] Indicates whether another user can take ownership of the virtual machine
  /// [artifacts] The artifacts to be installed on the virtual machine.
  /// [createdDate] The creation date of the virtual machine.
  /// [customImageId] The custom image identifier of the virtual machine.
  /// [dataDiskParameters] New or existing data disks to attach to the virtual machine after creation
  /// [disallowPublicIpAddress] Indicates whether the virtual machine is to be created without a public IP address.
  /// [environmentId] The resource ID of the environment that contains this virtual machine, if any.
  /// [expirationDate] The expiration date for VM.
  /// [galleryImageReference] The Microsoft Azure Marketplace image reference of the virtual machine.
  /// [isAuthenticationWithSshKey] Indicates whether this virtual machine uses an SSH key for authentication.
  /// [labName] The name of the lab.
  /// [labSubnetName] The lab subnet name of the virtual machine.
  /// [labVirtualNetworkId] The lab virtual network identifier of the virtual machine.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the virtual machine.
  /// [networkInterface] The network interface properties.
  /// [notes] The notes of the virtual machine.
  /// [ownerObjectId] The object identifier of the owner of the virtual machine.
  /// [ownerUserPrincipalName] The user principal name of the virtual machine owner.
  /// [password] The password of the virtual machine administrator.
  /// [planId] The id of the plan associated with the virtual machine image
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduleParameters] Virtual Machine schedules to be created
  /// [size] The size of the virtual machine.
  /// [sshKey] The SSH key of the virtual machine administrator.
  /// [storageType] Storage type to use for virtual machine (i.e. Standard, Premium).
  /// [tags] Resource tags.
  /// [userName] The user name of the virtual machine.
  const VirtualMachineArgs({
    this.allowClaim,
    this.artifacts,
    this.createdDate,
    this.customImageId,
    this.dataDiskParameters,
    this.disallowPublicIpAddress,
    this.environmentId,
    this.expirationDate,
    this.galleryImageReference,
    this.isAuthenticationWithSshKey,
    required this.labName,
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
    required this.resourceGroupName,
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
      'artifacts': ?pulumi.Input.mapOptionalInputValue<List<ArtifactInstallProperties>, List<Map<String, dynamic>>>(artifacts, (value) => pulumi.Input.encodeList<ArtifactInstallProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdDate': ?createdDate,
      'customImageId': ?customImageId,
      'dataDiskParameters': ?pulumi.Input.mapOptionalInputValue<List<DataDiskProperties>, List<Map<String, dynamic>>>(dataDiskParameters, (value) => pulumi.Input.encodeList<DataDiskProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disallowPublicIpAddress': ?disallowPublicIpAddress,
      'environmentId': ?environmentId,
      'expirationDate': ?expirationDate,
      'galleryImageReference': ?pulumi.Input.mapOptionalInputValue<GalleryImageReference, Map<String, dynamic>>(galleryImageReference, (value) => value.toMap()),
      'isAuthenticationWithSshKey': ?isAuthenticationWithSshKey,
      'labName': labName,
      'labSubnetName': ?labSubnetName,
      'labVirtualNetworkId': ?labVirtualNetworkId,
      'location': ?location,
      'name': ?name,
      'networkInterface': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceProperties, Map<String, dynamic>>(networkInterface, (value) => value.toMap()),
      'notes': ?notes,
      'ownerObjectId': ?ownerObjectId,
      'ownerUserPrincipalName': ?ownerUserPrincipalName,
      'password': ?password,
      'planId': ?planId,
      'resourceGroupName': resourceGroupName,
      'scheduleParameters': ?pulumi.Input.mapOptionalInputValue<List<ScheduleCreationParameter>, List<Map<String, dynamic>>>(scheduleParameters, (value) => pulumi.Input.encodeList<ScheduleCreationParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'size': ?size,
      'sshKey': ?sshKey,
      'storageType': ?storageType,
      'tags': ?tags,
      'userName': ?userName,
    };
  }

  factory VirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineArgs(
      allowClaim: (() { final guardedValue = map['allowClaim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      artifacts: (() { final guardedValue = map['artifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArtifactInstallProperties>(guardedValue, (value) => ArtifactInstallProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customImageId: (() { final guardedValue = map['customImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDiskParameters: (() { final guardedValue = map['dataDiskParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataDiskProperties>(guardedValue, (value) => DataDiskProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disallowPublicIpAddress: (() { final guardedValue = map['disallowPublicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleryImageReference: (() { final guardedValue = map['galleryImageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryImageReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isAuthenticationWithSshKey: (() { final guardedValue = map['isAuthenticationWithSshKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      labSubnetName: (() { final guardedValue = map['labSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labVirtualNetworkId: (() { final guardedValue = map['labVirtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterface: (() { final guardedValue = map['networkInterface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfaceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerObjectId: (() { final guardedValue = map['ownerObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerUserPrincipalName: (() { final guardedValue = map['ownerUserPrincipalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planId: (() { final guardedValue = map['planId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scheduleParameters: (() { final guardedValue = map['scheduleParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduleCreationParameter>(guardedValue, (value) => ScheduleCreationParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshKey: (() { final guardedValue = map['sshKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
