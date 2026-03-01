// ignore_for_file: unused_element, unnecessary_cast


class RulePredicate {
  final String dataId;
  final bool negated;
  final String type;

  /// Creates a new [RulePredicate].
  /// [dataId] Required.
  /// [negated] Required.
  /// [type] Required.
  RulePredicate({
    required this.dataId,
    required this.negated,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataId': dataId,
      'negated': negated,
      'type': type,
    };
  }

  factory RulePredicate.fromMap(Map<String, dynamic> map) {
    return RulePredicate(
      dataId: map['dataId'] as String,
      negated: map['negated'] as bool,
      type: map['type'] as String,
    );
  }
}

