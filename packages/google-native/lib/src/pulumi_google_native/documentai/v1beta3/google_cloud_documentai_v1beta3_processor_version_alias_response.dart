// ignore_for_file: unused_element, unnecessary_cast

/// Contains the alias and the aliased resource name of processor version.
class GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse {
  /// The alias in the form of `processor_version` resource name.
  final String alias;

  /// The resource name of aliased processor version.
  final String processorVersion;

  GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse({
    required this.alias,
    required this.processorVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alias'] = alias;
    map['processorVersion'] = processorVersion;
    return map;
  }

  factory GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse(
      alias: map['alias'] as String,
      processorVersion: map['processorVersion'] as String,
    );
  }
}
