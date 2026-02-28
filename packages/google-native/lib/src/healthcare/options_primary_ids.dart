/// Set `Action` for [`StudyInstanceUID`, `SeriesInstanceUID`, `SOPInstanceUID`, and `MediaStorageSOPInstanceUID`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html).
enum OptionsPrimaryIds {
  primaryIdsOptionUnspecified("PRIMARY_IDS_OPTION_UNSPECIFIED"),
  keep("KEEP"),
  regen("REGEN");

  const OptionsPrimaryIds(this.value);
  final String value;

  static OptionsPrimaryIds fromValue(String value) {
    for (final item in OptionsPrimaryIds.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OptionsPrimaryIds value: $value');
  }
}

