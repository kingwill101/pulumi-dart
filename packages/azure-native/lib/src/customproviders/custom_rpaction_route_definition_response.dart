// ignore_for_file: unused_element, unnecessary_cast


/// The route definition for an action implemented by the custom resource provider.
class CustomRPActionRouteDefinitionResponse {
  /// The route definition endpoint URI that the custom resource provider will proxy requests to. This can be in the form of a flat URI (e.g. 'https://testendpoint/') or can specify to route via a path (e.g. 'https://testendpoint/{requestPath}')
  final String endpoint;
  /// The name of the route definition. This becomes the name for the ARM extension (e.g. '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomProviders/resourceProviders/{resourceProviderName}/{name}')
  final String name;
  /// The routing types that are supported for action requests.
  final String? routingType;

  /// Creates a new [CustomRPActionRouteDefinitionResponse].
  /// [endpoint] The route definition endpoint URI that the custom resource provider will proxy requests to. This can be in the form of a flat URI (e.g. 'https://testendpoint/') or can specify to route via a path (e.g. 'https://testendpoint/{requestPath}')
  /// [name] The name of the route definition. This becomes the name for the ARM extension (e.g. '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomProviders/resourceProviders/{resourceProviderName}/{name}')
  /// [routingType] The routing types that are supported for action requests.
  CustomRPActionRouteDefinitionResponse({
    required this.endpoint,
    required this.name,
    this.routingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'name': name,
      'routingType': ?routingType,
    };
  }

  factory CustomRPActionRouteDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return CustomRPActionRouteDefinitionResponse(
      endpoint: map['endpoint'] as String,
      name: map['name'] as String,
      routingType: map['routingType'] == null ? null : map['routingType'] as String,
    );
  }
}

