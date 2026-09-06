// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment.dart';

/// Award details for milestone completion
class Award {
  /// Credit amount to be awarded
  final pulumi.Input<Commitment?>? credit;
  /// Duration for which the benefit is active. Will be in format P{int}M or P{int}Y. Any values representing up to 12 years are valid. Upper limit examples: P144M, P12Y.
  final pulumi.Input<String?>? duration;
  /// End date when the credit expires
  final pulumi.Input<String?>? endAt;
  /// Start date when the credit becomes effective
  final pulumi.Input<String?>? startAt;

  /// Creates a new [Award].
  /// [credit] Credit amount to be awarded
  /// [duration] Duration for which the benefit is active. Will be in format P{int}M or P{int}Y. Any values representing up to 12 years are valid. Upper limit examples: P144M, P12Y.
  /// [endAt] End date when the credit expires
  /// [startAt] Start date when the credit becomes effective
  const Award({
    this.credit,
    this.duration,
    this.endAt,
    this.startAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credit': ?pulumi.Input.mapOptionalInputValue<Commitment, Map<String, dynamic>>(credit, (value) => value.toMap()),
      'duration': ?duration,
      'endAt': ?endAt,
      'startAt': ?startAt,
    };
  }

  factory Award.fromMap(Map<String, dynamic> map) {
    return Award(
      credit: (() { final guardedValue = map['credit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Commitment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
