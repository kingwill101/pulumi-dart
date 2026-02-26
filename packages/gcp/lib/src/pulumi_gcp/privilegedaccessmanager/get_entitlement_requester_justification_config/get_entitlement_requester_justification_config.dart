// ignore_for_file: unused_element, unnecessary_cast

class GetEntitlementRequesterJustificationConfig {
  /// The justification is not mandatory but can be provided in any of the supported formats.
  final List<Map<String, dynamic>> notMandatories;

  /// The requester has to provide a justification in the form of free flowing text.
  final List<Map<String, dynamic>> unstructureds;

  GetEntitlementRequesterJustificationConfig({
    required this.notMandatories,
    required this.unstructureds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['notMandatories'] = notMandatories;
    map['unstructureds'] = unstructureds;
    return map;
  }

  factory GetEntitlementRequesterJustificationConfig.fromMap(
      Map<String, dynamic> map) {
    return GetEntitlementRequesterJustificationConfig(
      notMandatories:
          (map['notMandatories'] as List).cast<Map<String, dynamic>>(),
      unstructureds:
          (map['unstructureds'] as List).cast<Map<String, dynamic>>(),
    );
  }
}
