// ignore_for_file: unused_element, unnecessary_cast


class ProgressPropertiesResponse {
  /// The percentage complete of the copy operation.
  final String? percentage;

  /// Creates a new [ProgressPropertiesResponse].
  /// [percentage] The percentage complete of the copy operation.
  ProgressPropertiesResponse({
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': ?percentage,
    };
  }

  factory ProgressPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProgressPropertiesResponse(
      percentage: map['percentage'] == null ? null : map['percentage'] as String,
    );
  }
}

