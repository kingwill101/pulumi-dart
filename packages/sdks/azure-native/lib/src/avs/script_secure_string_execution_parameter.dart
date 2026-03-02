// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// a plain text value execution parameter
class ScriptSecureStringExecutionParameter {
  /// The parameter name
  final pulumi.Input<String> name;
  /// A secure value for the passed parameter, not to be stored in logs
  final pulumi.Input<String>? secureValue;
  /// script execution parameter type
  /// Expected value is 'SecureValue'.
  final pulumi.Input<String> type;

  /// Creates a new [ScriptSecureStringExecutionParameter].
  /// [name] The parameter name
  /// [secureValue] A secure value for the passed parameter, not to be stored in logs
  /// [type] script execution parameter type
  ScriptSecureStringExecutionParameter({
    required this.name,
    this.secureValue,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secureValue': ?secureValue,
      'type': type,
    };
  }

  factory ScriptSecureStringExecutionParameter.fromMap(Map<String, dynamic> map) {
    return ScriptSecureStringExecutionParameter(
      name: (map['name'] as String).input(),
      secureValue: map['secureValue'] == null ? null : (map['secureValue'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

