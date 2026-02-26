// ignore_for_file: unused_element, unnecessary_cast

class RulePredicate2 {
  final String dataId;
  final bool negated;
  final String type;

  RulePredicate2({
    required this.dataId,
    required this.negated,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataId'] = dataId;
    map['negated'] = negated;
    map['type'] = type;
    return map;
  }

  factory RulePredicate2.fromMap(Map<String, dynamic> map) {
    return RulePredicate2(
      dataId: map['dataId'] as String,
      negated: map['negated'] as bool,
      type: map['type'] as String,
    );
  }
}
