// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationOutputSchema {
  /// The Format Type of the records on the output stream. Can be `CSV` or `JSON`.
  final pulumi.Input<String> recordFormatType;

  /// Creates a new [AnalyticsApplicationOutputSchema].
  /// [recordFormatType] The Format Type of the records on the output stream. Can be `CSV` or `JSON`.
  AnalyticsApplicationOutputSchema({required this.recordFormatType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'recordFormatType': recordFormatType};
  }

  factory AnalyticsApplicationOutputSchema.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationOutputSchema(
      recordFormatType: pulumi.Input.fromValue(
        map['recordFormatType'] as String,
      ),
    );
  }
}
