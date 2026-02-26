// ignore_for_file: unused_element, unnecessary_cast

class EntitlementRequesterJustificationConfig {
  /// The justification is not mandatory but can be provided in any of the supported formats.
  final Map<String, dynamic>? notMandatory;

  /// The requester has to provide a justification in the form of free flowing text.
  final Map<String, dynamic>? unstructured;

  EntitlementRequesterJustificationConfig({
    this.notMandatory,
    this.unstructured,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final notMandatoryValue = notMandatory;
    if (notMandatoryValue != null) {
      map['notMandatory'] = notMandatoryValue;
    }
    final unstructuredValue = unstructured;
    if (unstructuredValue != null) {
      map['unstructured'] = unstructuredValue;
    }
    return map;
  }

  factory EntitlementRequesterJustificationConfig.fromMap(
      Map<String, dynamic> map) {
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
