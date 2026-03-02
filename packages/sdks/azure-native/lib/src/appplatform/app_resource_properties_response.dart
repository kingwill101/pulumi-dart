// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_vnet_addons_response.dart';
import 'custom_persistent_disk_resource_response.dart';
import 'ingress_settings_response.dart';
import 'loaded_certificate_response.dart';
import 'persistent_disk_response.dart';
import 'secret_response.dart';
import 'temporary_disk_response.dart';

/// App resource properties payload
class AppResourcePropertiesResponse {
  /// Collection of addons
  final pulumi.Input<Map<String, dynamic>>? addonConfigs;
  /// List of custom persistent disks
  final pulumi.Input<List<CustomPersistentDiskResourceResponse>>? customPersistentDisks;
  /// Indicate if end to end TLS is enabled.
  final pulumi.Input<bool>? enableEndToEndTLS;
  /// Fully qualified dns Name.
  final pulumi.Input<String> fqdn;
  /// Indicate if only https is allowed.
  final pulumi.Input<bool>? httpsOnly;
  /// App ingress settings payload.
  final pulumi.Input<IngressSettingsResponse>? ingressSettings;
  /// Collection of loaded certificates
  final pulumi.Input<List<LoadedCertificateResponse>>? loadedCertificates;
  /// Persistent disk settings
  final pulumi.Input<PersistentDiskResponse>? persistentDisk;
  /// Provisioning state of the App
  final pulumi.Input<String> provisioningState;
  /// Indicates whether the App exposes public endpoint
  final pulumi.Input<bool>? public;
  /// Collection of auth secrets
  final pulumi.Input<List<SecretResponse>>? secrets;
  /// Temporary disk settings
  final pulumi.Input<TemporaryDiskResponse>? temporaryDisk;
  /// State of test endpoint auth.
  final pulumi.Input<String>? testEndpointAuthState;
  /// URL of the App
  final pulumi.Input<String> url;
  /// Additional App settings in vnet injection instance
  final pulumi.Input<AppVNetAddonsResponse>? vnetAddons;
  /// The workload profile used for this app. Supported for Consumption + Dedicated plan.
  final pulumi.Input<String>? workloadProfileName;

  /// Creates a new [AppResourcePropertiesResponse].
  /// [addonConfigs] Collection of addons
  /// [customPersistentDisks] List of custom persistent disks
  /// [enableEndToEndTLS] Indicate if end to end TLS is enabled.
  /// [fqdn] Fully qualified dns Name.
  /// [httpsOnly] Indicate if only https is allowed.
  /// [ingressSettings] App ingress settings payload.
  /// [loadedCertificates] Collection of loaded certificates
  /// [persistentDisk] Persistent disk settings
  /// [provisioningState] Provisioning state of the App
  /// [public] Indicates whether the App exposes public endpoint
  /// [secrets] Collection of auth secrets
  /// [temporaryDisk] Temporary disk settings
  /// [testEndpointAuthState] State of test endpoint auth.
  /// [url] URL of the App
  /// [vnetAddons] Additional App settings in vnet injection instance
  /// [workloadProfileName] The workload profile used for this app. Supported for Consumption + Dedicated plan.
  AppResourcePropertiesResponse({
    this.addonConfigs,
    this.customPersistentDisks,
    this.enableEndToEndTLS,
    required this.fqdn,
    this.httpsOnly,
    this.ingressSettings,
    this.loadedCertificates,
    this.persistentDisk,
    required this.provisioningState,
    this.public,
    this.secrets,
    this.temporaryDisk,
    this.testEndpointAuthState,
    required this.url,
    this.vnetAddons,
    this.workloadProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonConfigs': ?addonConfigs,
      'customPersistentDisks': ?pulumi.Input.mapOptionalInputValue<List<CustomPersistentDiskResourceResponse>, List<Map<String, dynamic>>>(customPersistentDisks, (value) => pulumi.Input.encodeList<CustomPersistentDiskResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableEndToEndTLS': ?enableEndToEndTLS,
      'fqdn': fqdn,
      'httpsOnly': ?httpsOnly,
      'ingressSettings': ?pulumi.Input.mapOptionalInputValue<IngressSettingsResponse, Map<String, dynamic>>(ingressSettings, (value) => value.toMap()),
      'loadedCertificates': ?pulumi.Input.mapOptionalInputValue<List<LoadedCertificateResponse>, List<Map<String, dynamic>>>(loadedCertificates, (value) => pulumi.Input.encodeList<LoadedCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'persistentDisk': ?pulumi.Input.mapOptionalInputValue<PersistentDiskResponse, Map<String, dynamic>>(persistentDisk, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'public': ?public,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<SecretResponse>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<SecretResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'temporaryDisk': ?pulumi.Input.mapOptionalInputValue<TemporaryDiskResponse, Map<String, dynamic>>(temporaryDisk, (value) => value.toMap()),
      'testEndpointAuthState': ?testEndpointAuthState,
      'url': url,
      'vnetAddons': ?pulumi.Input.mapOptionalInputValue<AppVNetAddonsResponse, Map<String, dynamic>>(vnetAddons, (value) => value.toMap()),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory AppResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AppResourcePropertiesResponse(
      addonConfigs: map['addonConfigs'] == null ? null : ((map['addonConfigs'] as Map).cast<String, dynamic>()).input(),
      customPersistentDisks: map['customPersistentDisks'] == null ? null : (pulumi.Input.decodeList<CustomPersistentDiskResourceResponse>(map['customPersistentDisks'], (value) => CustomPersistentDiskResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableEndToEndTLS: map['enableEndToEndTLS'] == null ? null : (map['enableEndToEndTLS'] as bool).input(),
      fqdn: (map['fqdn'] as String).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly'] as bool).input(),
      ingressSettings: map['ingressSettings'] == null ? null : (IngressSettingsResponse.fromMap((map['ingressSettings'] as Map).cast<String, dynamic>())).input(),
      loadedCertificates: map['loadedCertificates'] == null ? null : (pulumi.Input.decodeList<LoadedCertificateResponse>(map['loadedCertificates'], (value) => LoadedCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      persistentDisk: map['persistentDisk'] == null ? null : (PersistentDiskResponse.fromMap((map['persistentDisk'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      public: map['public'] == null ? null : (map['public'] as bool).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<SecretResponse>(map['secrets'], (value) => SecretResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      temporaryDisk: map['temporaryDisk'] == null ? null : (TemporaryDiskResponse.fromMap((map['temporaryDisk'] as Map).cast<String, dynamic>())).input(),
      testEndpointAuthState: map['testEndpointAuthState'] == null ? null : (map['testEndpointAuthState'] as String).input(),
      url: (map['url'] as String).input(),
      vnetAddons: map['vnetAddons'] == null ? null : (AppVNetAddonsResponse.fromMap((map['vnetAddons'] as Map).cast<String, dynamic>())).input(),
      workloadProfileName: map['workloadProfileName'] == null ? null : (map['workloadProfileName'] as String).input(),
    );
  }
}

