// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_activity_parameter.dart';

/// Script block of scripts.
class ScriptActivityScriptBlock {
  /// Array of script parameters. Type: array.
  final List<ScriptActivityParameter>? parameters;
  /// The query text. Type: string (or Expression with resultType string).
  final dynamic text;
  /// The type of the query. Please refer to the ScriptType for valid options. Type: string (or Expression with resultType string).
  final dynamic type;

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
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<ScriptActivityParameter, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'text': text,
      'type': type,
    };
  }

  factory ScriptActivityScriptBlock.fromMap(Map<String, dynamic> map) {
    return ScriptActivityScriptBlock(
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<ScriptActivityParameter>(map['parameters'], (value) => ScriptActivityParameter.fromMap((value as Map).cast<String, dynamic>())),
      text: map['text'],
      type: map['type'],
    );
  }
}

