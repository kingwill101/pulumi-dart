// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_adlsgen2_file_system_data_set_mapping_args_doc}
/// Arguments for getADLSGen2FileSystemDataSetMapping.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_adlsgen2_file_system_data_set_mapping_args_doc}
class GetADLSGen2FileSystemDataSetMappingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSetMapping.
  final pulumi.Input<String> dataSetMappingName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the shareSubscription.
  final pulumi.Input<String> shareSubscriptionName;

  /// Creates a new [GetADLSGen2FileSystemDataSetMappingArgs].
  /// [accountName] The name of the share account.
  /// [dataSetMappingName] The name of the dataSetMapping.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the shareSubscription.
  const GetADLSGen2FileSystemDataSetMappingArgs({
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

  factory GetADLSGen2FileSystemDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetADLSGen2FileSystemDataSetMappingArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      dataSetMappingName: pulumi.Input.fromValue(map['dataSetMappingName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shareSubscriptionName: pulumi.Input.fromValue(map['shareSubscriptionName'] as String),
    );
  }
}

