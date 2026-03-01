// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_plan_quota.dart';

/// Input properties used for looking up and filtering QuotaPlan resources.
class QuotaPlanState {
  /// Whether to take effect immediately. “Valid values: true”
  /// .> **NOTE:** when other quota plans in the same quota group take effect, the effective quota group will become invalid. That is, IsEffective will become false. The effective quota plan cannot be deleted.
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
  QuotaPlanState({
    pulumi.Output<bool>? isEffective,
    pulumi.Output<String>? nickname,
    pulumi.Output<String>? planName,
    pulumi.Output<QuotaPlanQuota>? quota,
  }) :
      isEffective = pulumi.Input.asOptionalInput<bool>(isEffective),
      nickname = pulumi.Input.asOptionalInput<String>(nickname),
      planName = pulumi.Input.asOptionalInput<String>(planName),
      quota = pulumi.Input.asOptionalInput<QuotaPlanQuota>(quota);

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
      isEffective: map['isEffective'] == null ? null : pulumi.Output.create<bool>(map['isEffective'] as bool),
      nickname: map['nickname'] == null ? null : pulumi.Output.create<String>(map['nickname'] as String),
      planName: map['planName'] == null ? null : pulumi.Output.create<String>(map['planName'] as String),
      quota: map['quota'] == null ? null : pulumi.Output.create<QuotaPlanQuota>(QuotaPlanQuota.fromMap((map['quota'] as Map).cast<String, dynamic>())),
    );
  }
}

