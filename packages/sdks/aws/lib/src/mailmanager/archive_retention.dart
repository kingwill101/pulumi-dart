// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ArchiveRetention {
  /// Retention period for the archive. Valid values: `THREE_MONTHS`, `SIX_MONTHS`, `NINE_MONTHS`, `ONE_YEAR`, `EIGHTEEN_MONTHS`, `TWO_YEARS`, `THIRTY_MONTHS`, `THREE_YEARS`, `FOUR_YEARS`, `FIVE_YEARS`, `SIX_YEARS`, `SEVEN_YEARS`, `EIGHT_YEARS`, `NINE_YEARS`, `TEN_YEARS`, `PERMANENT`.
  final pulumi.Input<String> retentionPeriod;

  /// Creates a new [ArchiveRetention].
  /// [retentionPeriod] Retention period for the archive. Valid values: `THREE_MONTHS`, `SIX_MONTHS`, `NINE_MONTHS`, `ONE_YEAR`, `EIGHTEEN_MONTHS`, `TWO_YEARS`, `THIRTY_MONTHS`, `THREE_YEARS`, `FOUR_YEARS`, `FIVE_YEARS`, `SIX_YEARS`, `SEVEN_YEARS`, `EIGHT_YEARS`, `NINE_YEARS`, `TEN_YEARS`, `PERMANENT`.
  const ArchiveRetention({
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPeriod': retentionPeriod,
    };
  }

  factory ArchiveRetention.fromMap(Map<String, dynamic> map) {
    return ArchiveRetention(
      retentionPeriod: pulumi.Input.fromValue(map['retentionPeriod'] as String),
    );
  }
}
