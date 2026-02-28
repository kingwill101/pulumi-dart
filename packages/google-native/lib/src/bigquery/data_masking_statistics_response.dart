// ignore_for_file: unused_element, unnecessary_cast

class DataMaskingStatisticsResponse {
  /// [Preview] Whether any accessed data was protected by data masking. The actual evaluation is done by accessStats.masked_field_count > 0. Since this is only used for the discovery_doc generation purpose, as long as the type (boolean) matches, client library can leverage this. The actual evaluation of the variable is done else-where.
  final bool dataMaskingApplied;

  /// Creates a new [DataMaskingStatisticsResponse].
  /// [dataMaskingApplied] [Preview] Whether any accessed data was protected by data masking. The actual evaluation is done by accessStats.masked_field_count > 0. Since this is only used for the discovery_doc generation purpose, as long as the type (boolean) matches, client library can leverage this. The actual evaluation of the variable is done else-where.
  DataMaskingStatisticsResponse({
    required this.dataMaskingApplied,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataMaskingApplied'] = dataMaskingApplied;
    return map;
  }

  factory DataMaskingStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return DataMaskingStatisticsResponse(
      dataMaskingApplied: map['dataMaskingApplied'] as bool,
    );
  }
}
