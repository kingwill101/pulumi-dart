// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_activity_parameter.dart';

/// Script block of scripts.
class ScriptActivityScriptBlock {
  /// Array of script parameters. Type: array.
  final pulumi.Input<List<ScriptActivityParameter>>? parameters;
  /// The query text. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> text;
  /// The type of the query. Please refer to the ScriptType for valid options. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> type;

  /// Creates a new [ScriptActivityScriptBlock].
  /// [parameters] Array of script parameters. Type: array.
  /// [text] The query text. Type: string (or Expression with resultType string).
  /// [type] The type of the query. Please refer to the ScriptType for valid options. Type: string (or Expression with resultType string).
  ScriptActivityScriptBlock({
    this.parameters,
    required this.text,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ScriptActivityParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ScriptActivityParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': text,
      'type': type,
    };
  }

  factory ScriptActivityScriptBlock.fromMap(Map<String, dynamic> map) {
    return ScriptActivityScriptBlock(
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<ScriptActivityParameter>(map['parameters'], (value) => ScriptActivityParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      text: (map['text']).input(),
      type: (map['type']).input(),
    );
  }
}

