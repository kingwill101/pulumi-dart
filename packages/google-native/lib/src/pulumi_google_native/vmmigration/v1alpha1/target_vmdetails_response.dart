// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'applied_license_response2.dart';
import 'compute_scheduling_response2.dart';
import 'network_interface_response7.dart';

/// TargetVMDetails is a collection of details for creating a VM in a target Compute Engine project.
class TargetVMDetailsResponse {
  /// The OS license returned from the adaptation module report.
  final AppliedLicenseResponse2 appliedLicense;

  /// The VM Boot Option, as set in the source VM.
  final String bootOption;

  /// Compute instance scheduling information (if empty default is used).
  final ComputeSchedulingResponse2 computeScheduling;

  /// The disk type to use in the VM.
  final String diskType;

  /// The external IP to define in the VM.
  final String externalIp;

  /// The internal IP to define in the VM. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  final String internalIp;

  /// A map of labels to associate with the VM.
  final Map<String, String> labels;

  /// The license type to use in OS adaptation.
  final String licenseType;

  /// The machine type to create the VM with.
  final String machineType;

  /// The machine type series to create the VM with.
  final String machineTypeSeries;

  /// The metadata key/value pairs to assign to the VM.
  final Map<String, String> metadata;

  /// The name of the VM to create.
  final String name;

  /// The network to connect the VM to.
  final String network;

  /// List of NICs connected to this VM.
  final List<NetworkInterfaceResponse7> networkInterfaces;

  /// A list of network tags to associate with the VM.
  final List<String> networkTags;

  /// The project in which to create the VM.
  final String project;

  /// Defines whether the instance has Secure Boot enabled. This can be set to true only if the vm boot option is EFI.
  final bool secureBoot;

  /// The service account to associate the VM with.
  final String serviceAccount;

  /// The subnetwork to connect the VM to.
  final String subnetwork;

  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create this VM.
  final String targetProject;

  /// The zone in which to create the VM.
  final String zone;

  TargetVMDetailsResponse({
    required this.appliedLicense,
    required this.bootOption,
    required this.computeScheduling,
    required this.diskType,
    required this.externalIp,
    required this.internalIp,
    required this.labels,
    required this.licenseType,
    required this.machineType,
    required this.machineTypeSeries,
    required this.metadata,
    required this.name,
    required this.network,
    required this.networkInterfaces,
    required this.networkTags,
    required this.project,
    required this.secureBoot,
    required this.serviceAccount,
    required this.subnetwork,
    required this.targetProject,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appliedLicense'] = appliedLicense.toMap();
    map['bootOption'] = bootOption;
    map['computeScheduling'] = computeScheduling.toMap();
    map['diskType'] = diskType;
    map['externalIp'] = externalIp;
    map['internalIp'] = internalIp;
    map['labels'] = labels;
    map['licenseType'] = licenseType;
    map['machineType'] = machineType;
    map['machineTypeSeries'] = machineTypeSeries;
    map['metadata'] = metadata;
    map['name'] = name;
    map['network'] = network;
    map['networkInterfaces'] =
        Input.encodeList<NetworkInterfaceResponse7, Map<String, dynamic>>(
            networkInterfaces, (value) => value.toMap());
    map['networkTags'] = networkTags;
    map['project'] = project;
    map['secureBoot'] = secureBoot;
    map['serviceAccount'] = serviceAccount;
    map['subnetwork'] = subnetwork;
    map['targetProject'] = targetProject;
    map['zone'] = zone;
    return map;
  }

  factory TargetVMDetailsResponse.fromMap(Map<String, dynamic> map) {
    return TargetVMDetailsResponse(
      appliedLicense: AppliedLicenseResponse2.fromMap(
          (map['appliedLicense'] as Map).cast<String, dynamic>()),
      bootOption: map['bootOption'] as String,
      computeScheduling: ComputeSchedulingResponse2.fromMap(
          (map['computeScheduling'] as Map).cast<String, dynamic>()),
      diskType: map['diskType'] as String,
      externalIp: map['externalIp'] as String,
      internalIp: map['internalIp'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      licenseType: map['licenseType'] as String,
      machineType: map['machineType'] as String,
      machineTypeSeries: map['machineTypeSeries'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      networkInterfaces: Input.decodeList<NetworkInterfaceResponse7>(
          map['networkInterfaces'],
          (value) => NetworkInterfaceResponse7.fromMap(
              (value as Map).cast<String, dynamic>())),
      networkTags: (map['networkTags'] as List).cast<String>(),
      project: map['project'] as String,
      secureBoot: map['secureBoot'] as bool,
      serviceAccount: map['serviceAccount'] as String,
      subnetwork: map['subnetwork'] as String,
      targetProject: map['targetProject'] as String,
      zone: map['zone'] as String,
    );
  }
}
