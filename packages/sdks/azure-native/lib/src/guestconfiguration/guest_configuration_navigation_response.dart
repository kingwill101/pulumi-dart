// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_parameter_response.dart';
import 'configuration_setting_response.dart';

/// Guest configuration is an artifact that encapsulates DSC configuration and its dependencies. The artifact is a zip file containing DSC configuration (as MOF) and dependent resources and other dependencies like modules.
class GuestConfigurationNavigationResponse {
  /// Specifies the origin of the configuration.
  final pulumi.Input<String> assignmentSource;
  /// Specifies the assignment type and execution of the configuration. Possible values are Audit, DeployAndAutoCorrect, ApplyAndAutoCorrect and ApplyAndMonitor.
  final pulumi.Input<String?>? assignmentType;
  /// The configuration parameters for the guest configuration.
  final pulumi.Input<List<ConfigurationParameterResponse>?>? configurationParameter;
  /// The protected configuration parameters for the guest configuration.
  final pulumi.Input<List<ConfigurationParameterResponse>?>? configurationProtectedParameter;
  /// The configuration setting for the guest configuration.
  final pulumi.Input<ConfigurationSettingResponse> configurationSetting;
  /// Combined hash of the guest configuration package and configuration parameters.
  final pulumi.Input<String?>? contentHash;
  /// Managed identity with storage access of the guest configuration package and configuration parameters.
  final pulumi.Input<String?>? contentManagedIdentity;
  /// Specifies the content type of the configuration. Possible values could be Builtin or Custom.
  final pulumi.Input<String> contentType;
  /// Uri of the storage where guest configuration package is uploaded.
  final pulumi.Input<String?>? contentUri;
  /// Kind of the guest configuration. For example:DSC
  final pulumi.Input<String?>? kind;
  /// Name of the guest configuration.
  final pulumi.Input<String?>? name;
  /// Version of the guest configuration.
  final pulumi.Input<String?>? version;

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
  const GuestConfigurationNavigationResponse({
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
      assignmentSource: pulumi.Input.fromValue(map['assignmentSource'] as String),
      assignmentType: (() { final guardedValue = map['assignmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationParameter: (() { final guardedValue = map['configurationParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationParameterResponse>(guardedValue, (value) => ConfigurationParameterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configurationProtectedParameter: (() { final guardedValue = map['configurationProtectedParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationParameterResponse>(guardedValue, (value) => ConfigurationParameterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configurationSetting: pulumi.Input.fromValue(ConfigurationSettingResponse.fromMap((map['configurationSetting']! as Map).cast<String, dynamic>())),
      contentHash: (() { final guardedValue = map['contentHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentManagedIdentity: (() { final guardedValue = map['contentManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      contentUri: (() { final guardedValue = map['contentUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
