// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_provider_properties_response.dart';

/// Service Provider Definition
class ServiceProviderResponse {
  /// The Properties of a Service Provider Object
  final pulumi.Input<ServiceProviderPropertiesResponse?>? properties;

  /// Creates a new [ServiceProviderResponse].
  /// [properties] The Properties of a Service Provider Object
  const ServiceProviderResponse({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<ServiceProviderPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory ServiceProviderResponse.fromMap(Map<String, dynamic> map) {
    return ServiceProviderResponse(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceProviderPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
