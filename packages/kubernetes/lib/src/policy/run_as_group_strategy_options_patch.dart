// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idrange_patch.dart';

/// RunAsGroupStrategyOptions defines the strategy type and any options used to create the strategy.
class RunAsGroupStrategyOptionsPatch {
  /// ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.
  final List<IDRangePatch>? ranges;
  /// rule is the strategy that will dictate the allowable RunAsGroup values that may be set.
  final String? rule;

  /// Creates a new [RunAsGroupStrategyOptionsPatch].
  /// [ranges] ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.
  /// [rule] rule is the strategy that will dictate the allowable RunAsGroup values that may be set.
  RunAsGroupStrategyOptionsPatch({
    this.ranges,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ranges': ?ranges == null ? null : pulumi.Input.encodeList<IDRangePatch, Map<String, dynamic>>(ranges!, (value) => value.toMap()),
      'rule': ?rule,
    };
  }

  factory RunAsGroupStrategyOptionsPatch.fromMap(Map<String, dynamic> map) {
    return RunAsGroupStrategyOptionsPatch(
      ranges: map['ranges'] == null ? null : pulumi.Input.decodeList<IDRangePatch>(map['ranges'], (value) => IDRangePatch.fromMap((value as Map).cast<String, dynamic>())),
      rule: map['rule'] == null ? null : map['rule'] as String,
    );
  }
}

