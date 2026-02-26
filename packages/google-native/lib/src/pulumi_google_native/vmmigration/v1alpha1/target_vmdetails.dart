// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'compute_scheduling2.dart';
import 'network_interface7.dart';
import 'target_vmdetails_disk_type.dart';
import 'target_vmdetails_license_type.dart';

/// TargetVMDetails is a collection of details for creating a VM in a target Compute Engine project.
class TargetVMDetails {
  /// Compute instance scheduling information (if empty default is used).
  final ComputeScheduling2? computeScheduling;

  /// The disk type to use in the VM.
  final TargetVMDetailsDiskType? diskType;

  /// The external IP to define in the VM.
  final String? externalIp;

  /// The internal IP to define in the VM. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  final String? internalIp;

  /// A map of labels to associate with the VM.
  final Map<String, String>? labels;

  /// The license type to use in OS adaptation.
  final TargetVMDetailsLicenseType? licenseType;

  /// The machine type to create the VM with.
  final String? machineType;

  /// The machine type series to create the VM with.
  final String? machineTypeSeries;

  /// The metadata key/value pairs to assign to the VM.
  final Map<String, String>? metadata;

  /// The name of the VM to create.
  final String? name;

  /// The network to connect the VM to.
  final String? network;

  /// List of NICs connected to this VM.
  final List<NetworkInterface7>? networkInterfaces;

  /// A list of network tags to associate with the VM.
  final List<String>? networkTags;

  /// Defines whether the instance has Secure Boot enabled. This can be set to true only if the vm boot option is EFI.
  final bool? secureBoot;

  /// The service account to associate the VM with.
  final String? serviceAccount;

  /// The subnetwork to connect the VM to.
  final String? subnetwork;

  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create this VM.
  final String? targetProject;

  /// The zone in which to create the VM.
  final String? zone;

  TargetVMDetails({
    this.computeScheduling,
    this.diskType,
    this.externalIp,
    this.internalIp,
    this.labels,
    this.licenseType,
    this.machineType,
    this.machineTypeSeries,
    this.metadata,
    this.name,
    this.network,
    this.networkInterfaces,
    this.networkTags,
    this.secureBoot,
    this.serviceAccount,
    this.subnetwork,
    this.targetProject,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computeSchedulingValue = computeScheduling;
    if (computeSchedulingValue != null) {
      map['computeScheduling'] = computeSchedulingValue.toMap();
    }
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue.value;
    }
    final externalIpValue = externalIp;
    if (externalIpValue != null) {
      map['externalIp'] = externalIpValue;
    }
    final internalIpValue = internalIp;
    if (internalIpValue != null) {
      map['internalIp'] = internalIpValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final licenseTypeValue = licenseType;
    if (licenseTypeValue != null) {
      map['licenseType'] = licenseTypeValue.value;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final machineTypeSeriesValue = machineTypeSeries;
    if (machineTypeSeriesValue != null) {
      map['machineTypeSeries'] = machineTypeSeriesValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] =
          Input.encodeList<NetworkInterface7, Map<String, dynamic>>(
              networkInterfacesValue, (value) => value.toMap());
    }
    final networkTagsValue = networkTags;
    if (networkTagsValue != null) {
      map['networkTags'] = networkTagsValue;
    }
    final secureBootValue = secureBoot;
    if (secureBootValue != null) {
      map['secureBoot'] = secureBootValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final targetProjectValue = targetProject;
    if (targetProjectValue != null) {
      map['targetProject'] = targetProjectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory TargetVMDetails.fromMap(Map<String, dynamic> map) {
    return TargetVMDetails(
      computeScheduling: map['computeScheduling'] == null
          ? null
          : ComputeScheduling2.fromMap(
              (map['computeScheduling'] as Map).cast<String, dynamic>()),
      diskType: map['diskType'] == null
          ? null
          : TargetVMDetailsDiskType.fromValue(map['diskType'] as String),
      externalIp:
          map['externalIp'] == null ? null : map['externalIp'] as String,
      internalIp:
          map['internalIp'] == null ? null : map['internalIp'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      licenseType: map['licenseType'] == null
          ? null
          : TargetVMDetailsLicenseType.fromValue(map['licenseType'] as String),
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      machineTypeSeries: map['machineTypeSeries'] == null
          ? null
          : map['machineTypeSeries'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : Input.decodeList<NetworkInterface7>(
              map['networkInterfaces'],
              (value) => NetworkInterface7.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkTags: map['networkTags'] == null
          ? null
          : (map['networkTags'] as List).cast<String>(),
      secureBoot: map['secureBoot'] == null ? null : map['secureBoot'] as bool,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
      targetProject:
          map['targetProject'] == null ? null : map['targetProject'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
