// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// a plain text value execution parameter
class ScriptSecureStringExecutionParameterResponse {
  /// The parameter name
  final pulumi.Input<String> name;

  /// A secure value for the passed parameter, not to be stored in logs
  final pulumi.Input<String>? secureValue;

  /// script execution parameter type
  /// Expected value is 'SecureValue'.
  final pulumi.Input<String> type;

  /// Creates a new [ScriptSecureStringExecutionParameterResponse].
  /// [name] The parameter name
  /// [secureValue] A secure value for the passed parameter, not to be stored in logs
  /// [type] script execution parameter type
  ScriptSecureStringExecutionParameterResponse({
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

  factory ScriptSecureStringExecutionParameterResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScriptSecureStringExecutionParameterResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      secureValue: (() {
        final guardedValue = map['secureValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
