// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmdkey_setup.dart';
import 'integration_runtime_custom_setup_script_properties.dart';
import 'integration_runtime_data_proxy_properties.dart';
import 'integration_runtime_ssis_catalog_info.dart';

/// SSIS properties for managed integration runtime.
class IntegrationRuntimeSsisProperties {
  /// Catalog information for managed dedicated integration runtime.
  final IntegrationRuntimeSsisCatalogInfo? catalogInfo;
  /// Custom setup script properties for a managed dedicated integration runtime.
  final IntegrationRuntimeCustomSetupScriptProperties? customSetupScriptProperties;
  /// Data proxy properties for a managed dedicated integration runtime.
  final IntegrationRuntimeDataProxyProperties? dataProxyProperties;
  /// The edition for the SSIS Integration Runtime
  final String? edition;
  /// Custom setup without script properties for a SSIS integration runtime.
  final List<CmdkeySetup>? expressCustomSetupProperties;
  /// License type for bringing your own license scenario.
  final String? licenseType;

  /// Creates a new [IntegrationRuntimeSsisProperties].
  /// [catalogInfo] Catalog information for managed dedicated integration runtime.
  /// [customSetupScriptProperties] Custom setup script properties for a managed dedicated integration runtime.
  /// [dataProxyProperties] Data proxy properties for a managed dedicated integration runtime.
  /// [edition] The edition for the SSIS Integration Runtime
  /// [expressCustomSetupProperties] Custom setup without script properties for a SSIS integration runtime.
  /// [licenseType] License type for bringing your own license scenario.
  IntegrationRuntimeSsisProperties({
    this.catalogInfo,
    this.customSetupScriptProperties,
    this.dataProxyProperties,
    this.edition,
    this.expressCustomSetupProperties,
    this.licenseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogInfo': ?catalogInfo == null ? null : catalogInfo!.toMap(),
      'customSetupScriptProperties': ?customSetupScriptProperties == null ? null : customSetupScriptProperties!.toMap(),
      'dataProxyProperties': ?dataProxyProperties == null ? null : dataProxyProperties!.toMap(),
      'edition': ?edition,
      'expressCustomSetupProperties': ?expressCustomSetupProperties == null ? null : pulumi.Input.encodeList<CmdkeySetup, Map<String, dynamic>>(expressCustomSetupProperties!, (value) => value.toMap()),
      'licenseType': ?licenseType,
    };
  }

  factory IntegrationRuntimeSsisProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisProperties(
      catalogInfo: map['catalogInfo'] == null ? null : IntegrationRuntimeSsisCatalogInfo.fromMap((map['catalogInfo'] as Map).cast<String, dynamic>()),
      customSetupScriptProperties: map['customSetupScriptProperties'] == null ? null : IntegrationRuntimeCustomSetupScriptProperties.fromMap((map['customSetupScriptProperties'] as Map).cast<String, dynamic>()),
      dataProxyProperties: map['dataProxyProperties'] == null ? null : IntegrationRuntimeDataProxyProperties.fromMap((map['dataProxyProperties'] as Map).cast<String, dynamic>()),
      edition: map['edition'] == null ? null : map['edition'] as String,
      expressCustomSetupProperties: map['expressCustomSetupProperties'] == null ? null : pulumi.Input.decodeList<CmdkeySetup>(map['expressCustomSetupProperties'], (value) => CmdkeySetup.fromMap((value as Map).cast<String, dynamic>())),
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
    );
  }
}

