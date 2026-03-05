// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_configuration_response.dart';
import 'string_string_key_value_pair_response.dart';

/// InferenceEndpoint configuration
class InferenceEndpointResponse {
  /// [Required] Authentication mode for the endpoint.
  final pulumi.Input<String> authMode;
  /// Description of the resource.
  final pulumi.Input<String>? description;
  /// Endpoint URI for the inference endpoint.
  final pulumi.Input<String> endpointUri;
  /// [Required] Group within the same pool with which this endpoint needs to be associated with.
  final pulumi.Input<String> groupName;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<List<StringStringKeyValuePairResponse>>? properties;
  /// Provisioning state for the endpoint.
  final pulumi.Input<String> provisioningState;
  /// RequestConfiguration for endpoint.
  final pulumi.Input<RequestConfigurationResponse>? requestConfiguration;

  /// Creates a new [InferenceEndpointResponse].
  /// [authMode] [Required] Authentication mode for the endpoint.
  /// [description] Description of the resource.
  /// [endpointUri] Endpoint URI for the inference endpoint.
  /// [groupName] [Required] Group within the same pool with which this endpoint needs to be associated with.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [provisioningState] Provisioning state for the endpoint.
  /// [requestConfiguration] RequestConfiguration for endpoint.
  InferenceEndpointResponse({
    required this.authMode,
    this.description,
    required this.endpointUri,
    required this.groupName,
    this.properties,
    required this.provisioningState,
    this.requestConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': authMode,
      'description': ?description,
      'endpointUri': endpointUri,
      'groupName': groupName,
      'properties': ?pulumi.Input.mapOptionalInputValue<List<StringStringKeyValuePairResponse>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<StringStringKeyValuePairResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'requestConfiguration': ?pulumi.Input.mapOptionalInputValue<RequestConfigurationResponse, Map<String, dynamic>>(requestConfiguration, (value) => value.toMap()),
    };
  }

  factory InferenceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return InferenceEndpointResponse(
      authMode: pulumi.Input.fromValue(map['authMode'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointUri: pulumi.Input.fromValue(map['endpointUri'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StringStringKeyValuePairResponse>(guardedValue, (value) => StringStringKeyValuePairResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      requestConfiguration: (() { final guardedValue = map['requestConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RequestConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

