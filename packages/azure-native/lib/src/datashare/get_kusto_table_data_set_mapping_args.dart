// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_kusto_table_data_set_mapping_args_doc}
/// Arguments for getKustoTableDataSetMapping.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_kusto_table_data_set_mapping_args_doc}
class GetKustoTableDataSetMappingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSetMapping.
  final pulumi.Input<String> dataSetMappingName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the shareSubscription.
  final pulumi.Input<String> shareSubscriptionName;

  /// Creates a new [GetKustoTableDataSetMappingArgs].
  /// [accountName] The name of the share account.
  /// [dataSetMappingName] The name of the dataSetMapping.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the shareSubscription.
  GetKustoTableDataSetMappingArgs({
    required String accountName,
    required String dataSetMappingName,
    required String resourceGroupName,
    required String shareSubscriptionName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetMappingName = pulumi.Input.asInput<String>(dataSetMappingName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareSubscriptionName = pulumi.Input.asInput<String>(shareSubscriptionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetMappingName': dataSetMappingName,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
    };
  }

  factory GetKustoTableDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetKustoTableDataSetMappingArgs(
      accountName: map['accountName'] as String,
      dataSetMappingName: map['dataSetMappingName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareSubscriptionName: map['shareSubscriptionName'] as String,
    );
  }
}

