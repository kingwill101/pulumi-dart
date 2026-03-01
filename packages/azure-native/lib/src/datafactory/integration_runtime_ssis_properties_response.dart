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
  final IntegrationRuntimeSsisCatalogInfoResponse? catalogInfo;
  /// The credential reference containing authentication information.
  final CredentialReferenceResponse? credential;
  /// Custom setup script properties for a managed dedicated integration runtime.
  final IntegrationRuntimeCustomSetupScriptPropertiesResponse? customSetupScriptProperties;
  /// Data proxy properties for a managed dedicated integration runtime.
  final IntegrationRuntimeDataProxyPropertiesResponse? dataProxyProperties;
  /// The edition for the SSIS Integration Runtime
  final String? edition;
  /// Custom setup without script properties for a SSIS integration runtime.
  final List<AzPowerShellSetupResponse>? expressCustomSetupProperties;
  /// License type for bringing your own license scenario.
  final String? licenseType;
  /// Package stores for the SSIS Integration Runtime.
  final List<PackageStoreResponse>? packageStores;

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
      'catalogInfo': ?catalogInfo == null ? null : catalogInfo!.toMap(),
      'credential': ?credential == null ? null : credential!.toMap(),
      'customSetupScriptProperties': ?customSetupScriptProperties == null ? null : customSetupScriptProperties!.toMap(),
      'dataProxyProperties': ?dataProxyProperties == null ? null : dataProxyProperties!.toMap(),
      'edition': ?edition,
      'expressCustomSetupProperties': ?expressCustomSetupProperties == null ? null : pulumi.Input.encodeList<AzPowerShellSetupResponse, Map<String, dynamic>>(expressCustomSetupProperties!, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'packageStores': ?packageStores == null ? null : pulumi.Input.encodeList<PackageStoreResponse, Map<String, dynamic>>(packageStores!, (value) => value.toMap()),
    };
  }

  factory IntegrationRuntimeSsisPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisPropertiesResponse(
      catalogInfo: map['catalogInfo'] == null ? null : IntegrationRuntimeSsisCatalogInfoResponse.fromMap((map['catalogInfo'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : CredentialReferenceResponse.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      customSetupScriptProperties: map['customSetupScriptProperties'] == null ? null : IntegrationRuntimeCustomSetupScriptPropertiesResponse.fromMap((map['customSetupScriptProperties'] as Map).cast<String, dynamic>()),
      dataProxyProperties: map['dataProxyProperties'] == null ? null : IntegrationRuntimeDataProxyPropertiesResponse.fromMap((map['dataProxyProperties'] as Map).cast<String, dynamic>()),
      edition: map['edition'] == null ? null : map['edition'] as String,
      expressCustomSetupProperties: map['expressCustomSetupProperties'] == null ? null : pulumi.Input.decodeList<AzPowerShellSetupResponse>(map['expressCustomSetupProperties'], (value) => AzPowerShellSetupResponse.fromMap((value as Map).cast<String, dynamic>())),
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      packageStores: map['packageStores'] == null ? null : pulumi.Input.decodeList<PackageStoreResponse>(map['packageStores'], (value) => PackageStoreResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

