// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsApplicationOutputSchema {
  /// The Format Type of the records on the output stream. Can be `CSV` or `JSON`.
  final String recordFormatType;

  AnalyticsApplicationOutputSchema({
    required this.recordFormatType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recordFormatType'] = recordFormatType;
    return map;
  }

  factory AnalyticsApplicationOutputSchema.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationOutputSchema(
      recordFormatType: map['recordFormatType'] as String,
    );
  }
}
