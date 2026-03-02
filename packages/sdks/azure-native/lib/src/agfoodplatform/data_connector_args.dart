// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_properties.dart';

/// {@template pulumi_agfoodplatform_data_connector_args_doc}
/// The set of arguments for DataConnector.
/// {@endtemplate}
/// {@macro pulumi_agfoodplatform_data_connector_args_doc}
class DataConnectorArgs {
  /// Connector name.
  final pulumi.Input<String>? dataConnectorName;
  /// DataManagerForAgriculture resource name.
  final pulumi.Input<String> dataManagerForAgricultureResourceName;
  /// DataConnector Properties.
  final pulumi.Input<DataConnectorProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DataConnectorArgs].
  /// [dataConnectorName] Connector name.
  /// [dataManagerForAgricultureResourceName] DataManagerForAgriculture resource name.
  /// [properties] DataConnector Properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DataConnectorArgs({
    this.dataConnectorName,
    required this.dataManagerForAgricultureResourceName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorName': ?dataConnectorName,
      'dataManagerForAgricultureResourceName': dataManagerForAgricultureResourceName,
      'properties': pulumi.Input.mapInputValue<DataConnectorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return DataConnectorArgs(
      dataConnectorName: map['dataConnectorName'] == null ? null : (map['dataConnectorName']! as String).input(),
      dataManagerForAgricultureResourceName: (map['dataManagerForAgricultureResourceName'] as String).input(),
      properties: (DataConnectorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

