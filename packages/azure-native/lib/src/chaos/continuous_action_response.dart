// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value_pair_response.dart';

/// Model that represents a continuous action.
class ContinuousActionResponse {
  /// ISO8601 formatted string that represents a duration.
  final String duration;
  /// String that represents a Capability URN.
  final String name;
  /// List of key value pairs.
  final List<KeyValuePairResponse> parameters;
  /// String that represents a selector.
  final String selectorId;
  /// Enum that discriminates between action models.
  /// Expected value is 'continuous'.
  final String type;

  /// Creates a new [ContinuousActionResponse].
  /// [duration] ISO8601 formatted string that represents a duration.
  /// [name] String that represents a Capability URN.
  /// [parameters] List of key value pairs.
  /// [selectorId] String that represents a selector.
  /// [type] Enum that discriminates between action models.
  ContinuousActionResponse({
    required this.duration,
    required this.name,
    required this.parameters,
    required this.selectorId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'name': name,
      'parameters': pulumi.Input.encodeList<KeyValuePairResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'selectorId': selectorId,
      'type': type,
    };
  }

  factory ContinuousActionResponse.fromMap(Map<String, dynamic> map) {
    return ContinuousActionResponse(
      duration: map['duration'] as String,
      name: map['name'] as String,
      parameters: pulumi.Input.decodeList<KeyValuePairResponse>(map['parameters'], (value) => KeyValuePairResponse.fromMap((value as Map).cast<String, dynamic>())),
      selectorId: map['selectorId'] as String,
      type: map['type'] as String,
    );
  }
}

