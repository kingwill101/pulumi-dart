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
  /// UserID/GroupID/SID based on the quota target type. UserID and groupID can be found by running ‘id’ or ‘getent’ command for the user or group and SID can be found by running &lt;wmic useraccount where name='user-name' get sid&gt;
  final pulumi.Input<String>? quotaTarget;
  /// Type of quota
  final pulumi.Input<String>? quotaType;

  /// Creates a new [QuotaReportResponse].
  /// [isDerivedQuota] Flag to indicate whether the quota is derived from default quota.
  /// [percentageUsed] Percentage of used size compared to total size.
  /// [quotaLimitTotalInKiBs] Specifies the total size limit in kibibytes for the user/group quota.
  /// [quotaLimitUsedInKiBs] Specifies the current usage in kibibytes for the user/group quota.
  /// [quotaTarget] UserID/GroupID/SID based on the quota target type. UserID and groupID can be found by running ‘id’ or ‘getent’ command for the user or group and SID can be found by running &lt;wmic useraccount where name='user-name' get sid&gt;
  /// [quotaType] Type of quota
  const QuotaReportResponse({
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
      isDerivedQuota: (() { final guardedValue = map['isDerivedQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      percentageUsed: (() { final guardedValue = map['percentageUsed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      quotaLimitTotalInKiBs: (() { final guardedValue = map['quotaLimitTotalInKiBs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      quotaLimitUsedInKiBs: (() { final guardedValue = map['quotaLimitUsedInKiBs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      quotaTarget: (() { final guardedValue = map['quotaTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaType: (() { final guardedValue = map['quotaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

