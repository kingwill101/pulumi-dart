// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_app_custom_persistent_disk.dart';
import 'spring_cloud_app_identity.dart';
import 'spring_cloud_app_ingress_settings.dart';
import 'spring_cloud_app_persistent_disk.dart';

/// {@template pulumi_appplatform_spring_cloud_app_spring_cloud_app_args_doc}
/// The set of arguments for SpringCloudApp.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_app_spring_cloud_app_args_doc}
class SpringCloudAppArgs {
  /// A JSON object that contains the addon configurations of the Spring Cloud Service.
  final pulumi.Input<String>? addonJson;
  /// A `custom_persistent_disk` block as defined below.
  final pulumi.Input<List<SpringCloudAppCustomPersistentDisk>>? customPersistentDisks;
  /// Is only HTTPS allowed? Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<SpringCloudAppIdentity>? identity;
  /// An `ingress_settings` block as defined below.
  final pulumi.Input<SpringCloudAppIngressSettings>? ingressSettings;
  /// Does the Spring Cloud Application have public endpoint? Defaults to `false`.
  final pulumi.Input<bool>? isPublic;
  /// Specifies the name of the Spring Cloud Application. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// An `persistent_disk` block as defined below.
  final pulumi.Input<SpringCloudAppPersistentDisk>? persistentDisk;
  /// Should the App in vnet injection instance exposes endpoint which could be accessed from Internet?
  final pulumi.Input<bool>? publicEndpointEnabled;
  /// Specifies the name of the resource group in which to create the Spring Cloud Application. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> serviceName;
  /// Is End to End TLS Enabled? Defaults to `false`.
  final pulumi.Input<bool>? tlsEnabled;

  /// Creates a new [SpringCloudAppArgs].
  /// [addonJson] A JSON object that contains the addon configurations of the Spring Cloud Service.
  /// [customPersistentDisks] A `custom_persistent_disk` block as defined below.
  /// [httpsOnly] Is only HTTPS allowed? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [ingressSettings] An `ingress_settings` block as defined below.
  /// [isPublic] Does the Spring Cloud Application have public endpoint? Defaults to `false`.
  /// [name] Specifies the name of the Spring Cloud Application. Changing this forces a new resource to be created.
  /// [persistentDisk] An `persistent_disk` block as defined below.
  /// [publicEndpointEnabled] Should the App in vnet injection instance exposes endpoint which could be accessed from Internet?
  /// [resourceGroupName] Specifies the name of the resource group in which to create the Spring Cloud Application. Changing this forces a new resource to be created.
  /// [serviceName] Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  /// [tlsEnabled] Is End to End TLS Enabled? Defaults to `false`.
  SpringCloudAppArgs({
    String? addonJson,
    List<SpringCloudAppCustomPersistentDisk>? customPersistentDisks,
    bool? httpsOnly,
    SpringCloudAppIdentity? identity,
    SpringCloudAppIngressSettings? ingressSettings,
    bool? isPublic,
    String? name,
    SpringCloudAppPersistentDisk? persistentDisk,
    bool? publicEndpointEnabled,
    required String resourceGroupName,
    required String serviceName,
    bool? tlsEnabled,
  }) :
      addonJson = pulumi.Input.asOptionalInput<String>(addonJson),
      customPersistentDisks = pulumi.Input.asOptionalInput<List<SpringCloudAppCustomPersistentDisk>>(customPersistentDisks),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<SpringCloudAppIdentity>(identity),
      ingressSettings = pulumi.Input.asOptionalInput<SpringCloudAppIngressSettings>(ingressSettings),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      name = pulumi.Input.asOptionalInput<String>(name),
      persistentDisk = pulumi.Input.asOptionalInput<SpringCloudAppPersistentDisk>(persistentDisk),
      publicEndpointEnabled = pulumi.Input.asOptionalInput<bool>(publicEndpointEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tlsEnabled = pulumi.Input.asOptionalInput<bool>(tlsEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonJson': ?addonJson,
      'customPersistentDisks': ?pulumi.Input.mapOptionalInputValue<List<SpringCloudAppCustomPersistentDisk>, List<Map<String, dynamic>>>(customPersistentDisks, (value) => pulumi.Input.encodeList<SpringCloudAppCustomPersistentDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<SpringCloudAppIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ingressSettings': ?pulumi.Input.mapOptionalInputValue<SpringCloudAppIngressSettings, Map<String, dynamic>>(ingressSettings, (value) => value.toMap()),
      'isPublic': ?isPublic,
      'name': ?name,
      'persistentDisk': ?pulumi.Input.mapOptionalInputValue<SpringCloudAppPersistentDisk, Map<String, dynamic>>(persistentDisk, (value) => value.toMap()),
      'publicEndpointEnabled': ?publicEndpointEnabled,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tlsEnabled': ?tlsEnabled,
    };
  }

  factory SpringCloudAppArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppArgs(
      addonJson: map['addonJson'] == null ? null : map['addonJson'] as String,
      customPersistentDisks: map['customPersistentDisks'] == null ? null : pulumi.Input.decodeList<SpringCloudAppCustomPersistentDisk>(map['customPersistentDisks'], (value) => SpringCloudAppCustomPersistentDisk.fromMap((value as Map).cast<String, dynamic>())),
      httpsOnly: map['httpsOnly'] == null ? null : map['httpsOnly'] as bool,
      identity: map['identity'] == null ? null : SpringCloudAppIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      ingressSettings: map['ingressSettings'] == null ? null : SpringCloudAppIngressSettings.fromMap((map['ingressSettings'] as Map).cast<String, dynamic>()),
      isPublic: map['isPublic'] == null ? null : map['isPublic'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      persistentDisk: map['persistentDisk'] == null ? null : SpringCloudAppPersistentDisk.fromMap((map['persistentDisk'] as Map).cast<String, dynamic>()),
      publicEndpointEnabled: map['publicEndpointEnabled'] == null ? null : map['publicEndpointEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      tlsEnabled: map['tlsEnabled'] == null ? null : map['tlsEnabled'] as bool,
    );
  }
}

