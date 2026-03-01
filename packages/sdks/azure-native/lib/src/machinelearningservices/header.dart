/// Header type.
enum Header {
  valueAllFilesHaveSameHeaders("all_files_have_same_headers"),
  valueOnlyFirstFileHasHeaders("only_first_file_has_headers"),
  valueNoHeaders("no_headers"),
  valueCombineAllFilesHeaders("combine_all_files_headers");

  const Header(this.value);
  final String value;

  static Header fromValue(String value) {
    for (final item in Header.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Header value: $value');
  }
}

