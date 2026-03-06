// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_provider_parameter_metadata_response.dart';

/// Extra Parameters specific to each Service Provider
class ServiceProviderParameterResponse {
  /// Default Name for the Service Provider
  final pulumi.Input<String> default_;
  /// Description of the Service Provider
  final pulumi.Input<String> description;
  /// Display Name of the Service Provider
  final pulumi.Input<String> displayName;
  /// Help Url for the  Service Provider
  final pulumi.Input<String> helpUrl;
  /// Meta data for the Service Provider
  final pulumi.Input<ServiceProviderParameterMetadataResponse> metadata;
  /// Name of the Service Provider
  final pulumi.Input<String> name;
  /// Type of the Service Provider
  final pulumi.Input<String> type;

  /// Creates a new [ServiceProviderParameterResponse].
  /// [default_] Default Name for the Service Provider
  /// [description] Description of the Service Provider
  /// [displayName] Display Name of the Service Provider
  /// [helpUrl] Help Url for the  Service Provider
  /// [metadata] Meta data for the Service Provider
  /// [name] Name of the Service Provider
  /// [type] Type of the Service Provider
  const ServiceProviderParameterResponse({
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
      'metadata': pulumi.Input.mapInputValue<ServiceProviderParameterMetadataResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'name': name,
      'type': type,
    };
  }

  factory ServiceProviderParameterResponse.fromMap(Map<String, dynamic> map) {
    return ServiceProviderParameterResponse(
      default_: pulumi.Input.fromValue(map['default'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      helpUrl: pulumi.Input.fromValue(map['helpUrl'] as String),
      metadata: pulumi.Input.fromValue(ServiceProviderParameterMetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

