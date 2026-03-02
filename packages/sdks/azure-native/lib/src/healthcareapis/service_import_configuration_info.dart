// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Import operation configuration information
class ServiceImportConfigurationInfo {
  /// If the import operation is enabled.
  final pulumi.Input<bool>? enabled;
  /// If the FHIR service is in InitialImportMode.
  final pulumi.Input<bool>? initialImportMode;
  /// The name of the default integration storage account.
  final pulumi.Input<String>? integrationDataStore;

  /// Creates a new [ServiceImportConfigurationInfo].
  /// [enabled] If the import operation is enabled.
  /// [initialImportMode] If the FHIR service is in InitialImportMode.
  /// [integrationDataStore] The name of the default integration storage account.
  ServiceImportConfigurationInfo({
    this.enabled,
    this.initialImportMode,
    this.integrationDataStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'initialImportMode': ?initialImportMode,
      'integrationDataStore': ?integrationDataStore,
    };
  }

  factory ServiceImportConfigurationInfo.fromMap(Map<String, dynamic> map) {
    return ServiceImportConfigurationInfo(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      initialImportMode: map['initialImportMode'] == null ? null : (map['initialImportMode']! as bool).input(),
      integrationDataStore: map['integrationDataStore'] == null ? null : (map['integrationDataStore']! as String).input(),
    );
  }
}

