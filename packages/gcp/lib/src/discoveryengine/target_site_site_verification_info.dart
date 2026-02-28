// ignore_for_file: unused_element, unnecessary_cast

class TargetSiteSiteVerificationInfo {
  /// Site verification state indicating the ownership and validity.
  /// Possible values are: `VERIFIED`, `UNVERIFIED`, `EXEMPTED`.
  final String? siteVerificationState;

  /// Latest site verification time.
  final String? verifyTime;

  /// Creates a new [TargetSiteSiteVerificationInfo].
  /// [siteVerificationState] Site verification state indicating the ownership and validity.
  /// [verifyTime] Latest site verification time.
  TargetSiteSiteVerificationInfo({
    this.siteVerificationState,
    this.verifyTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final siteVerificationStateValue = siteVerificationState;
    if (siteVerificationStateValue != null) {
      map['siteVerificationState'] = siteVerificationStateValue;
    }
    final verifyTimeValue = verifyTime;
    if (verifyTimeValue != null) {
      map['verifyTime'] = verifyTimeValue;
    }
    return map;
  }

  factory TargetSiteSiteVerificationInfo.fromMap(Map<String, dynamic> map) {
    return TargetSiteSiteVerificationInfo(
      siteVerificationState: map['siteVerificationState'] == null
          ? null
          : map['siteVerificationState'] as String,
      verifyTime:
          map['verifyTime'] == null ? null : map['verifyTime'] as String,
    );
  }
}
