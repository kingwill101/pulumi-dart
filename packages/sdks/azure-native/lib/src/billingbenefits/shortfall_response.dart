// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_response.dart';

/// MACC shortfall
class ShortfallResponse {
  /// Points to BalanceVersion document that indicates the remaining commitment balance when the credit was created.
  final pulumi.Input<double>? balanceVersion;
  /// Shortfall amount with grain.
  final pulumi.Input<CommitmentResponse>? charge;
  /// End DateTime in UTC.
  final pulumi.Input<String>? endAt;
  /// Represents catalog UPN.
  final pulumi.Input<String>? productCode;
  /// Fully-qualified resource identifier of the credits associated with the shortfall.
  final pulumi.Input<String>? resourceId;
  /// Start DateTime.
  final pulumi.Input<String>? startAt;
  /// This is an identifier of the shortfall which will not change for its lifetime.
  final pulumi.Input<String>? systemId;

  /// Creates a new [ShortfallResponse].
  /// [balanceVersion] Points to BalanceVersion document that indicates the remaining commitment balance when the credit was created.
  /// [charge] Shortfall amount with grain.
  /// [endAt] End DateTime in UTC.
  /// [productCode] Represents catalog UPN.
  /// [resourceId] Fully-qualified resource identifier of the credits associated with the shortfall.
  /// [startAt] Start DateTime.
  /// [systemId] This is an identifier of the shortfall which will not change for its lifetime.
  const ShortfallResponse({
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
      'charge': ?pulumi.Input.mapOptionalInputValue<CommitmentResponse, Map<String, dynamic>>(charge, (value) => value.toMap()),
      'endAt': ?endAt,
      'productCode': ?productCode,
      'resourceId': ?resourceId,
      'startAt': ?startAt,
      'systemId': ?systemId,
    };
  }

  factory ShortfallResponse.fromMap(Map<String, dynamic> map) {
    return ShortfallResponse(
      balanceVersion: (() { final guardedValue = map['balanceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      charge: (() { final guardedValue = map['charge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommitmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemId: (() { final guardedValue = map['systemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
