// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQuotasQuota {
  /// Is the quota adjustable.
  final pulumi.Input<bool> adjustable;
  /// The range of quota adjustment.
  final pulumi.Input<List<String>> applicableRanges;
  /// The type of quota.
  final pulumi.Input<String> applicableType;
  /// Show used quota.
  final pulumi.Input<bool> consumable;
  /// The ID of the Quota.
  final pulumi.Input<String> id;
  /// The quota action code.
  final pulumi.Input<String> quotaActionCode;
  /// The quota description.
  final pulumi.Input<String> quotaDescription;
  /// The quota name.
  final pulumi.Input<String> quotaName;
  /// The quota type.
  final pulumi.Input<String> quotaType;
  /// The quota unit.
  final pulumi.Input<String> quotaUnit;
  /// TotalQuota.
  final pulumi.Input<double> totalQuota;
  /// The total of usage.
  final pulumi.Input<double> totalUsage;
  /// The unadjustable detail.
  final pulumi.Input<String> unadjustableDetail;

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
  const GetQuotasQuota({
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
      adjustable: pulumi.Input.fromValue(map['adjustable'] as bool),
      applicableRanges: pulumi.Input.fromValue((map['applicableRanges'] as List).cast<String>()),
      applicableType: pulumi.Input.fromValue(map['applicableType'] as String),
      consumable: pulumi.Input.fromValue(map['consumable'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      quotaActionCode: pulumi.Input.fromValue(map['quotaActionCode'] as String),
      quotaDescription: pulumi.Input.fromValue(map['quotaDescription'] as String),
      quotaName: pulumi.Input.fromValue(map['quotaName'] as String),
      quotaType: pulumi.Input.fromValue(map['quotaType'] as String),
      quotaUnit: pulumi.Input.fromValue(map['quotaUnit'] as String),
      totalQuota: pulumi.Input.fromValue(map['totalQuota'] as double),
      totalUsage: pulumi.Input.fromValue(map['totalUsage'] as double),
      unadjustableDetail: pulumi.Input.fromValue(map['unadjustableDetail'] as String),
    );
  }
}

