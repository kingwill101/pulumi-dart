// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsmq_get_data_lake_connector_args_doc}
/// Arguments for getDataLakeConnector.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_get_data_lake_connector_args_doc}
class GetDataLakeConnectorArgs {
  /// Name of MQ dataLakeConnector resource
  final pulumi.Input<String> dataLakeConnectorName;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataLakeConnectorArgs].
  /// [dataLakeConnectorName] Name of MQ dataLakeConnector resource
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDataLakeConnectorArgs({
    required pulumi.Output<String> dataLakeConnectorName,
    required pulumi.Output<String> mqName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dataLakeConnectorName = pulumi.Input.asInput<String>(dataLakeConnectorName),
      mqName = pulumi.Input.asInput<String>(mqName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakeConnectorName': dataLakeConnectorName,
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataLakeConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetDataLakeConnectorArgs(
      dataLakeConnectorName: pulumi.Output.create<String>(map['dataLakeConnectorName'] as String),
      mqName: pulumi.Output.create<String>(map['mqName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

