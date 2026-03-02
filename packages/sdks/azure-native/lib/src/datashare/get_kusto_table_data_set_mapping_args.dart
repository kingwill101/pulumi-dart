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
    required this.accountName,
    required this.dataSetMappingName,
    required this.resourceGroupName,
    required this.shareSubscriptionName,
  });

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
      accountName: (map['accountName'] as String).input(),
      dataSetMappingName: (map['dataSetMappingName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareSubscriptionName: (map['shareSubscriptionName'] as String).input(),
    );
  }
}

