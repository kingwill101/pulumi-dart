// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_activity_parameter_response.dart';

/// Script block of scripts.
class ScriptActivityScriptBlockResponse {
  /// Array of script parameters. Type: array.
  final pulumi.Input<List<ScriptActivityParameterResponse>>? parameters;
  /// The query text. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> text;
  /// The type of the query. Please refer to the ScriptType for valid options. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> type;

  /// Creates a new [ScriptActivityScriptBlockResponse].
  /// [parameters] Array of script parameters. Type: array.
  /// [text] The query text. Type: string (or Expression with resultType string).
  /// [type] The type of the query. Please refer to the ScriptType for valid options. Type: string (or Expression with resultType string).
  const ScriptActivityScriptBlockResponse({
    this.parameters,
    required this.text,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ScriptActivityParameterResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ScriptActivityParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': text,
      'type': type,
    };
  }

  factory ScriptActivityScriptBlockResponse.fromMap(Map<String, dynamic> map) {
    return ScriptActivityScriptBlockResponse(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScriptActivityParameterResponse>(guardedValue, (value) => ScriptActivityParameterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      text: pulumi.Input.fromValue(map['text']),
      type: pulumi.Input.fromValue(map['type']),
    );
  }
}

