// ignore_for_file: unused_element, unnecessary_cast

class DataAccessScopeDeniedDataAccessLabelIngestionLabel {
  /// Required. The key of the ingestion label. Always required.
  final String ingestionLabelKey;

  /// Optional. The value of the ingestion label. Optional. An object
  /// with no provided value and some key provided would match
  /// against the given key and ANY value.
  final String? ingestionLabelValue;

  /// Creates a new [DataAccessScopeDeniedDataAccessLabelIngestionLabel].
  /// [ingestionLabelKey] Required. The key of the ingestion label. Always required.
  /// [ingestionLabelValue] Optional. The value of the ingestion label. Optional. An object
  DataAccessScopeDeniedDataAccessLabelIngestionLabel({
    required this.ingestionLabelKey,
    this.ingestionLabelValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestionLabelKey': ingestionLabelKey,
      'ingestionLabelValue': ?ingestionLabelValue,
    };
  }

  factory DataAccessScopeDeniedDataAccessLabelIngestionLabel.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataAccessScopeDeniedDataAccessLabelIngestionLabel(
      ingestionLabelKey: map['ingestionLabelKey'] as String,
      ingestionLabelValue: map['ingestionLabelValue'] == null
          ? null
          : map['ingestionLabelValue'] as String,
    );
  }
}
