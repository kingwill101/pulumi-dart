// ignore_for_file: unused_element, unnecessary_cast

/// Contains the alias and the aliased resource name of processor version.
class GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse {
  /// The alias in the form of `processor_version` resource name.
  final String alias;

  /// The resource name of aliased processor version.
  final String processorVersion;

  /// Creates a new [GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse].
  /// [alias] The alias in the form of `processor_version` resource name.
  /// [processorVersion] The resource name of aliased processor version.
  GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse({
    required this.alias,
    required this.processorVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'processorVersion': processorVersion,
    };
  }

  factory GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse(
      alias: map['alias'] as String,
      processorVersion: map['processorVersion'] as String,
    );
  }
}
