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
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the LabVirtualMachine
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
  /// The tags of the resource.
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
  /// [location] The location of the resource.
  /// [name] The name of the LabVirtualMachine
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
  /// [tags] The tags of the resource.
  /// [userName] The user name of the virtual machine.
  VirtualMachineArgs({
    pulumi.Output<bool>? allowClaim,
    pulumi.Output<List<ArtifactInstallProperties>>? artifacts,
    pulumi.Output<String>? createdDate,
    pulumi.Output<String>? customImageId,
    pulumi.Output<List<DataDiskProperties>>? dataDiskParameters,
    pulumi.Output<bool>? disallowPublicIpAddress,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? expirationDate,
    pulumi.Output<GalleryImageReference>? galleryImageReference,
    pulumi.Output<bool>? isAuthenticationWithSshKey,
    required pulumi.Output<String> labName,
    pulumi.Output<String>? labSubnetName,
    pulumi.Output<String>? labVirtualNetworkId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<NetworkInterfaceProperties>? networkInterface,
    pulumi.Output<String>? notes,
    pulumi.Output<String>? ownerObjectId,
    pulumi.Output<String>? ownerUserPrincipalName,
    pulumi.Output<String>? password,
    pulumi.Output<String>? planId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<ScheduleCreationParameter>>? scheduleParameters,
    pulumi.Output<String>? size,
    pulumi.Output<String>? sshKey,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? userName,
  }) :
      allowClaim = pulumi.Input.asOptionalInput<bool>(allowClaim),
      artifacts = pulumi.Input.asOptionalInput<List<ArtifactInstallProperties>>(artifacts),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      customImageId = pulumi.Input.asOptionalInput<String>(customImageId),
      dataDiskParameters = pulumi.Input.asOptionalInput<List<DataDiskProperties>>(dataDiskParameters),
      disallowPublicIpAddress = pulumi.Input.asOptionalInput<bool>(disallowPublicIpAddress),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      galleryImageReference = pulumi.Input.asOptionalInput<GalleryImageReference>(galleryImageReference),
      isAuthenticationWithSshKey = pulumi.Input.asOptionalInput<bool>(isAuthenticationWithSshKey),
      labName = pulumi.Input.asInput<String>(labName),
      labSubnetName = pulumi.Input.asOptionalInput<String>(labSubnetName),
      labVirtualNetworkId = pulumi.Input.asOptionalInput<String>(labVirtualNetworkId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterface = pulumi.Input.asOptionalInput<NetworkInterfaceProperties>(networkInterface),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      ownerObjectId = pulumi.Input.asOptionalInput<String>(ownerObjectId),
      ownerUserPrincipalName = pulumi.Input.asOptionalInput<String>(ownerUserPrincipalName),
      password = pulumi.Input.asOptionalInput<String>(password),
      planId = pulumi.Input.asOptionalInput<String>(planId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scheduleParameters = pulumi.Input.asOptionalInput<List<ScheduleCreationParameter>>(scheduleParameters),
      size = pulumi.Input.asOptionalInput<String>(size),
      sshKey = pulumi.Input.asOptionalInput<String>(sshKey),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      allowClaim: map['allowClaim'] == null ? null : pulumi.Output.create<bool>(map['allowClaim'] as bool),
      artifacts: map['artifacts'] == null ? null : pulumi.Output.create<List<ArtifactInstallProperties>>(pulumi.Input.decodeList<ArtifactInstallProperties>(map['artifacts'], (value) => ArtifactInstallProperties.fromMap((value as Map).cast<String, dynamic>()))),
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      customImageId: map['customImageId'] == null ? null : pulumi.Output.create<String>(map['customImageId'] as String),
      dataDiskParameters: map['dataDiskParameters'] == null ? null : pulumi.Output.create<List<DataDiskProperties>>(pulumi.Input.decodeList<DataDiskProperties>(map['dataDiskParameters'], (value) => DataDiskProperties.fromMap((value as Map).cast<String, dynamic>()))),
      disallowPublicIpAddress: map['disallowPublicIpAddress'] == null ? null : pulumi.Output.create<bool>(map['disallowPublicIpAddress'] as bool),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      expirationDate: map['expirationDate'] == null ? null : pulumi.Output.create<String>(map['expirationDate'] as String),
      galleryImageReference: map['galleryImageReference'] == null ? null : pulumi.Output.create<GalleryImageReference>(GalleryImageReference.fromMap((map['galleryImageReference'] as Map).cast<String, dynamic>())),
      isAuthenticationWithSshKey: map['isAuthenticationWithSshKey'] == null ? null : pulumi.Output.create<bool>(map['isAuthenticationWithSshKey'] as bool),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      labSubnetName: map['labSubnetName'] == null ? null : pulumi.Output.create<String>(map['labSubnetName'] as String),
      labVirtualNetworkId: map['labVirtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['labVirtualNetworkId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkInterface: map['networkInterface'] == null ? null : pulumi.Output.create<NetworkInterfaceProperties>(NetworkInterfaceProperties.fromMap((map['networkInterface'] as Map).cast<String, dynamic>())),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      ownerObjectId: map['ownerObjectId'] == null ? null : pulumi.Output.create<String>(map['ownerObjectId'] as String),
      ownerUserPrincipalName: map['ownerUserPrincipalName'] == null ? null : pulumi.Output.create<String>(map['ownerUserPrincipalName'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      planId: map['planId'] == null ? null : pulumi.Output.create<String>(map['planId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scheduleParameters: map['scheduleParameters'] == null ? null : pulumi.Output.create<List<ScheduleCreationParameter>>(pulumi.Input.decodeList<ScheduleCreationParameter>(map['scheduleParameters'], (value) => ScheduleCreationParameter.fromMap((value as Map).cast<String, dynamic>()))),
      size: map['size'] == null ? null : pulumi.Output.create<String>(map['size'] as String),
      sshKey: map['sshKey'] == null ? null : pulumi.Output.create<String>(map['sshKey'] as String),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

