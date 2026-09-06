// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_provider_parameter_metadata_constraints_response.dart';

/// Meta data for the Service Provider
class ServiceProviderParameterMetadataResponse {
  /// the constraints of the bot meta data.
  final pulumi.Input<ServiceProviderParameterMetadataConstraintsResponse?>? constraints;

  /// Creates a new [ServiceProviderParameterMetadataResponse].
  /// [constraints] the constraints of the bot meta data.
  const ServiceProviderParameterMetadataResponse({
    this.constraints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': ?pulumi.Input.mapOptionalInputValue<ServiceProviderParameterMetadataConstraintsResponse, Map<String, dynamic>>(constraints, (value) => value.toMap()),
    };
  }

  factory ServiceProviderParameterMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ServiceProviderParameterMetadataResponse(
      constraints: (() { final guardedValue = map['constraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceProviderParameterMetadataConstraintsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
