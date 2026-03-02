// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Quota report record properties
class QuotaReportResponse {
  /// Flag to indicate whether the quota is derived from default quota.
  final pulumi.Input<bool>? isDerivedQuota;
  /// Percentage of used size compared to total size.
  final pulumi.Input<double>? percentageUsed;
  /// Specifies the total size limit in kibibytes for the user/group quota.
  final pulumi.Input<double>? quotaLimitTotalInKiBs;
  /// Specifies the current usage in kibibytes for the user/group quota.
  final pulumi.Input<double>? quotaLimitUsedInKiBs;
  /// UserID/GroupID/SID based on the quota target type. UserID and groupID can be found by running ‘id’ or ‘getent’ command for the user or group and SID can be found by running <wmic useraccount where name='user-name' get sid>
  final pulumi.Input<String>? quotaTarget;
  /// Type of quota
  final pulumi.Input<String>? quotaType;

  /// Creates a new [QuotaReportResponse].
  /// [isDerivedQuota] Flag to indicate whether the quota is derived from default quota.
  /// [percentageUsed] Percentage of used size compared to total size.
  /// [quotaLimitTotalInKiBs] Specifies the total size limit in kibibytes for the user/group quota.
  /// [quotaLimitUsedInKiBs] Specifies the current usage in kibibytes for the user/group quota.
  /// [quotaTarget] UserID/GroupID/SID based on the quota target type. UserID and groupID can be found by running ‘id’ or ‘getent’ command for the user or group and SID can be found by running <wmic useraccount where name='user-name' get sid>
  /// [quotaType] Type of quota
  QuotaReportResponse({
    this.isDerivedQuota,
    this.percentageUsed,
    this.quotaLimitTotalInKiBs,
    this.quotaLimitUsedInKiBs,
    this.quotaTarget,
    this.quotaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDerivedQuota': ?isDerivedQuota,
      'percentageUsed': ?percentageUsed,
      'quotaLimitTotalInKiBs': ?quotaLimitTotalInKiBs,
      'quotaLimitUsedInKiBs': ?quotaLimitUsedInKiBs,
      'quotaTarget': ?quotaTarget,
      'quotaType': ?quotaType,
    };
  }

  factory QuotaReportResponse.fromMap(Map<String, dynamic> map) {
    return QuotaReportResponse(
      isDerivedQuota: map['isDerivedQuota'] == null ? null : (map['isDerivedQuota'] as bool).input(),
      percentageUsed: map['percentageUsed'] == null ? null : (map['percentageUsed'] as double).input(),
      quotaLimitTotalInKiBs: map['quotaLimitTotalInKiBs'] == null ? null : (map['quotaLimitTotalInKiBs'] as double).input(),
      quotaLimitUsedInKiBs: map['quotaLimitUsedInKiBs'] == null ? null : (map['quotaLimitUsedInKiBs'] as double).input(),
      quotaTarget: map['quotaTarget'] == null ? null : (map['quotaTarget'] as String).input(),
      quotaType: map['quotaType'] == null ? null : (map['quotaType'] as String).input(),
    );
  }
}

