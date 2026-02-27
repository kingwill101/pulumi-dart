// ignore_for_file: unused_element, unnecessary_cast

/// List of tags to be filtered.
class TagFilterListResponseHealthcareV1beta1 {
  /// Tags to be filtered. Tags must be DICOM Data Elements, File Meta Elements, or Directory Structuring Elements, as defined at: http://dicom.nema.org/medical/dicom/current/output/html/part06.html#table_6-1,. They may be provided by "Keyword" or "Tag". For example, "PatientID", "00100010".
  final List<String> tags;

  TagFilterListResponseHealthcareV1beta1({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tags'] = tags;
    return map;
  }

  factory TagFilterListResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return TagFilterListResponseHealthcareV1beta1(
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
