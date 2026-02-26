// ignore_for_file: unused_element, unnecessary_cast

import '../target_site_failure_reason_quota_failure/target_site_failure_reason_quota_failure.dart';

class TargetSiteFailureReason {
  /// Site verification state indicating the ownership and validity.
  /// Structure is documented below.
  final TargetSiteFailureReasonQuotaFailure? quotaFailure;

  TargetSiteFailureReason({
    this.quotaFailure,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final quotaFailureValue = quotaFailure;
    if (quotaFailureValue != null) {
      map['quotaFailure'] = quotaFailureValue.toMap();
    }
    return map;
  }

  factory TargetSiteFailureReason.fromMap(Map<String, dynamic> map) {
    return TargetSiteFailureReason(
      quotaFailure: map['quotaFailure'] == null
          ? null
          : TargetSiteFailureReasonQuotaFailure.fromMap(
              (map['quotaFailure'] as Map).cast<String, dynamic>()),
    );
  }
}
