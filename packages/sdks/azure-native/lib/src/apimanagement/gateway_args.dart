// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_location_data_contract.dart';

/// {@template pulumi_apimanagement_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_gateway_args_doc}
class GatewayArgs {
  /// Gateway description
  final pulumi.Input<String>? description;
  /// Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  final pulumi.Input<String>? gatewayId;
  /// Gateway location.
  final pulumi.Input<ResourceLocationDataContract>? locationData;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GatewayArgs].
  /// [description] Gateway description
  /// [gatewayId] Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  /// [locationData] Gateway location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GatewayArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? gatewayId,
    pulumi.Output<ResourceLocationDataContract>? locationData,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      locationData = pulumi.Input.asOptionalInput<ResourceLocationDataContract>(locationData),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gatewayId': ?gatewayId,
      'locationData': ?pulumi.Input.mapOptionalInputValue<ResourceLocationDataContract, Map<String, dynamic>>(locationData, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      locationData: map['locationData'] == null ? null : pulumi.Output.create<ResourceLocationDataContract>(ResourceLocationDataContract.fromMap((map['locationData'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

