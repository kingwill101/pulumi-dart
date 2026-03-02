// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'az_power_shell_setup_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_custom_setup_script_properties_response.dart';
import 'integration_runtime_data_proxy_properties_response.dart';
import 'integration_runtime_ssis_catalog_info_response.dart';
import 'package_store_response.dart';

/// SSIS properties for managed integration runtime.
class IntegrationRuntimeSsisPropertiesResponse {
  /// Catalog information for managed dedicated integration runtime.
  final pulumi.Input<IntegrationRuntimeSsisCatalogInfoResponse>? catalogInfo;
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReferenceResponse>? credential;
  /// Custom setup script properties for a managed dedicated integration runtime.
  final pulumi.Input<IntegrationRuntimeCustomSetupScriptPropertiesResponse>? customSetupScriptProperties;
  /// Data proxy properties for a managed dedicated integration runtime.
  final pulumi.Input<IntegrationRuntimeDataProxyPropertiesResponse>? dataProxyProperties;
  /// The edition for the SSIS Integration Runtime
  final pulumi.Input<String>? edition;
  /// Custom setup without script properties for a SSIS integration runtime.
  final pulumi.Input<List<AzPowerShellSetupResponse>>? expressCustomSetupProperties;
  /// License type for bringing your own license scenario.
  final pulumi.Input<String>? licenseType;
  /// Package stores for the SSIS Integration Runtime.
  final pulumi.Input<List<PackageStoreResponse>>? packageStores;

  /// Creates a new [IntegrationRuntimeSsisPropertiesResponse].
  /// [catalogInfo] Catalog information for managed dedicated integration runtime.
  /// [credential] The credential reference containing authentication information.
  /// [customSetupScriptProperties] Custom setup script properties for a managed dedicated integration runtime.
  /// [dataProxyProperties] Data proxy properties for a managed dedicated integration runtime.
  /// [edition] The edition for the SSIS Integration Runtime
  /// [expressCustomSetupProperties] Custom setup without script properties for a SSIS integration runtime.
  /// [licenseType] License type for bringing your own license scenario.
  /// [packageStores] Package stores for the SSIS Integration Runtime.
  IntegrationRuntimeSsisPropertiesResponse({
    this.catalogInfo,
    this.credential,
    this.customSetupScriptProperties,
    this.dataProxyProperties,
    this.edition,
    this.expressCustomSetupProperties,
    this.licenseType,
    this.packageStores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogInfo': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisCatalogInfoResponse, Map<String, dynamic>>(catalogInfo, (value) => value.toMap()),
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReferenceResponse, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'customSetupScriptProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeCustomSetupScriptPropertiesResponse, Map<String, dynamic>>(customSetupScriptProperties, (value) => value.toMap()),
      'dataProxyProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeDataProxyPropertiesResponse, Map<String, dynamic>>(dataProxyProperties, (value) => value.toMap()),
      'edition': ?edition,
      'expressCustomSetupProperties': ?pulumi.Input.mapOptionalInputValue<List<AzPowerShellSetupResponse>, List<Map<String, dynamic>>>(expressCustomSetupProperties, (value) => pulumi.Input.encodeList<AzPowerShellSetupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'licenseType': ?licenseType,
      'packageStores': ?pulumi.Input.mapOptionalInputValue<List<PackageStoreResponse>, List<Map<String, dynamic>>>(packageStores, (value) => pulumi.Input.encodeList<PackageStoreResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IntegrationRuntimeSsisPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisPropertiesResponse(
      catalogInfo: map['catalogInfo'] == null ? null : (IntegrationRuntimeSsisCatalogInfoResponse.fromMap((map['catalogInfo'] as Map).cast<String, dynamic>())).input(),
      credential: map['credential'] == null ? null : (CredentialReferenceResponse.fromMap((map['credential'] as Map).cast<String, dynamic>())).input(),
      customSetupScriptProperties: map['customSetupScriptProperties'] == null ? null : (IntegrationRuntimeCustomSetupScriptPropertiesResponse.fromMap((map['customSetupScriptProperties'] as Map).cast<String, dynamic>())).input(),
      dataProxyProperties: map['dataProxyProperties'] == null ? null : (IntegrationRuntimeDataProxyPropertiesResponse.fromMap((map['dataProxyProperties'] as Map).cast<String, dynamic>())).input(),
      edition: map['edition'] == null ? null : (map['edition'] as String).input(),
      expressCustomSetupProperties: map['expressCustomSetupProperties'] == null ? null : (pulumi.Input.decodeList<AzPowerShellSetupResponse>(map['expressCustomSetupProperties'], (value) => AzPowerShellSetupResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType'] as String).input(),
      packageStores: map['packageStores'] == null ? null : (pulumi.Input.decodeList<PackageStoreResponse>(map['packageStores'], (value) => PackageStoreResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

