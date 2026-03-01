// ignore_for_file: unused_element, unnecessary_cast

import 'service_provider_parameter_metadata_constraints_response.dart';

/// Meta data for the Service Provider
class ServiceProviderParameterMetadataResponse {
  /// the constraints of the bot meta data.
  final ServiceProviderParameterMetadataConstraintsResponse? constraints;

  /// Creates a new [ServiceProviderParameterMetadataResponse].
  /// [constraints] the constraints of the bot meta data.
  ServiceProviderParameterMetadataResponse({
    this.constraints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': ?constraints == null ? null : constraints!.toMap(),
    };
  }

  factory ServiceProviderParameterMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ServiceProviderParameterMetadataResponse(
      constraints: map['constraints'] == null ? null : ServiceProviderParameterMetadataConstraintsResponse.fromMap((map['constraints'] as Map).cast<String, dynamic>()),
    );
  }
}

