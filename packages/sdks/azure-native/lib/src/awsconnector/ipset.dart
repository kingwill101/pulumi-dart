// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IPSet
class IPSet {
  /// Property definition
  final pulumi.Input<List<String>>? definition;

  /// Creates a new [IPSet].
  /// [definition] Property definition
  const IPSet({
    this.definition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
    };
  }

  factory IPSet.fromMap(Map<String, dynamic> map) {
    return IPSet(
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

