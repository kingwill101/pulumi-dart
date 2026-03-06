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
  const DataConnectorArgs({
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
      dataConnectorName: (() { final guardedValue = map['dataConnectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataManagerForAgricultureResourceName: pulumi.Input.fromValue(map['dataManagerForAgricultureResourceName'] as String),
      properties: pulumi.Input.fromValue(DataConnectorProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

