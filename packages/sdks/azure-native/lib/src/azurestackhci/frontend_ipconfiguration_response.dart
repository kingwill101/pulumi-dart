// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontend_ipconfiguration_properties_response.dart';

/// FrontendIP Configuration object for a load balancer.
class FrontendIPConfigurationResponse {
  /// name for the frontend IP configuration.
  final pulumi.Input<String> name;

  /// properties for this frontendIPConfiguration
  final pulumi.Input<FrontendIPConfigurationPropertiesResponse> properties;

  /// Creates a new [FrontendIPConfigurationResponse].
  /// [name] name for the frontend IP configuration.
  /// [properties] properties for this frontendIPConfiguration
  FrontendIPConfigurationResponse({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties':
          pulumi.Input.mapInputValue<
            FrontendIPConfigurationPropertiesResponse,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory FrontendIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FrontendIPConfigurationResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(
        FrontendIPConfigurationPropertiesResponse.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
