// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_configuration_response.dart';
import 'data_disk_response.dart';
import 'disk_encryption_configuration_response.dart';
import 'image_reference_response.dart';
import 'node_placement_configuration_response.dart';
import 'osdisk_response.dart';
import 'security_profile_response.dart';
import 'service_artifact_reference_response.dart';
import 'vmextension_response.dart';
import 'windows_configuration_response.dart';

/// The configuration for compute nodes in a pool based on the Azure Virtual Machines infrastructure.
class VirtualMachineConfigurationResponse {
  /// If specified, setup is performed on each node in the pool to allow tasks to run in containers. All regular tasks and job manager tasks run on this pool must specify the containerSettings property, and all other tasks may specify it.
  final ContainerConfigurationResponse? containerConfiguration;
  /// This property must be specified if the compute nodes in the pool need to have empty data disks attached to them.
  final List<DataDiskResponse>? dataDisks;
  /// If specified, encryption is performed on each node in the pool during node provisioning.
  final DiskEncryptionConfigurationResponse? diskEncryptionConfiguration;
  /// If specified, the extensions mentioned in this configuration will be installed on each node.
  final List<VMExtensionResponse>? extensions;
  /// A reference to an Azure Virtual Machines Marketplace image or the Azure Image resource of a custom Virtual Machine. To get the list of all imageReferences verified by Azure Batch, see the 'List supported node agent SKUs' operation.
  final ImageReferenceResponse imageReference;
  /// This only applies to images that contain the Windows operating system, and should only be used when you hold valid on-premises licenses for the nodes which will be deployed. If omitted, no on-premises licensing discount is applied. Values are:
  ///
  /// Windows_Server - The on-premises license is for Windows Server.
  /// Windows_Client - The on-premises license is for Windows Client.
  final String? licenseType;
  /// The Batch node agent is a program that runs on each node in the pool, and provides the command-and-control interface between the node and the Batch service. There are different implementations of the node agent, known as SKUs, for different operating systems. You must specify a node agent SKU which matches the selected image reference. To get the list of supported node agent SKUs along with their list of verified image references, see the 'List supported node agent SKUs' operation.
  final String nodeAgentSkuId;
  /// This configuration will specify rules on how nodes in the pool will be physically allocated.
  final NodePlacementConfigurationResponse? nodePlacementConfiguration;
  /// Contains configuration for ephemeral OSDisk settings.
  final OSDiskResponse? osDisk;
  /// Specifies the security profile settings for the virtual machine or virtual machine scale set.
  final SecurityProfileResponse? securityProfile;
  /// The service artifact reference id in the form of /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/serviceArtifacts/{serviceArtifactName}/vmArtifactsProfiles/{vmArtifactsProfilesName}
  final ServiceArtifactReferenceResponse? serviceArtifactReference;
  /// This property must not be specified if the imageReference specifies a Linux OS image.
  final WindowsConfigurationResponse? windowsConfiguration;

  /// Creates a new [VirtualMachineConfigurationResponse].
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
  VirtualMachineConfigurationResponse({
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
      'containerConfiguration': ?containerConfiguration == null ? null : containerConfiguration!.toMap(),
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<DataDiskResponse, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'diskEncryptionConfiguration': ?diskEncryptionConfiguration == null ? null : diskEncryptionConfiguration!.toMap(),
      'extensions': ?extensions == null ? null : pulumi.Input.encodeList<VMExtensionResponse, Map<String, dynamic>>(extensions!, (value) => value.toMap()),
      'imageReference': imageReference.toMap(),
      'licenseType': ?licenseType,
      'nodeAgentSkuId': nodeAgentSkuId,
      'nodePlacementConfiguration': ?nodePlacementConfiguration == null ? null : nodePlacementConfiguration!.toMap(),
      'osDisk': ?osDisk == null ? null : osDisk!.toMap(),
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'serviceArtifactReference': ?serviceArtifactReference == null ? null : serviceArtifactReference!.toMap(),
      'windowsConfiguration': ?windowsConfiguration == null ? null : windowsConfiguration!.toMap(),
    };
  }

  factory VirtualMachineConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfigurationResponse(
      containerConfiguration: map['containerConfiguration'] == null ? null : ContainerConfigurationResponse.fromMap((map['containerConfiguration'] as Map).cast<String, dynamic>()),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<DataDiskResponse>(map['dataDisks'], (value) => DataDiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      diskEncryptionConfiguration: map['diskEncryptionConfiguration'] == null ? null : DiskEncryptionConfigurationResponse.fromMap((map['diskEncryptionConfiguration'] as Map).cast<String, dynamic>()),
      extensions: map['extensions'] == null ? null : pulumi.Input.decodeList<VMExtensionResponse>(map['extensions'], (value) => VMExtensionResponse.fromMap((value as Map).cast<String, dynamic>())),
      imageReference: ImageReferenceResponse.fromMap((map['imageReference'] as Map).cast<String, dynamic>()),
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      nodeAgentSkuId: map['nodeAgentSkuId'] as String,
      nodePlacementConfiguration: map['nodePlacementConfiguration'] == null ? null : NodePlacementConfigurationResponse.fromMap((map['nodePlacementConfiguration'] as Map).cast<String, dynamic>()),
      osDisk: map['osDisk'] == null ? null : OSDiskResponse.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
      securityProfile: map['securityProfile'] == null ? null : SecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      serviceArtifactReference: map['serviceArtifactReference'] == null ? null : ServiceArtifactReferenceResponse.fromMap((map['serviceArtifactReference'] as Map).cast<String, dynamic>()),
      windowsConfiguration: map['windowsConfiguration'] == null ? null : WindowsConfigurationResponse.fromMap((map['windowsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

