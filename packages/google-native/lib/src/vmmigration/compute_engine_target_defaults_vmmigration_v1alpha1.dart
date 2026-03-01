// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_target_defaults_disk_type_vmmigration_v1alpha1.dart';
import 'compute_engine_target_defaults_license_type_vmmigration_v1alpha1.dart';
import 'compute_scheduling_vmmigration_v1alpha1.dart';
import 'encryption_vmmigration_v1alpha1.dart';
import 'network_interface_vmmigration_v1alpha1.dart';

/// ComputeEngineTargetDefaults is a collection of details for creating a VM in a target Compute Engine project.
class ComputeEngineTargetDefaultsVmmigrationV1alpha1 {
  /// Additional licenses to assign to the VM.
  final List<String>? additionalLicenses;

  /// Compute instance scheduling information (if empty default is used).
  final ComputeSchedulingVmmigrationV1alpha1? computeScheduling;

  /// The disk type to use in the VM.
  final ComputeEngineTargetDefaultsDiskTypeVmmigrationV1alpha1? diskType;

  /// Optional. Immutable. The encryption to apply to the VM disks.
  final EncryptionVmmigrationV1alpha1? encryption;

  /// The hostname to assign to the VM.
  final String? hostname;

  /// A map of labels to associate with the VM.
  final Map<String, String>? labels;

  /// The license type to use in OS adaptation.
  final ComputeEngineTargetDefaultsLicenseTypeVmmigrationV1alpha1? licenseType;

  /// The machine type to create the VM with.
  final String? machineType;

  /// The machine type series to create the VM with.
  final String? machineTypeSeries;

  /// The metadata key/value pairs to assign to the VM.
  final Map<String, String>? metadata;

  /// List of NICs connected to this VM.
  final List<NetworkInterfaceVmmigrationV1alpha1>? networkInterfaces;

  /// A list of network tags to associate with the VM.
  final List<String>? networkTags;

  /// Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  final bool? secureBoot;

  /// The service account to associate the VM with.
  final String? serviceAccount;

  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create this VM.
  final String? targetProject;

  /// The name of the VM to create.
  final String? vmName;

  /// The zone in which to create the VM.
  final String? zone;

  /// Creates a new [ComputeEngineTargetDefaultsVmmigrationV1alpha1].
  /// [additionalLicenses] Additional licenses to assign to the VM.
  /// [computeScheduling] Compute instance scheduling information (if empty default is used).
  /// [diskType] The disk type to use in the VM.
  /// [encryption] Optional. Immutable. The encryption to apply to the VM disks.
  /// [hostname] The hostname to assign to the VM.
  /// [labels] A map of labels to associate with the VM.
  /// [licenseType] The license type to use in OS adaptation.
  /// [machineType] The machine type to create the VM with.
  /// [machineTypeSeries] The machine type series to create the VM with.
  /// [metadata] The metadata key/value pairs to assign to the VM.
  /// [networkInterfaces] List of NICs connected to this VM.
  /// [networkTags] A list of network tags to associate with the VM.
  /// [secureBoot] Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  /// [serviceAccount] The service account to associate the VM with.
  /// [targetProject] The full path of the resource of type TargetProject which represents the Compute Engine project in which to create this VM.
  /// [vmName] The name of the VM to create.
  /// [zone] The zone in which to create the VM.
  ComputeEngineTargetDefaultsVmmigrationV1alpha1({
    this.additionalLicenses,
    this.computeScheduling,
    this.diskType,
    this.encryption,
    this.hostname,
    this.labels,
    this.licenseType,
    this.machineType,
    this.machineTypeSeries,
    this.metadata,
    this.networkInterfaces,
    this.networkTags,
    this.secureBoot,
    this.serviceAccount,
    this.targetProject,
    this.vmName,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLicenses': ?additionalLicenses,
      'computeScheduling': ?computeScheduling == null
          ? null
          : computeScheduling!.toMap(),
      'diskType': ?diskType == null ? null : diskType!.value,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'hostname': ?hostname,
      'labels': ?labels,
      'licenseType': ?licenseType == null ? null : licenseType!.value,
      'machineType': ?machineType,
      'machineTypeSeries': ?machineTypeSeries,
      'metadata': ?metadata,
      'networkInterfaces': ?networkInterfaces == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInterfaceVmmigrationV1alpha1,
              Map<String, dynamic>
            >(networkInterfaces!, (value) => value.toMap()),
      'networkTags': ?networkTags,
      'secureBoot': ?secureBoot,
      'serviceAccount': ?serviceAccount,
      'targetProject': ?targetProject,
      'vmName': ?vmName,
      'zone': ?zone,
    };
  }

  factory ComputeEngineTargetDefaultsVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ComputeEngineTargetDefaultsVmmigrationV1alpha1(
      additionalLicenses: map['additionalLicenses'] == null
          ? null
          : (map['additionalLicenses'] as List).cast<String>(),
      computeScheduling: map['computeScheduling'] == null
          ? null
          : ComputeSchedulingVmmigrationV1alpha1.fromMap(
              (map['computeScheduling'] as Map).cast<String, dynamic>(),
            ),
      diskType: map['diskType'] == null
          ? null
          : ComputeEngineTargetDefaultsDiskTypeVmmigrationV1alpha1.fromValue(
              map['diskType'] as String,
            ),
      encryption: map['encryption'] == null
          ? null
          : EncryptionVmmigrationV1alpha1.fromMap(
              (map['encryption'] as Map).cast<String, dynamic>(),
            ),
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      licenseType: map['licenseType'] == null
          ? null
          : ComputeEngineTargetDefaultsLicenseTypeVmmigrationV1alpha1.fromValue(
              map['licenseType'] as String,
            ),
      machineType: map['machineType'] == null
          ? null
          : map['machineType'] as String,
      machineTypeSeries: map['machineTypeSeries'] == null
          ? null
          : map['machineTypeSeries'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<NetworkInterfaceVmmigrationV1alpha1>(
              map['networkInterfaces'],
              (value) => NetworkInterfaceVmmigrationV1alpha1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      networkTags: map['networkTags'] == null
          ? null
          : (map['networkTags'] as List).cast<String>(),
      secureBoot: map['secureBoot'] == null ? null : map['secureBoot'] as bool,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      targetProject: map['targetProject'] == null
          ? null
          : map['targetProject'] as String,
      vmName: map['vmName'] == null ? null : map['vmName'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
