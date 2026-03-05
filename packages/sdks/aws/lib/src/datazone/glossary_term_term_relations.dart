// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlossaryTermTermRelations {
  /// String array that calssifies the term relations.
  final pulumi.Input<List<String>>? classifies;
  final pulumi.Input<List<String>>? isAs;

  /// Creates a new [GlossaryTermTermRelations].
  /// [classifies] String array that calssifies the term relations.
  /// [isAs] Optional.
  GlossaryTermTermRelations({
    this.classifies,
    this.isAs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classifies': ?classifies,
      'isAs': ?isAs,
    };
  }

  factory GlossaryTermTermRelations.fromMap(Map<String, dynamic> map) {
    return GlossaryTermTermRelations(
      classifies: (() { final guardedValue = map['classifies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isAs: (() { final guardedValue = map['isAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

