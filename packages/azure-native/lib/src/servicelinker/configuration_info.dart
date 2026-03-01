// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_store.dart';
import 'dapr_properties.dart';

/// The configuration information, used to generate configurations or save to applications
class ConfigurationInfo {
  /// Optional, indicate whether to apply configurations on source application. If enable, generate configurations and applied to the source application. Default is enable. If optOut, no configuration change will be made on source.
  final String? action;
  /// A dictionary of additional configurations to be added. Service will auto generate a set of basic configurations and this property is to full fill more customized configurations
  final Map<String, String>? additionalConfigurations;
  /// A dictionary of additional properties to be added in the end of connection string.
  final Map<String, String>? additionalConnectionStringProperties;
  /// An option to store configuration into different place
  final ConfigurationStore? configurationStore;
  /// Optional. A dictionary of default key name and customized key name mapping. If not specified, default key name will be used for generate configurations
  final Map<String, String>? customizedKeys;
  /// Indicates some additional properties for dapr client type
  final DaprProperties? daprProperties;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final String? deleteOrUpdateBehavior;

  /// Creates a new [ConfigurationInfo].
  /// [action] Optional, indicate whether to apply configurations on source application. If enable, generate configurations and applied to the source application. Default is enable. If optOut, no configuration change will be made on source.
  /// [additionalConfigurations] A dictionary of additional configurations to be added. Service will auto generate a set of basic configurations and this property is to full fill more customized configurations
  /// [additionalConnectionStringProperties] A dictionary of additional properties to be added in the end of connection string.
  /// [configurationStore] An option to store configuration into different place
  /// [customizedKeys] Optional. A dictionary of default key name and customized key name mapping. If not specified, default key name will be used for generate configurations
  /// [daprProperties] Indicates some additional properties for dapr client type
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  ConfigurationInfo({
    this.action,
    this.additionalConfigurations,
    this.additionalConnectionStringProperties,
    this.configurationStore,
    this.customizedKeys,
    this.daprProperties,
    this.deleteOrUpdateBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'additionalConfigurations': ?additionalConfigurations,
      'additionalConnectionStringProperties': ?additionalConnectionStringProperties,
      'configurationStore': ?configurationStore == null ? null : configurationStore!.toMap(),
      'customizedKeys': ?customizedKeys,
      'daprProperties': ?daprProperties == null ? null : daprProperties!.toMap(),
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
    };
  }

  factory ConfigurationInfo.fromMap(Map<String, dynamic> map) {
    return ConfigurationInfo(
      action: map['action'] == null ? null : map['action'] as String,
      additionalConfigurations: map['additionalConfigurations'] == null ? null : (map['additionalConfigurations'] as Map).cast<String, String>(),
      additionalConnectionStringProperties: map['additionalConnectionStringProperties'] == null ? null : (map['additionalConnectionStringProperties'] as Map).cast<String, String>(),
      configurationStore: map['configurationStore'] == null ? null : ConfigurationStore.fromMap((map['configurationStore'] as Map).cast<String, dynamic>()),
      customizedKeys: map['customizedKeys'] == null ? null : (map['customizedKeys'] as Map).cast<String, String>(),
      daprProperties: map['daprProperties'] == null ? null : DaprProperties.fromMap((map['daprProperties'] as Map).cast<String, dynamic>()),
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : map['deleteOrUpdateBehavior'] as String,
    );
  }
}

