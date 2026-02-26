/// This field provides information about the type of file identified
enum FileNoteFileType2 {
  fileTypeUnspecified("FILE_TYPE_UNSPECIFIED"),
  source("SOURCE"),
  binary("BINARY"),
  archive("ARCHIVE"),
  application("APPLICATION"),
  audio("AUDIO"),
  image("IMAGE"),
  text("TEXT"),
  video("VIDEO"),
  documentation("DOCUMENTATION"),
  spdx("SPDX"),
  other("OTHER");

  const FileNoteFileType2(this.value);
  final String value;

  static FileNoteFileType2 fromValue(String value) {
    for (final item in FileNoteFileType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileNoteFileType2 value: $value');
  }
}
