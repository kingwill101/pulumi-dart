// ignore_for_file: unused_element, unnecessary_cast

import 'service_provider_properties_response.dart';

/// Service Provider Definition
class ServiceProviderResponse {
  /// The Properties of a Service Provider Object
  final ServiceProviderPropertiesResponse? properties;

  /// Creates a new [ServiceProviderResponse].
  /// [properties] The Properties of a Service Provider Object
  ServiceProviderResponse({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory ServiceProviderResponse.fromMap(Map<String, dynamic> map) {
    return ServiceProviderResponse(
      properties: map['properties'] == null ? null : ServiceProviderPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

