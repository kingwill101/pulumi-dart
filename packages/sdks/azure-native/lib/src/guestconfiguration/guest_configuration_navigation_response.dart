// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_parameter_response.dart';
import 'configuration_setting_response.dart';

/// Guest configuration is an artifact that encapsulates DSC configuration and its dependencies. The artifact is a zip file containing DSC configuration (as MOF) and dependent resources and other dependencies like modules.
class GuestConfigurationNavigationResponse {
  /// Specifies the origin of the configuration.
  final pulumi.Input<String> assignmentSource;
  /// Specifies the assignment type and execution of the configuration. Possible values are Audit, DeployAndAutoCorrect, ApplyAndAutoCorrect and ApplyAndMonitor.
  final pulumi.Input<String>? assignmentType;
  /// The configuration parameters for the guest configuration.
  final pulumi.Input<List<ConfigurationParameterResponse>>? configurationParameter;
  /// The protected configuration parameters for the guest configuration.
  final pulumi.Input<List<ConfigurationParameterResponse>>? configurationProtectedParameter;
  /// The configuration setting for the guest configuration.
  final pulumi.Input<ConfigurationSettingResponse> configurationSetting;
  /// Combined hash of the guest configuration package and configuration parameters.
  final pulumi.Input<String>? contentHash;
  /// Managed identity with storage access of the guest configuration package and configuration parameters.
  final pulumi.Input<String>? contentManagedIdentity;
  /// Specifies the content type of the configuration. Possible values could be Builtin or Custom.
  final pulumi.Input<String> contentType;
  /// Uri of the storage where guest configuration package is uploaded.
  final pulumi.Input<String>? contentUri;
  /// Kind of the guest configuration. For example:DSC
  final pulumi.Input<String>? kind;
  /// Name of the guest configuration.
  final pulumi.Input<String>? name;
  /// Version of the guest configuration.
  final pulumi.Input<String>? version;

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
      'configurationParameter': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationParameterResponse>, List<Map<String, dynamic>>>(configurationParameter, (value) => pulumi.Input.encodeList<ConfigurationParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationProtectedParameter': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationParameterResponse>, List<Map<String, dynamic>>>(configurationProtectedParameter, (value) => pulumi.Input.encodeList<ConfigurationParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationSetting': pulumi.Input.mapInputValue<ConfigurationSettingResponse, Map<String, dynamic>>(configurationSetting, (value) => value.toMap()),
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
      assignmentSource: (map['assignmentSource'] as String).input(),
      assignmentType: map['assignmentType'] == null ? null : (map['assignmentType'] as String).input(),
      configurationParameter: map['configurationParameter'] == null ? null : (pulumi.Input.decodeList<ConfigurationParameterResponse>(map['configurationParameter'], (value) => ConfigurationParameterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configurationProtectedParameter: map['configurationProtectedParameter'] == null ? null : (pulumi.Input.decodeList<ConfigurationParameterResponse>(map['configurationProtectedParameter'], (value) => ConfigurationParameterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configurationSetting: (ConfigurationSettingResponse.fromMap((map['configurationSetting'] as Map).cast<String, dynamic>())).input(),
      contentHash: map['contentHash'] == null ? null : (map['contentHash'] as String).input(),
      contentManagedIdentity: map['contentManagedIdentity'] == null ? null : (map['contentManagedIdentity'] as String).input(),
      contentType: (map['contentType'] as String).input(),
      contentUri: map['contentUri'] == null ? null : (map['contentUri'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

