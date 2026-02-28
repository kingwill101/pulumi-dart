// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'applied_license_response.dart';
import 'compute_scheduling_response.dart';
import 'encryption_response.dart';
import 'network_interface_response.dart';

/// ComputeEngineTargetDetails is a collection of details for creating a VM in a target Compute Engine project.
class ComputeEngineTargetDetailsResponse {
  /// Additional licenses to assign to the VM.
  final List<String> additionalLicenses;

  /// The OS license returned from the adaptation module report.
  final AppliedLicenseResponse appliedLicense;

  /// The VM Boot Option, as set in the source VM.
  final String bootOption;

  /// Compute instance scheduling information (if empty default is used).
  final ComputeSchedulingResponse computeScheduling;

  /// The disk type to use in the VM.
  final String diskType;

  /// Optional. The encryption to apply to the VM disks.
  final EncryptionResponse encryption;

  /// The hostname to assign to the VM.
  final String hostname;

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

  /// List of NICs connected to this VM.
  final List<NetworkInterfaceResponse> networkInterfaces;

  /// A list of network tags to associate with the VM.
  final List<String> networkTags;

  /// The Google Cloud target project ID or project name.
  final String project;

  /// Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  final bool secureBoot;

  /// The service account to associate the VM with.
  final String serviceAccount;

  /// The name of the VM to create.
  final String vmName;

  /// The zone in which to create the VM.
  final String zone;

  /// Creates a new [ComputeEngineTargetDetailsResponse].
  /// [additionalLicenses] Additional licenses to assign to the VM.
  /// [appliedLicense] The OS license returned from the adaptation module report.
  /// [bootOption] The VM Boot Option, as set in the source VM.
  /// [computeScheduling] Compute instance scheduling information (if empty default is used).
  /// [diskType] The disk type to use in the VM.
  /// [encryption] Optional. The encryption to apply to the VM disks.
  /// [hostname] The hostname to assign to the VM.
  /// [labels] A map of labels to associate with the VM.
  /// [licenseType] The license type to use in OS adaptation.
  /// [machineType] The machine type to create the VM with.
  /// [machineTypeSeries] The machine type series to create the VM with.
  /// [metadata] The metadata key/value pairs to assign to the VM.
  /// [networkInterfaces] List of NICs connected to this VM.
  /// [networkTags] A list of network tags to associate with the VM.
  /// [project] The Google Cloud target project ID or project name.
  /// [secureBoot] Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  /// [serviceAccount] The service account to associate the VM with.
  /// [vmName] The name of the VM to create.
  /// [zone] The zone in which to create the VM.
  ComputeEngineTargetDetailsResponse({
    required this.additionalLicenses,
    required this.appliedLicense,
    required this.bootOption,
    required this.computeScheduling,
    required this.diskType,
    required this.encryption,
    required this.hostname,
    required this.labels,
    required this.licenseType,
    required this.machineType,
    required this.machineTypeSeries,
    required this.metadata,
    required this.networkInterfaces,
    required this.networkTags,
    required this.project,
    required this.secureBoot,
    required this.serviceAccount,
    required this.vmName,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalLicenses'] = additionalLicenses;
    map['appliedLicense'] = appliedLicense.toMap();
    map['bootOption'] = bootOption;
    map['computeScheduling'] = computeScheduling.toMap();
    map['diskType'] = diskType;
    map['encryption'] = encryption.toMap();
    map['hostname'] = hostname;
    map['labels'] = labels;
    map['licenseType'] = licenseType;
    map['machineType'] = machineType;
    map['machineTypeSeries'] = machineTypeSeries;
    map['metadata'] = metadata;
    map['networkInterfaces'] =
        pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(
            networkInterfaces, (value) => value.toMap());
    map['networkTags'] = networkTags;
    map['project'] = project;
    map['secureBoot'] = secureBoot;
    map['serviceAccount'] = serviceAccount;
    map['vmName'] = vmName;
    map['zone'] = zone;
    return map;
  }

  factory ComputeEngineTargetDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ComputeEngineTargetDetailsResponse(
      additionalLicenses: (map['additionalLicenses'] as List).cast<String>(),
      appliedLicense: AppliedLicenseResponse.fromMap(
          (map['appliedLicense'] as Map).cast<String, dynamic>()),
      bootOption: map['bootOption'] as String,
      computeScheduling: ComputeSchedulingResponse.fromMap(
          (map['computeScheduling'] as Map).cast<String, dynamic>()),
      diskType: map['diskType'] as String,
      encryption: EncryptionResponse.fromMap(
          (map['encryption'] as Map).cast<String, dynamic>()),
      hostname: map['hostname'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      licenseType: map['licenseType'] as String,
      machineType: map['machineType'] as String,
      machineTypeSeries: map['machineTypeSeries'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      networkInterfaces: pulumi.Input.decodeList<NetworkInterfaceResponse>(
          map['networkInterfaces'],
          (value) => NetworkInterfaceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      networkTags: (map['networkTags'] as List).cast<String>(),
      project: map['project'] as String,
      secureBoot: map['secureBoot'] as bool,
      serviceAccount: map['serviceAccount'] as String,
      vmName: map['vmName'] as String,
      zone: map['zone'] as String,
    );
  }
}
