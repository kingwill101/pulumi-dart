// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_agfoodplatform_get_data_manager_for_agriculture_resource_args_doc}
/// Arguments for getDataManagerForAgricultureResource.
/// {@endtemplate}
/// {@macro pulumi_agfoodplatform_get_data_manager_for_agriculture_resource_args_doc}
class GetDataManagerForAgricultureResourceArgs {
  /// DataManagerForAgriculture resource name.
  final pulumi.Input<String> dataManagerForAgricultureResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataManagerForAgricultureResourceArgs].
  /// [dataManagerForAgricultureResourceName] DataManagerForAgriculture resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDataManagerForAgricultureResourceArgs({
    required this.dataManagerForAgricultureResourceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataManagerForAgricultureResourceName': dataManagerForAgricultureResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataManagerForAgricultureResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetDataManagerForAgricultureResourceArgs(
      dataManagerForAgricultureResourceName: (map['dataManagerForAgricultureResourceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

