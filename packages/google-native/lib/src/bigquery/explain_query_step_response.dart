// ignore_for_file: unused_element, unnecessary_cast

class ExplainQueryStepResponse {
  /// Machine-readable operation type.
  final String kind;

  /// Human-readable stage descriptions.
  final List<String> substeps;

  /// Creates a new [ExplainQueryStepResponse].
  /// [kind] Machine-readable operation type.
  /// [substeps] Human-readable stage descriptions.
  ExplainQueryStepResponse({
    required this.kind,
    required this.substeps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['substeps'] = substeps;
    return map;
  }

  factory ExplainQueryStepResponse.fromMap(Map<String, dynamic> map) {
    return ExplainQueryStepResponse(
      kind: map['kind'] as String,
      substeps: (map['substeps'] as List).cast<String>(),
    );
  }
}
