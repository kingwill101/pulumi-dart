// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value_pair.dart';

/// Model that represents a discrete action.
class DiscreteAction {
  /// String that represents a Capability URN.
  final pulumi.Input<String> name;
  /// List of key value pairs.
  final pulumi.Input<List<KeyValuePair>> parameters;
  /// String that represents a selector.
  final pulumi.Input<String> selectorId;
  /// Enum that discriminates between action models.
  /// Expected value is 'discrete'.
  final pulumi.Input<String> type;

  /// Creates a new [DiscreteAction].
  /// [name] String that represents a Capability URN.
  /// [parameters] List of key value pairs.
  /// [selectorId] String that represents a selector.
  /// [type] Enum that discriminates between action models.
  const DiscreteAction({
    required this.name,
    required this.parameters,
    required this.selectorId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<List<KeyValuePair>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<KeyValuePair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selectorId': selectorId,
      'type': type,
    };
  }

  factory DiscreteAction.fromMap(Map<String, dynamic> map) {
    return DiscreteAction(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<KeyValuePair>(map['parameters']!, (value) => KeyValuePair.fromMap((value as Map).cast<String, dynamic>()))),
      selectorId: pulumi.Input.fromValue(map['selectorId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
