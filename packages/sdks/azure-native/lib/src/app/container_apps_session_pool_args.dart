// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_container_template.dart';
import 'dynamic_pool_configuration.dart';
import 'managed_identity_setting.dart';
import 'managed_service_identity.dart';
import 'scale_configuration.dart';
import 'session_network_configuration.dart';
import 'session_pool_secret.dart';

/// {@template pulumi_app_container_apps_session_pool_args_doc}
/// The set of arguments for ContainerAppsSessionPool.
/// {@endtemplate}
/// {@macro pulumi_app_container_apps_session_pool_args_doc}
class ContainerAppsSessionPoolArgs {
  /// The container type of the sessions.
  final pulumi.Input<String>? containerType;
  /// The custom container configuration if the containerType is CustomContainer.
  final pulumi.Input<CustomContainerTemplate>? customContainerTemplate;
  /// The pool configuration if the poolManagementType is dynamic.
  final pulumi.Input<DynamicPoolConfiguration>? dynamicPoolConfiguration;
  /// Resource ID of the session pool's environment.
  final pulumi.Input<String>? environmentId;
  /// Managed identities needed by a session pool to interact with other Azure services to not maintain any secrets or credentials in code.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Optional settings for a Managed Identity that is assigned to the Session pool.
  final pulumi.Input<List<ManagedIdentitySetting>>? managedIdentitySettings;
  /// The pool management type of the session pool.
  final pulumi.Input<String>? poolManagementType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The scale configuration of the session pool.
  final pulumi.Input<ScaleConfiguration>? scaleConfiguration;
  /// The secrets of the session pool.
  final pulumi.Input<List<SessionPoolSecret>>? secrets;
  /// The network configuration of the sessions in the session pool.
  final pulumi.Input<SessionNetworkConfiguration>? sessionNetworkConfiguration;
  /// Name of the session pool.
  final pulumi.Input<String>? sessionPoolName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ContainerAppsSessionPoolArgs].
  /// [containerType] The container type of the sessions.
  /// [customContainerTemplate] The custom container configuration if the containerType is CustomContainer.
  /// [dynamicPoolConfiguration] The pool configuration if the poolManagementType is dynamic.
  /// [environmentId] Resource ID of the session pool's environment.
  /// [identity] Managed identities needed by a session pool to interact with other Azure services to not maintain any secrets or credentials in code.
  /// [location] The geo-location where the resource lives
  /// [managedIdentitySettings] Optional settings for a Managed Identity that is assigned to the Session pool.
  /// [poolManagementType] The pool management type of the session pool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scaleConfiguration] The scale configuration of the session pool.
  /// [secrets] The secrets of the session pool.
  /// [sessionNetworkConfiguration] The network configuration of the sessions in the session pool.
  /// [sessionPoolName] Name of the session pool.
  /// [tags] Resource tags.
  ContainerAppsSessionPoolArgs({
    this.containerType,
    this.customContainerTemplate,
    this.dynamicPoolConfiguration,
    this.environmentId,
    this.identity,
    this.location,
    this.managedIdentitySettings,
    this.poolManagementType,
    required this.resourceGroupName,
    this.scaleConfiguration,
    this.secrets,
    this.sessionNetworkConfiguration,
    this.sessionPoolName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerType': ?containerType,
      'customContainerTemplate': ?pulumi.Input.mapOptionalInputValue<CustomContainerTemplate, Map<String, dynamic>>(customContainerTemplate, (value) => value.toMap()),
      'dynamicPoolConfiguration': ?pulumi.Input.mapOptionalInputValue<DynamicPoolConfiguration, Map<String, dynamic>>(dynamicPoolConfiguration, (value) => value.toMap()),
      'environmentId': ?environmentId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedIdentitySettings': ?pulumi.Input.mapOptionalInputValue<List<ManagedIdentitySetting>, List<Map<String, dynamic>>>(managedIdentitySettings, (value) => pulumi.Input.encodeList<ManagedIdentitySetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'poolManagementType': ?poolManagementType,
      'resourceGroupName': resourceGroupName,
      'scaleConfiguration': ?pulumi.Input.mapOptionalInputValue<ScaleConfiguration, Map<String, dynamic>>(scaleConfiguration, (value) => value.toMap()),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<SessionPoolSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<SessionPoolSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<SessionNetworkConfiguration, Map<String, dynamic>>(sessionNetworkConfiguration, (value) => value.toMap()),
      'sessionPoolName': ?sessionPoolName,
      'tags': ?tags,
    };
  }

  factory ContainerAppsSessionPoolArgs.fromMap(Map<String, dynamic> map) {
    return ContainerAppsSessionPoolArgs(
      containerType: map['containerType'] == null ? null : (map['containerType'] as String).input(),
      customContainerTemplate: map['customContainerTemplate'] == null ? null : (CustomContainerTemplate.fromMap((map['customContainerTemplate'] as Map).cast<String, dynamic>())).input(),
      dynamicPoolConfiguration: map['dynamicPoolConfiguration'] == null ? null : (DynamicPoolConfiguration.fromMap((map['dynamicPoolConfiguration'] as Map).cast<String, dynamic>())).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedIdentitySettings: map['managedIdentitySettings'] == null ? null : (pulumi.Input.decodeList<ManagedIdentitySetting>(map['managedIdentitySettings'], (value) => ManagedIdentitySetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      poolManagementType: map['poolManagementType'] == null ? null : (map['poolManagementType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scaleConfiguration: map['scaleConfiguration'] == null ? null : (ScaleConfiguration.fromMap((map['scaleConfiguration'] as Map).cast<String, dynamic>())).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<SessionPoolSecret>(map['secrets'], (value) => SessionPoolSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sessionNetworkConfiguration: map['sessionNetworkConfiguration'] == null ? null : (SessionNetworkConfiguration.fromMap((map['sessionNetworkConfiguration'] as Map).cast<String, dynamic>())).input(),
      sessionPoolName: map['sessionPoolName'] == null ? null : (map['sessionPoolName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

