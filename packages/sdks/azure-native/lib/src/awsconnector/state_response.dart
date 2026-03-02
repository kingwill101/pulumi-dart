// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of State
class StateResponse {
  /// Status code of the Instance.
  final pulumi.Input<int>? code;
  /// Status code of the Instance.
  final pulumi.Input<String>? name;

  /// Creates a new [StateResponse].
  /// [code] Status code of the Instance.
  /// [name] Status code of the Instance.
  StateResponse({
    this.code,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'name': ?name,
    };
  }

  factory StateResponse.fromMap(Map<String, dynamic> map) {
    return StateResponse(
      code: map['code'] == null ? null : (map['code'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

