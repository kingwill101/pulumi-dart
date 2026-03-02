// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_data_collection_rule_args_doc}
/// Arguments for getDataCollectionRule.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_data_collection_rule_args_doc}
class GetDataCollectionRuleArgs {
  /// The name of the data collection rule. The name is case insensitive.
  final pulumi.Input<String> dataCollectionRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataCollectionRuleArgs].
  /// [dataCollectionRuleName] The name of the data collection rule. The name is case insensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDataCollectionRuleArgs({
    required this.dataCollectionRuleName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionRuleName': dataCollectionRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataCollectionRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleArgs(
      dataCollectionRuleName: (map['dataCollectionRuleName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

