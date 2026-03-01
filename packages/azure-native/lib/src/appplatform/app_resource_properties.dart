// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_vnet_addons.dart';
import 'custom_persistent_disk_resource.dart';
import 'ingress_settings.dart';
import 'loaded_certificate.dart';
import 'persistent_disk.dart';
import 'secret.dart';
import 'temporary_disk.dart';

/// App resource properties payload
class AppResourceProperties {
  /// Collection of addons
  final Map<String, dynamic>? addonConfigs;
  /// List of custom persistent disks
  final List<CustomPersistentDiskResource>? customPersistentDisks;
  /// Indicate if end to end TLS is enabled.
  final bool? enableEndToEndTLS;
  /// Indicate if only https is allowed.
  final bool? httpsOnly;
  /// App ingress settings payload.
  final IngressSettings? ingressSettings;
  /// Collection of loaded certificates
  final List<LoadedCertificate>? loadedCertificates;
  /// Persistent disk settings
  final PersistentDisk? persistentDisk;
  /// Indicates whether the App exposes public endpoint
  final bool? public;
  /// Collection of auth secrets
  final List<Secret>? secrets;
  /// Temporary disk settings
  final TemporaryDisk? temporaryDisk;
  /// State of test endpoint auth.
  final String? testEndpointAuthState;
  /// Additional App settings in vnet injection instance
  final AppVNetAddons? vnetAddons;
  /// The workload profile used for this app. Supported for Consumption + Dedicated plan.
  final String? workloadProfileName;

  /// Creates a new [AppResourceProperties].
  /// [addonConfigs] Collection of addons
  /// [customPersistentDisks] List of custom persistent disks
  /// [enableEndToEndTLS] Indicate if end to end TLS is enabled.
  /// [httpsOnly] Indicate if only https is allowed.
  /// [ingressSettings] App ingress settings payload.
  /// [loadedCertificates] Collection of loaded certificates
  /// [persistentDisk] Persistent disk settings
  /// [public] Indicates whether the App exposes public endpoint
  /// [secrets] Collection of auth secrets
  /// [temporaryDisk] Temporary disk settings
  /// [testEndpointAuthState] State of test endpoint auth.
  /// [vnetAddons] Additional App settings in vnet injection instance
  /// [workloadProfileName] The workload profile used for this app. Supported for Consumption + Dedicated plan.
  AppResourceProperties({
    this.addonConfigs,
    this.customPersistentDisks,
    this.enableEndToEndTLS,
    this.httpsOnly,
    this.ingressSettings,
    this.loadedCertificates,
    this.persistentDisk,
    this.public,
    this.secrets,
    this.temporaryDisk,
    this.testEndpointAuthState,
    this.vnetAddons,
    this.workloadProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonConfigs': ?addonConfigs,
      'customPersistentDisks': ?customPersistentDisks == null ? null : pulumi.Input.encodeList<CustomPersistentDiskResource, Map<String, dynamic>>(customPersistentDisks!, (value) => value.toMap()),
      'enableEndToEndTLS': ?enableEndToEndTLS,
      'httpsOnly': ?httpsOnly,
      'ingressSettings': ?ingressSettings == null ? null : ingressSettings!.toMap(),
      'loadedCertificates': ?loadedCertificates == null ? null : pulumi.Input.encodeList<LoadedCertificate, Map<String, dynamic>>(loadedCertificates!, (value) => value.toMap()),
      'persistentDisk': ?persistentDisk == null ? null : persistentDisk!.toMap(),
      'public': ?public,
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<Secret, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'temporaryDisk': ?temporaryDisk == null ? null : temporaryDisk!.toMap(),
      'testEndpointAuthState': ?testEndpointAuthState,
      'vnetAddons': ?vnetAddons == null ? null : vnetAddons!.toMap(),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory AppResourceProperties.fromMap(Map<String, dynamic> map) {
    return AppResourceProperties(
      addonConfigs: map['addonConfigs'] == null ? null : (map['addonConfigs'] as Map).cast<String, dynamic>(),
      customPersistentDisks: map['customPersistentDisks'] == null ? null : pulumi.Input.decodeList<CustomPersistentDiskResource>(map['customPersistentDisks'], (value) => CustomPersistentDiskResource.fromMap((value as Map).cast<String, dynamic>())),
      enableEndToEndTLS: map['enableEndToEndTLS'] == null ? null : map['enableEndToEndTLS'] as bool,
      httpsOnly: map['httpsOnly'] == null ? null : map['httpsOnly'] as bool,
      ingressSettings: map['ingressSettings'] == null ? null : IngressSettings.fromMap((map['ingressSettings'] as Map).cast<String, dynamic>()),
      loadedCertificates: map['loadedCertificates'] == null ? null : pulumi.Input.decodeList<LoadedCertificate>(map['loadedCertificates'], (value) => LoadedCertificate.fromMap((value as Map).cast<String, dynamic>())),
      persistentDisk: map['persistentDisk'] == null ? null : PersistentDisk.fromMap((map['persistentDisk'] as Map).cast<String, dynamic>()),
      public: map['public'] == null ? null : map['public'] as bool,
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<Secret>(map['secrets'], (value) => Secret.fromMap((value as Map).cast<String, dynamic>())),
      temporaryDisk: map['temporaryDisk'] == null ? null : TemporaryDisk.fromMap((map['temporaryDisk'] as Map).cast<String, dynamic>()),
      testEndpointAuthState: map['testEndpointAuthState'] == null ? null : map['testEndpointAuthState'] as String,
      vnetAddons: map['vnetAddons'] == null ? null : AppVNetAddons.fromMap((map['vnetAddons'] as Map).cast<String, dynamic>()),
      workloadProfileName: map['workloadProfileName'] == null ? null : map['workloadProfileName'] as String,
    );
  }
}

