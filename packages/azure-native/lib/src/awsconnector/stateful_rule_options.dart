// ignore_for_file: unused_element, unnecessary_cast


/// Definition of StatefulRuleOptions
class StatefulRuleOptions {
  /// Property ruleOrder
  final String? ruleOrder;

  /// Creates a new [StatefulRuleOptions].
  /// [ruleOrder] Property ruleOrder
  StatefulRuleOptions({
    this.ruleOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleOrder': ?ruleOrder,
    };
  }

  factory StatefulRuleOptions.fromMap(Map<String, dynamic> map) {
    return StatefulRuleOptions(
      ruleOrder: map['ruleOrder'] == null ? null : map['ruleOrder'] as String,
    );
  }
}

