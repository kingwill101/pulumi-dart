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
  final pulumi.Input<String>? accessControlListName;
  /// Access Control List file URL.
  final pulumi.Input<String>? aclsUrl;
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Input method to configure Access Control List.
  final pulumi.Input<String> configurationType;
  /// Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  final pulumi.Input<String>? defaultAction;
  /// List of dynamic match configurations.
  final pulumi.Input<List<CommonDynamicMatchConfiguration>>? dynamicMatchConfigurations;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// List of match configurations.
  final pulumi.Input<List<AccessControlListMatchConfiguration>>? matchConfigurations;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

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
    this.defaultAction,
    this.dynamicMatchConfigurations,
    this.location,
    this.matchConfigurations,
    required this.resourceGroupName,
    this.tags,
  });

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
      accessControlListName: map['accessControlListName'] == null ? null : (map['accessControlListName']! as String).input(),
      aclsUrl: map['aclsUrl'] == null ? null : (map['aclsUrl']! as String).input(),
      annotation: map['annotation'] == null ? null : (map['annotation']! as String).input(),
      configurationType: (map['configurationType'] as String).input(),
      defaultAction: map['defaultAction'] == null ? null : (map['defaultAction']! as String).input(),
      dynamicMatchConfigurations: map['dynamicMatchConfigurations'] == null ? null : (pulumi.Input.decodeList<CommonDynamicMatchConfiguration>(map['dynamicMatchConfigurations']!, (value) => CommonDynamicMatchConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      matchConfigurations: map['matchConfigurations'] == null ? null : (pulumi.Input.decodeList<AccessControlListMatchConfiguration>(map['matchConfigurations']!, (value) => AccessControlListMatchConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

