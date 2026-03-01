// ignore_for_file: unused_element, unnecessary_cast

import 'arm_plan_response.dart';
import 'error_entity_response.dart';
import 'managed_service_identity_response.dart';
import 'remote_private_endpoint_connection_response.dart';
import 'sku_description_response.dart';

/// Message envelope that contains the common Azure resource manager properties and the resource provider specific content.
class ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse {
  /// Azure-AsyncOperation Error info.
  final ErrorEntityResponse? error;
  /// Resource Id. Typically ID is populated only for responses to GET requests. Caller is responsible for passing in this
  /// value for GET requests only.
  /// For example: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupId}/providers/Microsoft.Web/sites/{sitename}
  final String? id;
  /// MSI resource
  final ManagedServiceIdentityResponse? identity;
  /// Geographical region resource belongs to e.g. SouthCentralUS, SouthEastAsia.
  final String? location;
  /// Name of resource.
  final String? name;
  /// Azure resource manager plan.
  final ArmPlanResponse? plan;
  /// Resource specific properties.
  final RemotePrivateEndpointConnectionResponse? properties;
  /// SKU description of the resource.
  final SkuDescriptionResponse? sku;
  /// Azure-AsyncOperation Status info.
  final String? status;
  /// Tags associated with resource.
  final Map<String, String>? tags;
  /// Type of resource e.g "Microsoft.Web/sites".
  final String? type;
  /// Logical Availability Zones the service is hosted in
  final List<String>? zones;

  /// Creates a new [ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse].
  /// [error] Azure-AsyncOperation Error info.
  /// [id] Resource Id. Typically ID is populated only for responses to GET requests. Caller is responsible for passing in this
  /// [identity] MSI resource
  /// [location] Geographical region resource belongs to e.g. SouthCentralUS, SouthEastAsia.
  /// [name] Name of resource.
  /// [plan] Azure resource manager plan.
  /// [properties] Resource specific properties.
  /// [sku] SKU description of the resource.
  /// [status] Azure-AsyncOperation Status info.
  /// [tags] Tags associated with resource.
  /// [type] Type of resource e.g "Microsoft.Web/sites".
  /// [zones] Logical Availability Zones the service is hosted in
  ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse({
    this.error,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.plan,
    this.properties,
    this.sku,
    this.status,
    this.tags,
    this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error == null ? null : error!.toMap(),
      'id': ?id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': ?name,
      'plan': ?plan == null ? null : plan!.toMap(),
      'properties': ?properties == null ? null : properties!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
      'zones': ?zones,
    };
  }

  factory ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse(
      error: map['error'] == null ? null : ErrorEntityResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      plan: map['plan'] == null ? null : ArmPlanResponse.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : RemotePrivateEndpointConnectionResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuDescriptionResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

