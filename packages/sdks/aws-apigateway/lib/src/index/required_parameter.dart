// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RequiredParameter {
  final pulumi.Input<String>? in_;
  final pulumi.Input<String>? name;

  /// Creates a new [RequiredParameter].
  /// [in_] Optional.
  /// [name] Optional.
  RequiredParameter({
    this.in_,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'in': ?in_,
      'name': ?name,
    };
  }

  factory RequiredParameter.fromMap(Map<String, dynamic> map) {
    return RequiredParameter(
      in_: map['in'] == null ? null : (map['in']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

