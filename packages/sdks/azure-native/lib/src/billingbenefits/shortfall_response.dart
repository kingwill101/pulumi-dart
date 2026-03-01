// ignore_for_file: unused_element, unnecessary_cast

import 'commitment_response.dart';

/// MACC shortfall
class ShortfallResponse {
  /// Points to BalanceVersion document that indicates the remaining commitment balance when the credit was created.
  final double? balanceVersion;
  /// Shortfall amount with grain.
  final CommitmentResponse? charge;
  /// End DateTime in UTC.
  final String? endAt;
  /// Represents catalog UPN.
  final String? productCode;
  /// Fully-qualified resource identifier of the credits associated with the shortfall.
  final String? resourceId;
  /// Start DateTime.
  final String? startAt;
  /// This is an identifier of the shortfall which will not change for its lifetime.
  final String? systemId;

  /// Creates a new [ShortfallResponse].
  /// [balanceVersion] Points to BalanceVersion document that indicates the remaining commitment balance when the credit was created.
  /// [charge] Shortfall amount with grain.
  /// [endAt] End DateTime in UTC.
  /// [productCode] Represents catalog UPN.
  /// [resourceId] Fully-qualified resource identifier of the credits associated with the shortfall.
  /// [startAt] Start DateTime.
  /// [systemId] This is an identifier of the shortfall which will not change for its lifetime.
  ShortfallResponse({
    this.balanceVersion,
    this.charge,
    this.endAt,
    this.productCode,
    this.resourceId,
    this.startAt,
    this.systemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'balanceVersion': ?balanceVersion,
      'charge': ?charge == null ? null : charge!.toMap(),
      'endAt': ?endAt,
      'productCode': ?productCode,
      'resourceId': ?resourceId,
      'startAt': ?startAt,
      'systemId': ?systemId,
    };
  }

  factory ShortfallResponse.fromMap(Map<String, dynamic> map) {
    return ShortfallResponse(
      balanceVersion: map['balanceVersion'] == null ? null : map['balanceVersion'] as double,
      charge: map['charge'] == null ? null : CommitmentResponse.fromMap((map['charge'] as Map).cast<String, dynamic>()),
      endAt: map['endAt'] == null ? null : map['endAt'] as String,
      productCode: map['productCode'] == null ? null : map['productCode'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      startAt: map['startAt'] == null ? null : map['startAt'] as String,
      systemId: map['systemId'] == null ? null : map['systemId'] as String,
    );
  }
}

