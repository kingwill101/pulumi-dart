/// The kind of workbook. Only valid value is shared.
enum WorkbookSharedTypeKind {
  valueShared("shared");

  const WorkbookSharedTypeKind(this.value);
  final String value;

  static WorkbookSharedTypeKind fromValue(String value) {
    for (final item in WorkbookSharedTypeKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkbookSharedTypeKind value: $value');
  }
}

