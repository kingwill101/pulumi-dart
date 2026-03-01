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
  final Map<String, dynamic>? addonConfigs;
  /// List of custom persistent disks
  final List<CustomPersistentDiskResourceResponse>? customPersistentDisks;
  /// Indicate if end to end TLS is enabled.
  final bool? enableEndToEndTLS;
  /// Fully qualified dns Name.
  final String fqdn;
  /// Indicate if only https is allowed.
  final bool? httpsOnly;
  /// App ingress settings payload.
  final IngressSettingsResponse? ingressSettings;
  /// Collection of loaded certificates
  final List<LoadedCertificateResponse>? loadedCertificates;
  /// Persistent disk settings
  final PersistentDiskResponse? persistentDisk;
  /// Provisioning state of the App
  final String provisioningState;
  /// Indicates whether the App exposes public endpoint
  final bool? public;
  /// Collection of auth secrets
  final List<SecretResponse>? secrets;
  /// Temporary disk settings
  final TemporaryDiskResponse? temporaryDisk;
  /// State of test endpoint auth.
  final String? testEndpointAuthState;
  /// URL of the App
  final String url;
  /// Additional App settings in vnet injection instance
  final AppVNetAddonsResponse? vnetAddons;
  /// The workload profile used for this app. Supported for Consumption + Dedicated plan.
  final String? workloadProfileName;

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
      'customPersistentDisks': ?customPersistentDisks == null ? null : pulumi.Input.encodeList<CustomPersistentDiskResourceResponse, Map<String, dynamic>>(customPersistentDisks!, (value) => value.toMap()),
      'enableEndToEndTLS': ?enableEndToEndTLS,
      'fqdn': fqdn,
      'httpsOnly': ?httpsOnly,
      'ingressSettings': ?ingressSettings == null ? null : ingressSettings!.toMap(),
      'loadedCertificates': ?loadedCertificates == null ? null : pulumi.Input.encodeList<LoadedCertificateResponse, Map<String, dynamic>>(loadedCertificates!, (value) => value.toMap()),
      'persistentDisk': ?persistentDisk == null ? null : persistentDisk!.toMap(),
      'provisioningState': provisioningState,
      'public': ?public,
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<SecretResponse, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'temporaryDisk': ?temporaryDisk == null ? null : temporaryDisk!.toMap(),
      'testEndpointAuthState': ?testEndpointAuthState,
      'url': url,
      'vnetAddons': ?vnetAddons == null ? null : vnetAddons!.toMap(),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory AppResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AppResourcePropertiesResponse(
      addonConfigs: map['addonConfigs'] == null ? null : (map['addonConfigs'] as Map).cast<String, dynamic>(),
      customPersistentDisks: map['customPersistentDisks'] == null ? null : pulumi.Input.decodeList<CustomPersistentDiskResourceResponse>(map['customPersistentDisks'], (value) => CustomPersistentDiskResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      enableEndToEndTLS: map['enableEndToEndTLS'] == null ? null : map['enableEndToEndTLS'] as bool,
      fqdn: map['fqdn'] as String,
      httpsOnly: map['httpsOnly'] == null ? null : map['httpsOnly'] as bool,
      ingressSettings: map['ingressSettings'] == null ? null : IngressSettingsResponse.fromMap((map['ingressSettings'] as Map).cast<String, dynamic>()),
      loadedCertificates: map['loadedCertificates'] == null ? null : pulumi.Input.decodeList<LoadedCertificateResponse>(map['loadedCertificates'], (value) => LoadedCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      persistentDisk: map['persistentDisk'] == null ? null : PersistentDiskResponse.fromMap((map['persistentDisk'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      public: map['public'] == null ? null : map['public'] as bool,
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<SecretResponse>(map['secrets'], (value) => SecretResponse.fromMap((value as Map).cast<String, dynamic>())),
      temporaryDisk: map['temporaryDisk'] == null ? null : TemporaryDiskResponse.fromMap((map['temporaryDisk'] as Map).cast<String, dynamic>()),
      testEndpointAuthState: map['testEndpointAuthState'] == null ? null : map['testEndpointAuthState'] as String,
      url: map['url'] as String,
      vnetAddons: map['vnetAddons'] == null ? null : AppVNetAddonsResponse.fromMap((map['vnetAddons'] as Map).cast<String, dynamic>()),
      workloadProfileName: map['workloadProfileName'] == null ? null : map['workloadProfileName'] as String,
    );
  }
}

