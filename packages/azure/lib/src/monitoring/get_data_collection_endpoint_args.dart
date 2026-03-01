// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_data_collection_endpoint_get_data_collection_endpoint_args_doc}
/// Arguments for getDataCollectionEndpoint.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_data_collection_endpoint_get_data_collection_endpoint_args_doc}
class GetDataCollectionEndpointArgs {
  /// Specifies the name of the Data Collection Endpoint.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Data Collection Endpoint is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataCollectionEndpointArgs].
  /// [name] Specifies the name of the Data Collection Endpoint.
  /// [resourceGroupName] Specifies the name of the resource group the Data Collection Endpoint is located in.
  GetDataCollectionEndpointArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataCollectionEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionEndpointArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

