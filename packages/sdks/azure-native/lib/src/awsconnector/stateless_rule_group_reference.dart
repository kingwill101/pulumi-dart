// ignore_for_file: unused_element, unnecessary_cast


/// Definition of StatelessRuleGroupReference
class StatelessRuleGroupReference {
  /// Property priority
  final int? priority;
  /// A resource ARN.
  final String? resourceArn;

  /// Creates a new [StatelessRuleGroupReference].
  /// [priority] Property priority
  /// [resourceArn] A resource ARN.
  StatelessRuleGroupReference({
    this.priority,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': ?priority,
      'resourceArn': ?resourceArn,
    };
  }

  factory StatelessRuleGroupReference.fromMap(Map<String, dynamic> map) {
    return StatelessRuleGroupReference(
      priority: map['priority'] == null ? null : map['priority'] as int,
      resourceArn: map['resourceArn'] == null ? null : map['resourceArn'] as String,
    );
  }
}

