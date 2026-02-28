// ignore_for_file: unused_element, unnecessary_cast

/// OutputConfig contains a destination for writing trace data.
class OutputConfig {
  /// The destination for writing trace data. Supported formats include: "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
  final String? destination;

  /// Creates a new [OutputConfig].
  /// [destination] The destination for writing trace data. Supported formats include: "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
  OutputConfig({
    this.destination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationValue = destination;
    if (destinationValue != null) {
      map['destination'] = destinationValue;
    }
    return map;
  }

  factory OutputConfig.fromMap(Map<String, dynamic> map) {
    return OutputConfig(
      destination:
          map['destination'] == null ? null : map['destination'] as String,
    );
  }
}
