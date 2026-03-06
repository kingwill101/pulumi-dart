// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PortSet
class PortSet {
  /// Property definition
  final pulumi.Input<List<String>>? definition;

  /// Creates a new [PortSet].
  /// [definition] Property definition
  const PortSet({
    this.definition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
    };
  }

  factory PortSet.fromMap(Map<String, dynamic> map) {
    return PortSet(
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

