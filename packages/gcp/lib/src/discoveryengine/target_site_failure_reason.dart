// ignore_for_file: unused_element, unnecessary_cast

import 'target_site_failure_reason_quota_failure.dart';

class TargetSiteFailureReason {
  /// Site verification state indicating the ownership and validity.
  /// Structure is documented below.
  final TargetSiteFailureReasonQuotaFailure? quotaFailure;

  /// Creates a new [TargetSiteFailureReason].
  /// [quotaFailure] Site verification state indicating the ownership and validity.
  TargetSiteFailureReason({
    this.quotaFailure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quotaFailure': ?quotaFailure == null ? null : quotaFailure!.toMap(),
    };
  }

  factory TargetSiteFailureReason.fromMap(Map<String, dynamic> map) {
    return TargetSiteFailureReason(
      quotaFailure: map['quotaFailure'] == null ? null : TargetSiteFailureReasonQuotaFailure.fromMap((map['quotaFailure'] as Map).cast<String, dynamic>()),
    );
  }
}

