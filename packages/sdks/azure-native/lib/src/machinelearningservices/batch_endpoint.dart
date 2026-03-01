// ignore_for_file: unused_element, unnecessary_cast

import 'batch_endpoint_defaults.dart';
import 'endpoint_auth_keys.dart';

/// Batch endpoint configuration.
class BatchEndpoint {
  /// [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
  final String authMode;
  /// Default values for Batch Endpoint
  final BatchEndpointDefaults? defaults;
  /// Description of the inference endpoint.
  final String? description;
  /// EndpointAuthKeys to set initially on an Endpoint.
  /// This property will always be returned as null. AuthKey values must be retrieved using the ListKeys API.
  final EndpointAuthKeys? keys;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final Map<String, String>? properties;

  /// Creates a new [BatchEndpoint].
  /// [authMode] [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
  /// [defaults] Default values for Batch Endpoint
  /// [description] Description of the inference endpoint.
  /// [keys] EndpointAuthKeys to set initially on an Endpoint.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  BatchEndpoint({
    required this.authMode,
    this.defaults,
    this.description,
    this.keys,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': authMode,
      'defaults': ?defaults == null ? null : defaults!.toMap(),
      'description': ?description,
      'keys': ?keys == null ? null : keys!.toMap(),
      'properties': ?properties,
    };
  }

  factory BatchEndpoint.fromMap(Map<String, dynamic> map) {
    return BatchEndpoint(
      authMode: map['authMode'] as String,
      defaults: map['defaults'] == null ? null : BatchEndpointDefaults.fromMap((map['defaults'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      keys: map['keys'] == null ? null : EndpointAuthKeys.fromMap((map['keys'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
    );
  }
}

