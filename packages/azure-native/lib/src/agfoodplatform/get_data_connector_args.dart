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
    required String dataConnectorName,
    required String dataManagerForAgricultureResourceName,
    required String resourceGroupName,
  }) :
      dataConnectorName = pulumi.Input.asInput<String>(dataConnectorName),
      dataManagerForAgricultureResourceName = pulumi.Input.asInput<String>(dataManagerForAgricultureResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorName': dataConnectorName,
      'dataManagerForAgricultureResourceName': dataManagerForAgricultureResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetDataConnectorArgs(
      dataConnectorName: map['dataConnectorName'] as String,
      dataManagerForAgricultureResourceName: map['dataManagerForAgricultureResourceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

