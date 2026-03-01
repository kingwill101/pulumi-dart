// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a retention policy
class RetentionPolicyDetails {
  /// The orchestration state to which this policy applies. If omitted, the policy applies to all purgeable orchestration states.
  final String? orchestrationState;
  /// The retention period in days after which the orchestration will be purged automatically
  final int retentionPeriodInDays;

  /// Creates a new [RetentionPolicyDetails].
  /// [orchestrationState] The orchestration state to which this policy applies. If omitted, the policy applies to all purgeable orchestration states.
  /// [retentionPeriodInDays] The retention period in days after which the orchestration will be purged automatically
  RetentionPolicyDetails({
    this.orchestrationState,
    required this.retentionPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orchestrationState': ?orchestrationState,
      'retentionPeriodInDays': retentionPeriodInDays,
    };
  }

  factory RetentionPolicyDetails.fromMap(Map<String, dynamic> map) {
    return RetentionPolicyDetails(
      orchestrationState: map['orchestrationState'] == null ? null : map['orchestrationState'] as String,
      retentionPeriodInDays: map['retentionPeriodInDays'] as int,
    );
  }
}

