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
  GetADLSGen2FileSystemDataSetMappingArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> dataSetMappingName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareSubscriptionName,
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

  factory GetADLSGen2FileSystemDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetADLSGen2FileSystemDataSetMappingArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      dataSetMappingName: pulumi.Output.create<String>(map['dataSetMappingName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareSubscriptionName: pulumi.Output.create<String>(map['shareSubscriptionName'] as String),
    );
  }
}

