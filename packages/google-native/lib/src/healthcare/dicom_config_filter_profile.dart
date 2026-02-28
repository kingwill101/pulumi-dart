/// Tag filtering profile that determines which tags to keep/remove.
enum DicomConfigFilterProfile {
  tagFilterProfileUnspecified("TAG_FILTER_PROFILE_UNSPECIFIED"),
  minimalKeepListProfile("MINIMAL_KEEP_LIST_PROFILE"),
  attributeConfidentialityBasicProfile("ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE"),
  keepAllProfile("KEEP_ALL_PROFILE"),
  deidentifyTagContents("DEIDENTIFY_TAG_CONTENTS");

  const DicomConfigFilterProfile(this.value);
  final String value;

  static DicomConfigFilterProfile fromValue(String value) {
    for (final item in DicomConfigFilterProfile.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DicomConfigFilterProfile value: $value');
  }
}

