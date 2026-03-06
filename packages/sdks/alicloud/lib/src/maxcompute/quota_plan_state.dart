// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_plan_quota.dart';

/// Input properties used for looking up and filtering QuotaPlan resources.
class QuotaPlanState {
  /// Whether to take effect immediately. “Valid values: true”
  /// .&gt; **NOTE:** when other quota plans in the same quota group take effect, the effective quota group will become invalid. That is, IsEffective will become false. The effective quota plan cannot be deleted.
  final pulumi.Input<bool>? isEffective;
  /// Quota Name
  final pulumi.Input<String>? nickname;
  /// The Quota plan name. Start with a letter, containing letters, numbers, and underscores (_). It is no more than 64 characters long.
  final pulumi.Input<String>? planName;
  /// Quota property See `quota` below.
  final pulumi.Input<QuotaPlanQuota>? quota;

  /// Creates a new [QuotaPlanState].
  /// [isEffective] Whether to take effect immediately. “Valid values: true”
  /// [nickname] Quota Name
  /// [planName] The Quota plan name. Start with a letter, containing letters, numbers, and underscores (_). It is no more than 64 characters long.
  /// [quota] Quota property See `quota` below.
  const QuotaPlanState({
    this.isEffective,
    this.nickname,
    this.planName,
    this.quota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEffective': ?isEffective,
      'nickname': ?nickname,
      'planName': ?planName,
      'quota': ?pulumi.Input.mapOptionalInputValue<QuotaPlanQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
    };
  }

  factory QuotaPlanState.fromMap(Map<String, dynamic> map) {
    return QuotaPlanState(
      isEffective: (() { final guardedValue = map['isEffective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nickname: (() { final guardedValue = map['nickname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planName: (() { final guardedValue = map['planName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quota: (() { final guardedValue = map['quota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QuotaPlanQuota.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

