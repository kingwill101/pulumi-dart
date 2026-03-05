// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_configuration.dart';
import 'string_string_key_value_pair.dart';

/// InferenceEndpoint configuration
class InferenceEndpoint {
  /// [Required] Authentication mode for the endpoint.
  final pulumi.Input<String> authMode;
  /// Description of the resource.
  final pulumi.Input<String>? description;
  /// [Required] Group within the same pool with which this endpoint needs to be associated with.
  final pulumi.Input<String> groupName;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<List<StringStringKeyValuePair>>? properties;
  /// RequestConfiguration for endpoint.
  final pulumi.Input<RequestConfiguration>? requestConfiguration;

  /// Creates a new [InferenceEndpoint].
  /// [authMode] [Required] Authentication mode for the endpoint.
  /// [description] Description of the resource.
  /// [groupName] [Required] Group within the same pool with which this endpoint needs to be associated with.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [requestConfiguration] RequestConfiguration for endpoint.
  InferenceEndpoint({
    required this.authMode,
    this.description,
    required this.groupName,
    this.properties,
    this.requestConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': authMode,
      'description': ?description,
      'groupName': groupName,
      'properties': ?pulumi.Input.mapOptionalInputValue<List<StringStringKeyValuePair>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<StringStringKeyValuePair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestConfiguration': ?pulumi.Input.mapOptionalInputValue<RequestConfiguration, Map<String, dynamic>>(requestConfiguration, (value) => value.toMap()),
    };
  }

  factory InferenceEndpoint.fromMap(Map<String, dynamic> map) {
    return InferenceEndpoint(
      authMode: pulumi.Input.fromValue(map['authMode'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StringStringKeyValuePair>(guardedValue, (value) => StringStringKeyValuePair.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestConfiguration: (() { final guardedValue = map['requestConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RequestConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

