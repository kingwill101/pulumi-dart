// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ArchiveRetentionActual {
  /// Retention period for the archive. Possible values: `THREE_MONTHS`, `SIX_MONTHS`, `NINE_MONTHS`, `ONE_YEAR`, `EIGHTEEN_MONTHS`, `TWO_YEARS`, `THIRTY_MONTHS`, `THREE_YEARS`, `FOUR_YEARS`, `FIVE_YEARS`, `SIX_YEARS`, `SEVEN_YEARS`, `EIGHT_YEARS`, `NINE_YEARS`, `TEN_YEARS`, `PERMANENT`.
  final pulumi.Input<String> retentionPeriod;

  /// Creates a new [ArchiveRetentionActual].
  /// [retentionPeriod] Retention period for the archive. Possible values: `THREE_MONTHS`, `SIX_MONTHS`, `NINE_MONTHS`, `ONE_YEAR`, `EIGHTEEN_MONTHS`, `TWO_YEARS`, `THIRTY_MONTHS`, `THREE_YEARS`, `FOUR_YEARS`, `FIVE_YEARS`, `SIX_YEARS`, `SEVEN_YEARS`, `EIGHT_YEARS`, `NINE_YEARS`, `TEN_YEARS`, `PERMANENT`.
  const ArchiveRetentionActual({
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPeriod': retentionPeriod,
    };
  }

  factory ArchiveRetentionActual.fromMap(Map<String, dynamic> map) {
    return ArchiveRetentionActual(
      retentionPeriod: pulumi.Input.fromValue(map['retentionPeriod'] as String),
    );
  }
}
