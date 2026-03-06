// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_transfer_service_resource_create_update_properties.dart';

/// {@template pulumi_cosmosdb_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_service_args_doc}
class ServiceArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Properties in ServiceResourceCreateUpdateParameters.
  final pulumi.Input<DataTransferServiceResourceCreateUpdateProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB service name.
  final pulumi.Input<String>? serviceName;

  /// Creates a new [ServiceArgs].
  /// [accountName] Cosmos DB database account name.
  /// [properties] Properties in ServiceResourceCreateUpdateParameters.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] Cosmos DB service name.
  const ServiceArgs({
    required this.accountName,
    this.properties,
    required this.resourceGroupName,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DataTransferServiceResourceCreateUpdateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': ?serviceName,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataTransferServiceResourceCreateUpdateProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

