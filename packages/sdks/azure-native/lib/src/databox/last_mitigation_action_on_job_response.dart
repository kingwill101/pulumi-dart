// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Last Mitigation Action Performed On Job
class LastMitigationActionOnJobResponse {
  /// Action performed date time
  final pulumi.Input<String>? actionDateTimeInUtc;
  /// Resolution code provided by customer
  final pulumi.Input<String>? customerResolution;
  /// Action performed by customer,
  /// possibility is that mitigation might happen by customer or service or by ops
  final pulumi.Input<bool>? isPerformedByCustomer;

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
      actionDateTimeInUtc: (() { final guardedValue = map['actionDateTimeInUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerResolution: (() { final guardedValue = map['customerResolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPerformedByCustomer: (() { final guardedValue = map['isPerformedByCustomer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

