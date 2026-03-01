// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_parameter.dart';

/// Guest configuration is an artifact that encapsulates DSC configuration and its dependencies. The artifact is a zip file containing DSC configuration (as MOF) and dependent resources and other dependencies like modules.
class GuestConfigurationNavigation {
  /// Specifies the assignment type and execution of the configuration. Possible values are Audit, DeployAndAutoCorrect, ApplyAndAutoCorrect and ApplyAndMonitor.
  final String? assignmentType;
  /// The configuration parameters for the guest configuration.
  final List<ConfigurationParameter>? configurationParameter;
  /// The protected configuration parameters for the guest configuration.
  final List<ConfigurationParameter>? configurationProtectedParameter;
  /// Combined hash of the guest configuration package and configuration parameters.
  final String? contentHash;
  /// Managed identity with storage access of the guest configuration package and configuration parameters.
  final String? contentManagedIdentity;
  /// Uri of the storage where guest configuration package is uploaded.
  final String? contentUri;
  /// Kind of the guest configuration. For example:DSC
  final String? kind;
  /// Name of the guest configuration.
  final String? name;
  /// Version of the guest configuration.
  final String? version;

  /// Creates a new [GuestConfigurationNavigation].
  /// [assignmentType] Specifies the assignment type and execution of the configuration. Possible values are Audit, DeployAndAutoCorrect, ApplyAndAutoCorrect and ApplyAndMonitor.
  /// [configurationParameter] The configuration parameters for the guest configuration.
  /// [configurationProtectedParameter] The protected configuration parameters for the guest configuration.
  /// [contentHash] Combined hash of the guest configuration package and configuration parameters.
  /// [contentManagedIdentity] Managed identity with storage access of the guest configuration package and configuration parameters.
  /// [contentUri] Uri of the storage where guest configuration package is uploaded.
  /// [kind] Kind of the guest configuration. For example:DSC
  /// [name] Name of the guest configuration.
  /// [version] Version of the guest configuration.
  GuestConfigurationNavigation({
    this.assignmentType,
    this.configurationParameter,
    this.configurationProtectedParameter,
    this.contentHash,
    this.contentManagedIdentity,
    this.contentUri,
    this.kind,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentType': ?assignmentType,
      'configurationParameter': ?configurationParameter == null ? null : pulumi.Input.encodeList<ConfigurationParameter, Map<String, dynamic>>(configurationParameter!, (value) => value.toMap()),
      'configurationProtectedParameter': ?configurationProtectedParameter == null ? null : pulumi.Input.encodeList<ConfigurationParameter, Map<String, dynamic>>(configurationProtectedParameter!, (value) => value.toMap()),
      'contentHash': ?contentHash,
      'contentManagedIdentity': ?contentManagedIdentity,
      'contentUri': ?contentUri,
      'kind': ?kind,
      'name': ?name,
      'version': ?version,
    };
  }

  factory GuestConfigurationNavigation.fromMap(Map<String, dynamic> map) {
    return GuestConfigurationNavigation(
      assignmentType: map['assignmentType'] == null ? null : map['assignmentType'] as String,
      configurationParameter: map['configurationParameter'] == null ? null : pulumi.Input.decodeList<ConfigurationParameter>(map['configurationParameter'], (value) => ConfigurationParameter.fromMap((value as Map).cast<String, dynamic>())),
      configurationProtectedParameter: map['configurationProtectedParameter'] == null ? null : pulumi.Input.decodeList<ConfigurationParameter>(map['configurationProtectedParameter'], (value) => ConfigurationParameter.fromMap((value as Map).cast<String, dynamic>())),
      contentHash: map['contentHash'] == null ? null : map['contentHash'] as String,
      contentManagedIdentity: map['contentManagedIdentity'] == null ? null : map['contentManagedIdentity'] as String,
      contentUri: map['contentUri'] == null ? null : map['contentUri'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

