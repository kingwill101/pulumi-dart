// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_location_data.dart';

/// {@template pulumi_apimanagement_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_gateway_gateway_args_doc}
class GatewayArgs {
  /// The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created.
  final pulumi.Input<String> apiManagementId;
  /// The description of the API Management Gateway.
  final pulumi.Input<String>? description;
  /// A `location_data` block as documented below.
  final pulumi.Input<GatewayLocationData> locationData;
  /// The name which should be used for the API Management Gateway. Changing this forces a new API Management Gateway to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [GatewayArgs].
  /// [apiManagementId] The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created.
  /// [description] The description of the API Management Gateway.
  /// [locationData] A `location_data` block as documented below.
  /// [name] The name which should be used for the API Management Gateway. Changing this forces a new API Management Gateway to be created.
  GatewayArgs({
    required String apiManagementId,
    String? description,
    required GatewayLocationData locationData,
    String? name,
  }) :
      apiManagementId = pulumi.Input.asInput<String>(apiManagementId),
      description = pulumi.Input.asOptionalInput<String>(description),
      locationData = pulumi.Input.asInput<GatewayLocationData>(locationData),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'description': ?description,
      'locationData': pulumi.Input.mapInputValue<GatewayLocationData, Map<String, dynamic>>(locationData, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      apiManagementId: map['apiManagementId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      locationData: GatewayLocationData.fromMap((map['locationData'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

