// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_parameter.dart';

/// Guest configuration is an artifact that encapsulates DSC configuration and its dependencies. The artifact is a zip file containing DSC configuration (as MOF) and dependent resources and other dependencies like modules.
class GuestConfigurationNavigation {
  /// Specifies the assignment type and execution of the configuration. Possible values are Audit, DeployAndAutoCorrect, ApplyAndAutoCorrect and ApplyAndMonitor.
  final pulumi.Input<String>? assignmentType;
  /// The configuration parameters for the guest configuration.
  final pulumi.Input<List<ConfigurationParameter>>? configurationParameter;
  /// The protected configuration parameters for the guest configuration.
  final pulumi.Input<List<ConfigurationParameter>>? configurationProtectedParameter;
  /// Combined hash of the guest configuration package and configuration parameters.
  final pulumi.Input<String>? contentHash;
  /// Managed identity with storage access of the guest configuration package and configuration parameters.
  final pulumi.Input<String>? contentManagedIdentity;
  /// Uri of the storage where guest configuration package is uploaded.
  final pulumi.Input<String>? contentUri;
  /// Kind of the guest configuration. For example:DSC
  final pulumi.Input<String>? kind;
  /// Name of the guest configuration.
  final pulumi.Input<String>? name;
  /// Version of the guest configuration.
  final pulumi.Input<String>? version;

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
  const GuestConfigurationNavigation({
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
      'configurationParameter': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationParameter>, List<Map<String, dynamic>>>(configurationParameter, (value) => pulumi.Input.encodeList<ConfigurationParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationProtectedParameter': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationParameter>, List<Map<String, dynamic>>>(configurationProtectedParameter, (value) => pulumi.Input.encodeList<ConfigurationParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      assignmentType: (() { final guardedValue = map['assignmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationParameter: (() { final guardedValue = map['configurationParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationParameter>(guardedValue, (value) => ConfigurationParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configurationProtectedParameter: (() { final guardedValue = map['configurationProtectedParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationParameter>(guardedValue, (value) => ConfigurationParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      contentHash: (() { final guardedValue = map['contentHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentManagedIdentity: (() { final guardedValue = map['contentManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentUri: (() { final guardedValue = map['contentUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

