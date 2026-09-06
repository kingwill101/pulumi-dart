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
  final pulumi.Input<dynamic>? containerType;
  /// The custom container configuration if the containerType is CustomContainer.
  final pulumi.Input<CustomContainerTemplate?>? customContainerTemplate;
  /// The pool configuration if the poolManagementType is dynamic.
  final pulumi.Input<DynamicPoolConfiguration?>? dynamicPoolConfiguration;
  /// Resource ID of the session pool's environment.
  final pulumi.Input<String?>? environmentId;
  /// Managed identities needed by a session pool to interact with other Azure services to not maintain any secrets or credentials in code.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Optional settings for a Managed Identity that is assigned to the Session pool.
  final pulumi.Input<List<ManagedIdentitySetting>?>? managedIdentitySettings;
  /// The pool management type of the session pool.
  final pulumi.Input<dynamic>? poolManagementType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The scale configuration of the session pool.
  final pulumi.Input<ScaleConfiguration?>? scaleConfiguration;
  /// The secrets of the session pool.
  final pulumi.Input<List<SessionPoolSecret>?>? secrets;
  /// The network configuration of the sessions in the session pool.
  final pulumi.Input<SessionNetworkConfiguration?>? sessionNetworkConfiguration;
  /// Name of the session pool.
  final pulumi.Input<String?>? sessionPoolName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

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
  const ContainerAppsSessionPoolArgs({
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
      containerType: (() { final guardedValue = map['containerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      customContainerTemplate: (() { final guardedValue = map['customContainerTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomContainerTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dynamicPoolConfiguration: (() { final guardedValue = map['dynamicPoolConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DynamicPoolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedIdentitySettings: (() { final guardedValue = map['managedIdentitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedIdentitySetting>(guardedValue, (value) => ManagedIdentitySetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      poolManagementType: (() { final guardedValue = map['poolManagementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scaleConfiguration: (() { final guardedValue = map['scaleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SessionPoolSecret>(guardedValue, (value) => SessionPoolSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sessionNetworkConfiguration: (() { final guardedValue = map['sessionNetworkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SessionNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sessionPoolName: (() { final guardedValue = map['sessionPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
