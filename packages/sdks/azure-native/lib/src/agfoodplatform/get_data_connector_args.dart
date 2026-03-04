// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_agfoodplatform_get_data_connector_args_doc}
/// Arguments for getDataConnector.
/// {@endtemplate}
/// {@macro pulumi_agfoodplatform_get_data_connector_args_doc}
class GetDataConnectorArgs {
  /// Connector name.
  final pulumi.Input<String> dataConnectorName;

  /// DataManagerForAgriculture resource name.
  final pulumi.Input<String> dataManagerForAgricultureResourceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataConnectorArgs].
  /// [dataConnectorName] Connector name.
  /// [dataManagerForAgricultureResourceName] DataManagerForAgriculture resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDataConnectorArgs({
    required this.dataConnectorName,
    required this.dataManagerForAgricultureResourceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorName': dataConnectorName,
      'dataManagerForAgricultureResourceName':
          dataManagerForAgricultureResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetDataConnectorArgs(
      dataConnectorName: pulumi.Input.fromValue(
        map['dataConnectorName'] as String,
      ),
      dataManagerForAgricultureResourceName: pulumi.Input.fromValue(
        map['dataManagerForAgricultureResourceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
