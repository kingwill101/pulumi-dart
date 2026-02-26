// ignore_for_file: unused_element, unnecessary_cast

class TargetSiteFailureReasonQuotaFailure {
  /// This number is an estimation on how much total quota this project
  /// needs to successfully complete indexing.
  final int? totalRequiredQuota;

  TargetSiteFailureReasonQuotaFailure({
    this.totalRequiredQuota,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final totalRequiredQuotaValue = totalRequiredQuota;
    if (totalRequiredQuotaValue != null) {
      map['totalRequiredQuota'] = totalRequiredQuotaValue;
    }
    return map;
  }

  factory TargetSiteFailureReasonQuotaFailure.fromMap(
      Map<String, dynamic> map) {
    return TargetSiteFailureReasonQuotaFailure(
      totalRequiredQuota: map['totalRequiredQuota'] == null
          ? null
          : map['totalRequiredQuota'] as int,
    );
  }
}
