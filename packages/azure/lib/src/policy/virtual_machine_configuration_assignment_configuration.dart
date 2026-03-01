// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_configuration_assignment_configuration_parameter.dart';

class VirtualMachineConfigurationAssignmentConfiguration {
  /// The assignment type for the Guest Configuration Assignment. Possible values are `Audit`, `ApplyAndAutoCorrect`, `ApplyAndMonitor` and `DeployAndAutoCorrect`.
  final String? assignmentType;
  /// The content hash for the Guest Configuration package.
  ///
  /// > **Note:** The value for `content_hash` should be the SH256SUM for the zip file in the `content_uri` and must be in upper case.
  final String? contentHash;
  /// The content URI where the Guest Configuration package is stored.
  ///
  /// > **Note:** When deploying a Custom Guest Configuration package the `content_hash` and `content_uri` fields must be defined. For Built-in Guest Configuration packages, such as the `AzureWindowsBaseline` package, the `content_hash` and `content_uri` should not be defined, rather these fields will be returned after the Built-in Guest Configuration package has been provisioned. For more information on guest configuration assignments please see the [product documentation](https://docs.microsoft.com/azure/governance/policy/concepts/guest-configuration-assignments).
  final String? contentUri;
  /// One or more `parameter` blocks as defined below which define what configuration parameters and values against.
  final List<VirtualMachineConfigurationAssignmentConfigurationParameter>? parameters;
  /// The version of the Guest Configuration that will be assigned in this Guest Configuration Assignment.
  final String? version;

  /// Creates a new [VirtualMachineConfigurationAssignmentConfiguration].
  /// [assignmentType] The assignment type for the Guest Configuration Assignment. Possible values are `Audit`, `ApplyAndAutoCorrect`, `ApplyAndMonitor` and `DeployAndAutoCorrect`.
  /// [contentHash] The content hash for the Guest Configuration package.
  /// [contentUri] The content URI where the Guest Configuration package is stored.
  /// [parameters] One or more `parameter` blocks as defined below which define what configuration parameters and values against.
  /// [version] The version of the Guest Configuration that will be assigned in this Guest Configuration Assignment.
  VirtualMachineConfigurationAssignmentConfiguration({
    this.assignmentType,
    this.contentHash,
    this.contentUri,
    this.parameters,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentType': ?assignmentType,
      'contentHash': ?contentHash,
      'contentUri': ?contentUri,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<VirtualMachineConfigurationAssignmentConfigurationParameter, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory VirtualMachineConfigurationAssignmentConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfigurationAssignmentConfiguration(
      assignmentType: map['assignmentType'] == null ? null : map['assignmentType'] as String,
      contentHash: map['contentHash'] == null ? null : map['contentHash'] as String,
      contentUri: map['contentUri'] == null ? null : map['contentUri'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<VirtualMachineConfigurationAssignmentConfigurationParameter>(map['parameters'], (value) => VirtualMachineConfigurationAssignmentConfigurationParameter.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

