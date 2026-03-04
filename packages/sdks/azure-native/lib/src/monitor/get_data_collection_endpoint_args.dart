// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_data_collection_endpoint_args_doc}
/// Arguments for getDataCollectionEndpoint.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_data_collection_endpoint_args_doc}
class GetDataCollectionEndpointArgs {
  /// The name of the data collection endpoint. The name is case insensitive.
  final pulumi.Input<String> dataCollectionEndpointName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataCollectionEndpointArgs].
  /// [dataCollectionEndpointName] The name of the data collection endpoint. The name is case insensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDataCollectionEndpointArgs({
    required this.dataCollectionEndpointName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointName': dataCollectionEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataCollectionEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionEndpointArgs(
      dataCollectionEndpointName: pulumi.Input.fromValue(
        map['dataCollectionEndpointName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
