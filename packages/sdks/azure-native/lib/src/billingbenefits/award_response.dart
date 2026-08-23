// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_response.dart';

/// Award details for milestone completion
class AwardResponse {
  /// Points to BalanceVersion document that indicates the remaining commitment balance when the credit was created.
  final pulumi.Input<double> balanceVersion;
  /// Credit amount to be awarded
  final pulumi.Input<CommitmentResponse>? credit;
  /// Duration for which the benefit is active. Will be in format P{int}M or P{int}Y. Any values representing up to 12 years are valid. Upper limit examples: P144M, P12Y.
  final pulumi.Input<String>? duration;
  /// End date when the credit expires
  final pulumi.Input<String>? endAt;
  /// Resource ID for the awarded credit.
  final pulumi.Input<String> resourceId;
  /// Start date when the credit becomes effective
  final pulumi.Input<String>? startAt;
  /// This is the globally unique identifier of the credit which will not change for its lifetime.
  final pulumi.Input<String> systemId;

  /// Creates a new [AwardResponse].
  /// [balanceVersion] Points to BalanceVersion document that indicates the remaining commitment balance when the credit was created.
  /// [credit] Credit amount to be awarded
  /// [duration] Duration for which the benefit is active. Will be in format P{int}M or P{int}Y. Any values representing up to 12 years are valid. Upper limit examples: P144M, P12Y.
  /// [endAt] End date when the credit expires
  /// [resourceId] Resource ID for the awarded credit.
  /// [startAt] Start date when the credit becomes effective
  /// [systemId] This is the globally unique identifier of the credit which will not change for its lifetime.
  const AwardResponse({
    required this.balanceVersion,
    this.credit,
    this.duration,
    this.endAt,
    required this.resourceId,
    this.startAt,
    required this.systemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'balanceVersion': balanceVersion,
      'credit': ?pulumi.Input.mapOptionalInputValue<CommitmentResponse, Map<String, dynamic>>(credit, (value) => value.toMap()),
      'duration': ?duration,
      'endAt': ?endAt,
      'resourceId': resourceId,
      'startAt': ?startAt,
      'systemId': systemId,
    };
  }

  factory AwardResponse.fromMap(Map<String, dynamic> map) {
    return AwardResponse(
      balanceVersion: pulumi.Input.fromValue(map['balanceVersion'] as double),
      credit: (() { final guardedValue = map['credit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommitmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemId: pulumi.Input.fromValue(map['systemId'] as String),
    );
  }
}
