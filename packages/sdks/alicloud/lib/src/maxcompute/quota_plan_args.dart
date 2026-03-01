// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_plan_quota.dart';

/// {@template pulumi_maxcompute_quota_plan_quota_plan_args_doc}
/// The set of arguments for QuotaPlan.
/// {@endtemplate}
/// {@macro pulumi_maxcompute_quota_plan_quota_plan_args_doc}
class QuotaPlanArgs {
  /// Whether to take effect immediately. “Valid values: true”
  /// .> **NOTE:** when other quota plans in the same quota group take effect, the effective quota group will become invalid. That is, IsEffective will become false. The effective quota plan cannot be deleted.
  final pulumi.Input<bool>? isEffective;
  /// Quota Name
  final pulumi.Input<String> nickname;
  /// The Quota plan name. Start with a letter, containing letters, numbers, and underscores (_). It is no more than 64 characters long.
  final pulumi.Input<String> planName;
  /// Quota property See `quota` below.
  final pulumi.Input<QuotaPlanQuota>? quota;

  /// Creates a new [QuotaPlanArgs].
  /// [isEffective] Whether to take effect immediately. “Valid values: true”
  /// [nickname] Quota Name
  /// [planName] The Quota plan name. Start with a letter, containing letters, numbers, and underscores (_). It is no more than 64 characters long.
  /// [quota] Quota property See `quota` below.
  QuotaPlanArgs({
    pulumi.Output<bool>? isEffective,
    required pulumi.Output<String> nickname,
    required pulumi.Output<String> planName,
    pulumi.Output<QuotaPlanQuota>? quota,
  }) :
      isEffective = pulumi.Input.asOptionalInput<bool>(isEffective),
      nickname = pulumi.Input.asInput<String>(nickname),
      planName = pulumi.Input.asInput<String>(planName),
      quota = pulumi.Input.asOptionalInput<QuotaPlanQuota>(quota);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEffective': ?isEffective,
      'nickname': nickname,
      'planName': planName,
      'quota': ?pulumi.Input.mapOptionalInputValue<QuotaPlanQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
    };
  }

  factory QuotaPlanArgs.fromMap(Map<String, dynamic> map) {
    return QuotaPlanArgs(
      isEffective: map['isEffective'] == null ? null : pulumi.Output.create<bool>(map['isEffective'] as bool),
      nickname: pulumi.Output.create<String>(map['nickname'] as String),
      planName: pulumi.Output.create<String>(map['planName'] as String),
      quota: map['quota'] == null ? null : pulumi.Output.create<QuotaPlanQuota>(QuotaPlanQuota.fromMap((map['quota'] as Map).cast<String, dynamic>())),
    );
  }
}

