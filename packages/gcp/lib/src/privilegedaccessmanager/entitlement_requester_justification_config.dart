// ignore_for_file: unused_element, unnecessary_cast

class EntitlementRequesterJustificationConfig {
  /// The justification is not mandatory but can be provided in any of the supported formats.
  final Map<String, dynamic>? notMandatory;

  /// The requester has to provide a justification in the form of free flowing text.
  final Map<String, dynamic>? unstructured;

  /// Creates a new [EntitlementRequesterJustificationConfig].
  /// [notMandatory] The justification is not mandatory but can be provided in any of the supported formats.
  /// [unstructured] The requester has to provide a justification in the form of free flowing text.
  EntitlementRequesterJustificationConfig({
    this.notMandatory,
    this.unstructured,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notMandatory': ?notMandatory,
      'unstructured': ?unstructured,
    };
  }

  factory EntitlementRequesterJustificationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EntitlementRequesterJustificationConfig(
      notMandatory: map['notMandatory'] == null
          ? null
          : (map['notMandatory'] as Map).cast<String, dynamic>(),
      unstructured: map['unstructured'] == null
          ? null
          : (map['unstructured'] as Map).cast<String, dynamic>(),
    );
  }
}
