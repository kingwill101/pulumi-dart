// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The route definition for a resource implemented by the custom resource provider.
class CustomRPResourceTypeRouteDefinitionResponse {
  /// The route definition endpoint URI that the custom resource provider will proxy requests to. This can be in the form of a flat URI (e.g. 'https://testendpoint/') or can specify to route via a path (e.g. 'https://testendpoint/{requestPath}')
  final pulumi.Input<String> endpoint;
  /// The name of the route definition. This becomes the name for the ARM extension (e.g. '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomProviders/resourceProviders/{resourceProviderName}/{name}')
  final pulumi.Input<String> name;
  /// The routing types that are supported for resource requests.
  final pulumi.Input<String>? routingType;

  /// Creates a new [CustomRPResourceTypeRouteDefinitionResponse].
  /// [endpoint] The route definition endpoint URI that the custom resource provider will proxy requests to. This can be in the form of a flat URI (e.g. 'https://testendpoint/') or can specify to route via a path (e.g. 'https://testendpoint/{requestPath}')
  /// [name] The name of the route definition. This becomes the name for the ARM extension (e.g. '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomProviders/resourceProviders/{resourceProviderName}/{name}')
  /// [routingType] The routing types that are supported for resource requests.
  CustomRPResourceTypeRouteDefinitionResponse({
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

  factory CustomRPResourceTypeRouteDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return CustomRPResourceTypeRouteDefinitionResponse(
      endpoint: (map['endpoint'] as String).input(),
      name: (map['name'] as String).input(),
      routingType: map['routingType'] == null ? null : (map['routingType']! as String).input(),
    );
  }
}

