// ignore_for_file: unused_element, unnecessary_cast


class GlossaryTermTermRelations {
  /// String array that calssifies the term relations.
  final List<String>? classifies;
  final List<String>? isAs;

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
      classifies: map['classifies'] == null ? null : (map['classifies'] as List).cast<String>(),
      isAs: map['isAs'] == null ? null : (map['isAs'] as List).cast<String>(),
    );
  }
}

