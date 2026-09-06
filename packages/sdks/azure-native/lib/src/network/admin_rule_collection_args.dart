// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_security_group_item.dart';

/// {@template pulumi_network_admin_rule_collection_args_doc}
/// The set of arguments for AdminRuleCollection.
/// {@endtemplate}
/// {@macro pulumi_network_admin_rule_collection_args_doc}
class AdminRuleCollectionArgs {
  /// Groups for configuration
  final pulumi.Input<List<NetworkManagerSecurityGroupItem>> appliesToGroups;
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;
  /// A description of the admin rule collection.
  final pulumi.Input<String?>? description;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager security Configuration rule collection.
  final pulumi.Input<String?>? ruleCollectionName;

  /// Creates a new [AdminRuleCollectionArgs].
  /// [appliesToGroups] Groups for configuration
  /// [configurationName] The name of the network manager Security Configuration.
  /// [description] A description of the admin rule collection.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  const AdminRuleCollectionArgs({
    required this.appliesToGroups,
    required this.configurationName,
    this.description,
    required this.networkManagerName,
    required this.resourceGroupName,
    this.ruleCollectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': pulumi.Input.mapInputValue<List<NetworkManagerSecurityGroupItem>, List<Map<String, dynamic>>>(appliesToGroups, (value) => pulumi.Input.encodeList<NetworkManagerSecurityGroupItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationName': configurationName,
      'description': ?description,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ?ruleCollectionName,
    };
  }

  factory AdminRuleCollectionArgs.fromMap(Map<String, dynamic> map) {
    return AdminRuleCollectionArgs(
      appliesToGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagerSecurityGroupItem>(map['appliesToGroups']!, (value) => NetworkManagerSecurityGroupItem.fromMap((value as Map).cast<String, dynamic>()))),
      configurationName: pulumi.Input.fromValue(map['configurationName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleCollectionName: (() { final guardedValue = map['ruleCollectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
