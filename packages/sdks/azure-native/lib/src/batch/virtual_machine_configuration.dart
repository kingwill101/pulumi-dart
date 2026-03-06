// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_configuration.dart';
import 'data_disk.dart';
import 'disk_encryption_configuration.dart';
import 'image_reference.dart';
import 'node_placement_configuration.dart';
import 'osdisk.dart';
import 'security_profile.dart';
import 'service_artifact_reference.dart';
import 'vmextension.dart';
import 'windows_configuration.dart';

/// The configuration for compute nodes in a pool based on the Azure Virtual Machines infrastructure.
class VirtualMachineConfiguration {
  /// If specified, setup is performed on each node in the pool to allow tasks to run in containers. All regular tasks and job manager tasks run on this pool must specify the containerSettings property, and all other tasks may specify it.
  final pulumi.Input<ContainerConfiguration>? containerConfiguration;
  /// This property must be specified if the compute nodes in the pool need to have empty data disks attached to them.
  final pulumi.Input<List<DataDisk>>? dataDisks;
  /// If specified, encryption is performed on each node in the pool during node provisioning.
  final pulumi.Input<DiskEncryptionConfiguration>? diskEncryptionConfiguration;
  /// If specified, the extensions mentioned in this configuration will be installed on each node.
  final pulumi.Input<List<VMExtension>>? extensions;
  /// A reference to an Azure Virtual Machines Marketplace image or the Azure Image resource of a custom Virtual Machine. To get the list of all imageReferences verified by Azure Batch, see the 'List supported node agent SKUs' operation.
  final pulumi.Input<ImageReference> imageReference;
  /// This only applies to images that contain the Windows operating system, and should only be used when you hold valid on-premises licenses for the nodes which will be deployed. If omitted, no on-premises licensing discount is applied. Values are:
  ///
  /// Windows_Server - The on-premises license is for Windows Server.
  /// Windows_Client - The on-premises license is for Windows Client.
  final pulumi.Input<String>? licenseType;
  /// The Batch node agent is a program that runs on each node in the pool, and provides the command-and-control interface between the node and the Batch service. There are different implementations of the node agent, known as SKUs, for different operating systems. You must specify a node agent SKU which matches the selected image reference. To get the list of supported node agent SKUs along with their list of verified image references, see the 'List supported node agent SKUs' operation.
  final pulumi.Input<String> nodeAgentSkuId;
  /// This configuration will specify rules on how nodes in the pool will be physically allocated.
  final pulumi.Input<NodePlacementConfiguration>? nodePlacementConfiguration;
  /// Contains configuration for ephemeral OSDisk settings.
  final pulumi.Input<OSDisk>? osDisk;
  /// Specifies the security profile settings for the virtual machine or virtual machine scale set.
  final pulumi.Input<SecurityProfile>? securityProfile;
  /// The service artifact reference id in the form of /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/serviceArtifacts/{serviceArtifactName}/vmArtifactsProfiles/{vmArtifactsProfilesName}
  final pulumi.Input<ServiceArtifactReference>? serviceArtifactReference;
  /// This property must not be specified if the imageReference specifies a Linux OS image.
  final pulumi.Input<WindowsConfiguration>? windowsConfiguration;

  /// Creates a new [VirtualMachineConfiguration].
  /// [containerConfiguration] If specified, setup is performed on each node in the pool to allow tasks to run in containers. All regular tasks and job manager tasks run on this pool must specify the containerSettings property, and all other tasks may specify it.
  /// [dataDisks] This property must be specified if the compute nodes in the pool need to have empty data disks attached to them.
  /// [diskEncryptionConfiguration] If specified, encryption is performed on each node in the pool during node provisioning.
  /// [extensions] If specified, the extensions mentioned in this configuration will be installed on each node.
  /// [imageReference] A reference to an Azure Virtual Machines Marketplace image or the Azure Image resource of a custom Virtual Machine. To get the list of all imageReferences verified by Azure Batch, see the 'List supported node agent SKUs' operation.
  /// [licenseType] This only applies to images that contain the Windows operating system, and should only be used when you hold valid on-premises licenses for the nodes which will be deployed. If omitted, no on-premises licensing discount is applied. Values are:
  /// [nodeAgentSkuId] The Batch node agent is a program that runs on each node in the pool, and provides the command-and-control interface between the node and the Batch service. There are different implementations of the node agent, known as SKUs, for different operating systems. You must specify a node agent SKU which matches the selected image reference. To get the list of supported node agent SKUs along with their list of verified image references, see the 'List supported node agent SKUs' operation.
  /// [nodePlacementConfiguration] This configuration will specify rules on how nodes in the pool will be physically allocated.
  /// [osDisk] Contains configuration for ephemeral OSDisk settings.
  /// [securityProfile] Specifies the security profile settings for the virtual machine or virtual machine scale set.
  /// [serviceArtifactReference] The service artifact reference id in the form of /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/serviceArtifacts/{serviceArtifactName}/vmArtifactsProfiles/{vmArtifactsProfilesName}
  /// [windowsConfiguration] This property must not be specified if the imageReference specifies a Linux OS image.
  const VirtualMachineConfiguration({
    this.containerConfiguration,
    this.dataDisks,
    this.diskEncryptionConfiguration,
    this.extensions,
    required this.imageReference,
    this.licenseType,
    required this.nodeAgentSkuId,
    this.nodePlacementConfiguration,
    this.osDisk,
    this.securityProfile,
    this.serviceArtifactReference,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerConfiguration': ?pulumi.Input.mapOptionalInputValue<ContainerConfiguration, Map<String, dynamic>>(containerConfiguration, (value) => value.toMap()),
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<DataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<DataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionConfiguration, Map<String, dynamic>>(diskEncryptionConfiguration, (value) => value.toMap()),
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<VMExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<VMExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageReference': pulumi.Input.mapInputValue<ImageReference, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'nodeAgentSkuId': nodeAgentSkuId,
      'nodePlacementConfiguration': ?pulumi.Input.mapOptionalInputValue<NodePlacementConfiguration, Map<String, dynamic>>(nodePlacementConfiguration, (value) => value.toMap()),
      'osDisk': ?pulumi.Input.mapOptionalInputValue<OSDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'serviceArtifactReference': ?pulumi.Input.mapOptionalInputValue<ServiceArtifactReference, Map<String, dynamic>>(serviceArtifactReference, (value) => value.toMap()),
      'windowsConfiguration': ?pulumi.Input.mapOptionalInputValue<WindowsConfiguration, Map<String, dynamic>>(windowsConfiguration, (value) => value.toMap()),
    };
  }

  factory VirtualMachineConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfiguration(
      containerConfiguration: (() { final guardedValue = map['containerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataDisk>(guardedValue, (value) => DataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      diskEncryptionConfiguration: (() { final guardedValue = map['diskEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VMExtension>(guardedValue, (value) => VMExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageReference: pulumi.Input.fromValue(ImageReference.fromMap((map['imageReference']! as Map).cast<String, dynamic>())),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeAgentSkuId: pulumi.Input.fromValue(map['nodeAgentSkuId'] as String),
      nodePlacementConfiguration: (() { final guardedValue = map['nodePlacementConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePlacementConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osDisk: (() { final guardedValue = map['osDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceArtifactReference: (() { final guardedValue = map['serviceArtifactReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceArtifactReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      windowsConfiguration: (() { final guardedValue = map['windowsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

