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
    String? dataConnectorName,
    required String dataManagerForAgricultureResourceName,
    required DataConnectorProperties properties,
    required String resourceGroupName,
  }) :
      dataConnectorName = pulumi.Input.asOptionalInput<String>(dataConnectorName),
      dataManagerForAgricultureResourceName = pulumi.Input.asInput<String>(dataManagerForAgricultureResourceName),
      properties = pulumi.Input.asInput<DataConnectorProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      dataConnectorName: map['dataConnectorName'] == null ? null : map['dataConnectorName'] as String,
      dataManagerForAgricultureResourceName: map['dataManagerForAgricultureResourceName'] as String,
      properties: DataConnectorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

