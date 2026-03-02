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
  final pulumi.Input<Map<String, dynamic>>? addonConfigs;
  /// List of custom persistent disks
  final pulumi.Input<List<CustomPersistentDiskResource>>? customPersistentDisks;
  /// Indicate if end to end TLS is enabled.
  final pulumi.Input<bool>? enableEndToEndTLS;
  /// Indicate if only https is allowed.
  final pulumi.Input<bool>? httpsOnly;
  /// App ingress settings payload.
  final pulumi.Input<IngressSettings>? ingressSettings;
  /// Collection of loaded certificates
  final pulumi.Input<List<LoadedCertificate>>? loadedCertificates;
  /// Persistent disk settings
  final pulumi.Input<PersistentDisk>? persistentDisk;
  /// Indicates whether the App exposes public endpoint
  final pulumi.Input<bool>? public;
  /// Collection of auth secrets
  final pulumi.Input<List<Secret>>? secrets;
  /// Temporary disk settings
  final pulumi.Input<TemporaryDisk>? temporaryDisk;
  /// State of test endpoint auth.
  final pulumi.Input<String>? testEndpointAuthState;
  /// Additional App settings in vnet injection instance
  final pulumi.Input<AppVNetAddons>? vnetAddons;
  /// The workload profile used for this app. Supported for Consumption + Dedicated plan.
  final pulumi.Input<String>? workloadProfileName;

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
      'customPersistentDisks': ?pulumi.Input.mapOptionalInputValue<List<CustomPersistentDiskResource>, List<Map<String, dynamic>>>(customPersistentDisks, (value) => pulumi.Input.encodeList<CustomPersistentDiskResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableEndToEndTLS': ?enableEndToEndTLS,
      'httpsOnly': ?httpsOnly,
      'ingressSettings': ?pulumi.Input.mapOptionalInputValue<IngressSettings, Map<String, dynamic>>(ingressSettings, (value) => value.toMap()),
      'loadedCertificates': ?pulumi.Input.mapOptionalInputValue<List<LoadedCertificate>, List<Map<String, dynamic>>>(loadedCertificates, (value) => pulumi.Input.encodeList<LoadedCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'persistentDisk': ?pulumi.Input.mapOptionalInputValue<PersistentDisk, Map<String, dynamic>>(persistentDisk, (value) => value.toMap()),
      'public': ?public,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<Secret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<Secret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'temporaryDisk': ?pulumi.Input.mapOptionalInputValue<TemporaryDisk, Map<String, dynamic>>(temporaryDisk, (value) => value.toMap()),
      'testEndpointAuthState': ?testEndpointAuthState,
      'vnetAddons': ?pulumi.Input.mapOptionalInputValue<AppVNetAddons, Map<String, dynamic>>(vnetAddons, (value) => value.toMap()),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory AppResourceProperties.fromMap(Map<String, dynamic> map) {
    return AppResourceProperties(
      addonConfigs: map['addonConfigs'] == null ? null : ((map['addonConfigs']! as Map).cast<String, dynamic>()).input(),
      customPersistentDisks: map['customPersistentDisks'] == null ? null : (pulumi.Input.decodeList<CustomPersistentDiskResource>(map['customPersistentDisks']!, (value) => CustomPersistentDiskResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableEndToEndTLS: map['enableEndToEndTLS'] == null ? null : (map['enableEndToEndTLS']! as bool).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly']! as bool).input(),
      ingressSettings: map['ingressSettings'] == null ? null : (IngressSettings.fromMap((map['ingressSettings']! as Map).cast<String, dynamic>())).input(),
      loadedCertificates: map['loadedCertificates'] == null ? null : (pulumi.Input.decodeList<LoadedCertificate>(map['loadedCertificates']!, (value) => LoadedCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      persistentDisk: map['persistentDisk'] == null ? null : (PersistentDisk.fromMap((map['persistentDisk']! as Map).cast<String, dynamic>())).input(),
      public: map['public'] == null ? null : (map['public']! as bool).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<Secret>(map['secrets']!, (value) => Secret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      temporaryDisk: map['temporaryDisk'] == null ? null : (TemporaryDisk.fromMap((map['temporaryDisk']! as Map).cast<String, dynamic>())).input(),
      testEndpointAuthState: map['testEndpointAuthState'] == null ? null : (map['testEndpointAuthState']! as String).input(),
      vnetAddons: map['vnetAddons'] == null ? null : (AppVNetAddons.fromMap((map['vnetAddons']! as Map).cast<String, dynamic>())).input(),
      workloadProfileName: map['workloadProfileName'] == null ? null : (map['workloadProfileName']! as String).input(),
    );
  }
}

