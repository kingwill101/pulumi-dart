// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// State Store Resource Rule properties.
class StateStoreResourceRule {
  /// Allowed keyTypes pattern, string, binary. The key type used for matching, for example pattern tries to match the key to a glob-style pattern and string checks key is equal to value provided in keys.
  final pulumi.Input<String> keyType;
  /// Give access to state store keys for the corresponding principals defined. When key type is pattern set glob-style pattern (e.g., '*', 'clients/*').
  final pulumi.Input<List<String>> keys;
  /// Give access for `Read`, `Write` and `ReadWrite` access level.
  final pulumi.Input<String> method;

  /// Creates a new [StateStoreResourceRule].
  /// [keyType] Allowed keyTypes pattern, string, binary. The key type used for matching, for example pattern tries to match the key to a glob-style pattern and string checks key is equal to value provided in keys.
  /// [keys] Give access to state store keys for the corresponding principals defined. When key type is pattern set glob-style pattern (e.g., '*', 'clients/*').
  /// [method] Give access for `Read`, `Write` and `ReadWrite` access level.
  const StateStoreResourceRule({
    required this.keyType,
    required this.keys,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyType': keyType,
      'keys': keys,
      'method': method,
    };
  }

  factory StateStoreResourceRule.fromMap(Map<String, dynamic> map) {
    return StateStoreResourceRule(
      keyType: pulumi.Input.fromValue(map['keyType'] as String),
      keys: pulumi.Input.fromValue((map['keys'] as List).cast<String>()),
      method: pulumi.Input.fromValue(map['method'] as String),
    );
  }
}

