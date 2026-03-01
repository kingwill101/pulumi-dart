// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_parameter_response.dart';
import 'configuration_setting_response.dart';

/// Guest configuration is an artifact that encapsulates DSC configuration and its dependencies. The artifact is a zip file containing DSC configuration (as MOF) and dependent resources and other dependencies like modules.
class GuestConfigurationNavigationResponse {
  /// Specifies the origin of the configuration.
  final String assignmentSource;
  /// Specifies the assignment type and execution of the configuration. Possible values are Audit, DeployAndAutoCorrect, ApplyAndAutoCorrect and ApplyAndMonitor.
  final String? assignmentType;
  /// The configuration parameters for the guest configuration.
  final List<ConfigurationParameterResponse>? configurationParameter;
  /// The protected configuration parameters for the guest configuration.
  final List<ConfigurationParameterResponse>? configurationProtectedParameter;
  /// The configuration setting for the guest configuration.
  final ConfigurationSettingResponse configurationSetting;
  /// Combined hash of the guest configuration package and configuration parameters.
  final String? contentHash;
  /// Managed identity with storage access of the guest configuration package and configuration parameters.
  final String? contentManagedIdentity;
  /// Specifies the content type of the configuration. Possible values could be Builtin or Custom.
  final String contentType;
  /// Uri of the storage where guest configuration package is uploaded.
  final String? contentUri;
  /// Kind of the guest configuration. For example:DSC
  final String? kind;
  /// Name of the guest configuration.
  final String? name;
  /// Version of the guest configuration.
  final String? version;

  /// Creates a new [GuestConfigurationNavigationResponse].
  /// [assignmentSource] Specifies the origin of the configuration.
  /// [assignmentType] Specifies the assignment type and execution of the configuration. Possible values are Audit, DeployAndAutoCorrect, ApplyAndAutoCorrect and ApplyAndMonitor.
  /// [configurationParameter] The configuration parameters for the guest configuration.
  /// [configurationProtectedParameter] The protected configuration parameters for the guest configuration.
  /// [configurationSetting] The configuration setting for the guest configuration.
  /// [contentHash] Combined hash of the guest configuration package and configuration parameters.
  /// [contentManagedIdentity] Managed identity with storage access of the guest configuration package and configuration parameters.
  /// [contentType] Specifies the content type of the configuration. Possible values could be Builtin or Custom.
  /// [contentUri] Uri of the storage where guest configuration package is uploaded.
  /// [kind] Kind of the guest configuration. For example:DSC
  /// [name] Name of the guest configuration.
  /// [version] Version of the guest configuration.
  GuestConfigurationNavigationResponse({
    required this.assignmentSource,
    this.assignmentType,
    this.configurationParameter,
    this.configurationProtectedParameter,
    required this.configurationSetting,
    this.contentHash,
    this.contentManagedIdentity,
    required this.contentType,
    this.contentUri,
    this.kind,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentSource': assignmentSource,
      'assignmentType': ?assignmentType,
      'configurationParameter': ?configurationParameter == null ? null : pulumi.Input.encodeList<ConfigurationParameterResponse, Map<String, dynamic>>(configurationParameter!, (value) => value.toMap()),
      'configurationProtectedParameter': ?configurationProtectedParameter == null ? null : pulumi.Input.encodeList<ConfigurationParameterResponse, Map<String, dynamic>>(configurationProtectedParameter!, (value) => value.toMap()),
      'configurationSetting': configurationSetting.toMap(),
      'contentHash': ?contentHash,
      'contentManagedIdentity': ?contentManagedIdentity,
      'contentType': contentType,
      'contentUri': ?contentUri,
      'kind': ?kind,
      'name': ?name,
      'version': ?version,
    };
  }

  factory GuestConfigurationNavigationResponse.fromMap(Map<String, dynamic> map) {
    return GuestConfigurationNavigationResponse(
      assignmentSource: map['assignmentSource'] as String,
      assignmentType: map['assignmentType'] == null ? null : map['assignmentType'] as String,
      configurationParameter: map['configurationParameter'] == null ? null : pulumi.Input.decodeList<ConfigurationParameterResponse>(map['configurationParameter'], (value) => ConfigurationParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      configurationProtectedParameter: map['configurationProtectedParameter'] == null ? null : pulumi.Input.decodeList<ConfigurationParameterResponse>(map['configurationProtectedParameter'], (value) => ConfigurationParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      configurationSetting: ConfigurationSettingResponse.fromMap((map['configurationSetting'] as Map).cast<String, dynamic>()),
      contentHash: map['contentHash'] == null ? null : map['contentHash'] as String,
      contentManagedIdentity: map['contentManagedIdentity'] == null ? null : map['contentManagedIdentity'] as String,
      contentType: map['contentType'] as String,
      contentUri: map['contentUri'] == null ? null : map['contentUri'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

