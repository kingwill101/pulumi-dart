/// Tag filtering profile that determines which tags to keep/remove.
enum DicomConfigFilterProfile2 {
  tagFilterProfileUnspecified("TAG_FILTER_PROFILE_UNSPECIFIED"),
  minimalKeepListProfile("MINIMAL_KEEP_LIST_PROFILE"),
  attributeConfidentialityBasicProfile(
      "ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE"),
  keepAllProfile("KEEP_ALL_PROFILE"),
  deidentifyTagContents("DEIDENTIFY_TAG_CONTENTS");

  const DicomConfigFilterProfile2(this.value);
  final String value;

  static DicomConfigFilterProfile2 fromValue(String value) {
    for (final item in DicomConfigFilterProfile2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DicomConfigFilterProfile2 value: $value');
  }
}
