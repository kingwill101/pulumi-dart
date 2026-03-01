// ignore_for_file: unused_element, unnecessary_cast


class GetQuotasQuota {
  /// Is the quota adjustable.
  final bool adjustable;
  /// The range of quota adjustment.
  final List<String> applicableRanges;
  /// The type of quota.
  final String applicableType;
  /// Show used quota.
  final bool consumable;
  /// The ID of the Quota.
  final String id;
  /// The quota action code.
  final String quotaActionCode;
  /// The quota description.
  final String quotaDescription;
  /// The quota name.
  final String quotaName;
  /// The quota type.
  final String quotaType;
  /// The quota unit.
  final String quotaUnit;
  /// TotalQuota.
  final double totalQuota;
  /// The total of usage.
  final double totalUsage;
  /// The unadjustable detail.
  final String unadjustableDetail;

  /// Creates a new [GetQuotasQuota].
  /// [adjustable] Is the quota adjustable.
  /// [applicableRanges] The range of quota adjustment.
  /// [applicableType] The type of quota.
  /// [consumable] Show used quota.
  /// [id] The ID of the Quota.
  /// [quotaActionCode] The quota action code.
  /// [quotaDescription] The quota description.
  /// [quotaName] The quota name.
  /// [quotaType] The quota type.
  /// [quotaUnit] The quota unit.
  /// [totalQuota] TotalQuota.
  /// [totalUsage] The total of usage.
  /// [unadjustableDetail] The unadjustable detail.
  GetQuotasQuota({
    required this.adjustable,
    required this.applicableRanges,
    required this.applicableType,
    required this.consumable,
    required this.id,
    required this.quotaActionCode,
    required this.quotaDescription,
    required this.quotaName,
    required this.quotaType,
    required this.quotaUnit,
    required this.totalQuota,
    required this.totalUsage,
    required this.unadjustableDetail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustable': adjustable,
      'applicableRanges': applicableRanges,
      'applicableType': applicableType,
      'consumable': consumable,
      'id': id,
      'quotaActionCode': quotaActionCode,
      'quotaDescription': quotaDescription,
      'quotaName': quotaName,
      'quotaType': quotaType,
      'quotaUnit': quotaUnit,
      'totalQuota': totalQuota,
      'totalUsage': totalUsage,
      'unadjustableDetail': unadjustableDetail,
    };
  }

  factory GetQuotasQuota.fromMap(Map<String, dynamic> map) {
    return GetQuotasQuota(
      adjustable: map['adjustable'] as bool,
      applicableRanges: (map['applicableRanges'] as List).cast<String>(),
      applicableType: map['applicableType'] as String,
      consumable: map['consumable'] as bool,
      id: map['id'] as String,
      quotaActionCode: map['quotaActionCode'] as String,
      quotaDescription: map['quotaDescription'] as String,
      quotaName: map['quotaName'] as String,
      quotaType: map['quotaType'] as String,
      quotaUnit: map['quotaUnit'] as String,
      totalQuota: map['totalQuota'] as double,
      totalUsage: map['totalUsage'] as double,
      unadjustableDetail: map['unadjustableDetail'] as String,
    );
  }
}

