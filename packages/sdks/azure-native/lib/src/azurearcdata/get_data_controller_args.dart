// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_data_controller_args_doc}
/// Arguments for getDataController.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_data_controller_args_doc}
class GetDataControllerArgs {
  /// The name of the data controller
  final pulumi.Input<String> dataControllerName;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataControllerArgs].
  /// [dataControllerName] The name of the data controller
  /// [resourceGroupName] The name of the Azure resource group
  GetDataControllerArgs({
    required this.dataControllerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataControllerName': dataControllerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetDataControllerArgs(
      dataControllerName: pulumi.Input.fromValue(map['dataControllerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

