// ignore_for_file: unused_element, unnecessary_cast


/// Last Mitigation Action Performed On Job
class LastMitigationActionOnJobResponse {
  /// Action performed date time
  final String? actionDateTimeInUtc;
  /// Resolution code provided by customer
  final String? customerResolution;
  /// Action performed by customer,
  /// possibility is that mitigation might happen by customer or service or by ops
  final bool? isPerformedByCustomer;

  /// Creates a new [LastMitigationActionOnJobResponse].
  /// [actionDateTimeInUtc] Action performed date time
  /// [customerResolution] Resolution code provided by customer
  /// [isPerformedByCustomer] Action performed by customer,
  LastMitigationActionOnJobResponse({
    this.actionDateTimeInUtc,
    this.customerResolution,
    this.isPerformedByCustomer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionDateTimeInUtc': ?actionDateTimeInUtc,
      'customerResolution': ?customerResolution,
      'isPerformedByCustomer': ?isPerformedByCustomer,
    };
  }

  factory LastMitigationActionOnJobResponse.fromMap(Map<String, dynamic> map) {
    return LastMitigationActionOnJobResponse(
      actionDateTimeInUtc: map['actionDateTimeInUtc'] == null ? null : map['actionDateTimeInUtc'] as String,
      customerResolution: map['customerResolution'] == null ? null : map['customerResolution'] as String,
      isPerformedByCustomer: map['isPerformedByCustomer'] == null ? null : map['isPerformedByCustomer'] as bool,
    );
  }
}

