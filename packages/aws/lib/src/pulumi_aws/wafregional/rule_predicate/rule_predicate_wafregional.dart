// ignore_for_file: unused_element, unnecessary_cast

class RulePredicateWafregional {
  final String dataId;
  final bool negated;
  final String type;

  RulePredicateWafregional({
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

  factory RulePredicateWafregional.fromMap(Map<String, dynamic> map) {
    return RulePredicateWafregional(
      dataId: map['dataId'] as String,
      negated: map['negated'] as bool,
      type: map['type'] as String,
    );
  }
}
