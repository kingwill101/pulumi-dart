// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_endpoint_defaults.dart';
import 'endpoint_auth_keys.dart';

/// Batch endpoint configuration.
class BatchEndpoint {
  /// [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
  final pulumi.Input<String> authMode;
  /// Default values for Batch Endpoint
  final pulumi.Input<BatchEndpointDefaults>? defaults;
  /// Description of the inference endpoint.
  final pulumi.Input<String>? description;
  /// EndpointAuthKeys to set initially on an Endpoint.
  /// This property will always be returned as null. AuthKey values must be retrieved using the ListKeys API.
  final pulumi.Input<EndpointAuthKeys>? keys;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>>? properties;

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
      'defaults': ?pulumi.Input.mapOptionalInputValue<BatchEndpointDefaults, Map<String, dynamic>>(defaults, (value) => value.toMap()),
      'description': ?description,
      'keys': ?pulumi.Input.mapOptionalInputValue<EndpointAuthKeys, Map<String, dynamic>>(keys, (value) => value.toMap()),
      'properties': ?properties,
    };
  }

  factory BatchEndpoint.fromMap(Map<String, dynamic> map) {
    return BatchEndpoint(
      authMode: pulumi.Input.fromValue(map['authMode'] as String),
      defaults: (() { final guardedValue = map['defaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchEndpointDefaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointAuthKeys.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

