// ignore_for_file: unused_element, unnecessary_cast


class ExportExportRefreshCadence {
  /// Frequency that data exports are updated. The export refreshes each time the source data updates, up to three times daily. Valid values `SYNCHRONOUS`.
  final String frequency;

  /// Creates a new [ExportExportRefreshCadence].
  /// [frequency] Frequency that data exports are updated. The export refreshes each time the source data updates, up to three times daily. Valid values `SYNCHRONOUS`.
  ExportExportRefreshCadence({
    required this.frequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
    };
  }

  factory ExportExportRefreshCadence.fromMap(Map<String, dynamic> map) {
    return ExportExportRefreshCadence(
      frequency: map['frequency'] as String,
    );
  }
}

