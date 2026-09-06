// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_list_match_configuration.dart';
import 'common_dynamic_match_configuration.dart';

/// {@template pulumi_managednetworkfabric_access_control_list_args_doc}
/// The set of arguments for AccessControlList.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_access_control_list_args_doc}
class AccessControlListArgs {
  /// Name of the Access Control List.
  final pulumi.Input<String?>? accessControlListName;
  /// Access Control List file URL.
  final pulumi.Input<String?>? aclsUrl;
  /// Switch configuration description.
  final pulumi.Input<String?>? annotation;
  /// Input method to configure Access Control List.
  final pulumi.Input<dynamic> configurationType;
  /// Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  final pulumi.Input<dynamic>? defaultAction;
  /// List of dynamic match configurations.
  final pulumi.Input<List<CommonDynamicMatchConfiguration>?>? dynamicMatchConfigurations;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// List of match configurations.
  final pulumi.Input<List<AccessControlListMatchConfiguration>?>? matchConfigurations;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AccessControlListArgs].
  /// [accessControlListName] Name of the Access Control List.
  /// [aclsUrl] Access Control List file URL.
  /// [annotation] Switch configuration description.
  /// [configurationType] Input method to configure Access Control List.
  /// [defaultAction] Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  /// [dynamicMatchConfigurations] List of dynamic match configurations.
  /// [location] The geo-location where the resource lives
  /// [matchConfigurations] List of match configurations.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  AccessControlListArgs({
    this.accessControlListName,
    this.aclsUrl,
    this.annotation,
    required this.configurationType,
    pulumi.Input<dynamic>? defaultAction,
    this.dynamicMatchConfigurations,
    this.location,
    this.matchConfigurations,
    required this.resourceGroupName,
    this.tags,
  }) : defaultAction = defaultAction ?? pulumi.Input.fromValue('Permit');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlListName': ?accessControlListName,
      'aclsUrl': ?aclsUrl,
      'annotation': ?annotation,
      'configurationType': configurationType,
      'defaultAction': ?defaultAction,
      'dynamicMatchConfigurations': ?pulumi.Input.mapOptionalInputValue<List<CommonDynamicMatchConfiguration>, List<Map<String, dynamic>>>(dynamicMatchConfigurations, (value) => pulumi.Input.encodeList<CommonDynamicMatchConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'matchConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AccessControlListMatchConfiguration>, List<Map<String, dynamic>>>(matchConfigurations, (value) => pulumi.Input.encodeList<AccessControlListMatchConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AccessControlListArgs.fromMap(Map<String, dynamic> map) {
    return AccessControlListArgs(
      accessControlListName: (() { final guardedValue = map['accessControlListName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aclsUrl: (() { final guardedValue = map['aclsUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationType: pulumi.Input.fromValue(map['configurationType']),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dynamicMatchConfigurations: (() { final guardedValue = map['dynamicMatchConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CommonDynamicMatchConfiguration>(guardedValue, (value) => CommonDynamicMatchConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchConfigurations: (() { final guardedValue = map['matchConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessControlListMatchConfiguration>(guardedValue, (value) => AccessControlListMatchConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
