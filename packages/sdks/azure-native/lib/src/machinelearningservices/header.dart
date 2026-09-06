import 'package:pulumi/pulumi.dart' as pulumi;

/// Header type.
enum Header implements pulumi.PulumiEnum<String> {
  valueAllFilesHaveSameHeaders("all_files_have_same_headers"),
  valueOnlyFirstFileHasHeaders("only_first_file_has_headers"),
  valueNoHeaders("no_headers"),
  valueCombineAllFilesHeaders("combine_all_files_headers");

  const Header(this.wireValue);
  @override
  final String wireValue;

  static Header fromValue(String value) {
    for (final item in Header.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Header value: $value');
  }
}
