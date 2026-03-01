// ignore_for_file: unused_element, unnecessary_cast

import 'service_provider_parameter_metadata_response.dart';

/// Extra Parameters specific to each Service Provider
class ServiceProviderParameterResponse {
  /// Default Name for the Service Provider
  final String default_;
  /// Description of the Service Provider
  final String description;
  /// Display Name of the Service Provider
  final String displayName;
  /// Help Url for the  Service Provider
  final String helpUrl;
  /// Meta data for the Service Provider
  final ServiceProviderParameterMetadataResponse metadata;
  /// Name of the Service Provider
  final String name;
  /// Type of the Service Provider
  final String type;

  /// Creates a new [ServiceProviderParameterResponse].
  /// [default_] Default Name for the Service Provider
  /// [description] Description of the Service Provider
  /// [displayName] Display Name of the Service Provider
  /// [helpUrl] Help Url for the  Service Provider
  /// [metadata] Meta data for the Service Provider
  /// [name] Name of the Service Provider
  /// [type] Type of the Service Provider
  ServiceProviderParameterResponse({
    required this.default_,
    required this.description,
    required this.displayName,
    required this.helpUrl,
    required this.metadata,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
      'description': description,
      'displayName': displayName,
      'helpUrl': helpUrl,
      'metadata': metadata.toMap(),
      'name': name,
      'type': type,
    };
  }

  factory ServiceProviderParameterResponse.fromMap(Map<String, dynamic> map) {
    return ServiceProviderParameterResponse(
      default_: map['default'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      helpUrl: map['helpUrl'] as String,
      metadata: ServiceProviderParameterMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

