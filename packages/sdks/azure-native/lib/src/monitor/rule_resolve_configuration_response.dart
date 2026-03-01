// ignore_for_file: unused_element, unnecessary_cast


/// TBD. Relevant only for rules of the kind LogAlert.
class RuleResolveConfigurationResponse {
  /// The flag that indicates whether or not to auto resolve a fired alert.
  final bool? autoResolved;
  /// The duration a rule must evaluate as healthy before the fired alert is automatically resolved represented in ISO 8601 duration format.
  final String? timeToResolve;

  /// Creates a new [RuleResolveConfigurationResponse].
  /// [autoResolved] The flag that indicates whether or not to auto resolve a fired alert.
  /// [timeToResolve] The duration a rule must evaluate as healthy before the fired alert is automatically resolved represented in ISO 8601 duration format.
  RuleResolveConfigurationResponse({
    this.autoResolved,
    this.timeToResolve,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoResolved': ?autoResolved,
      'timeToResolve': ?timeToResolve,
    };
  }

  factory RuleResolveConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return RuleResolveConfigurationResponse(
      autoResolved: map['autoResolved'] == null ? null : map['autoResolved'] as bool,
      timeToResolve: map['timeToResolve'] == null ? null : map['timeToResolve'] as String,
    );
  }
}

