/// The kind of workbook. Only valid value is shared.
enum WorkbookSharedTypeKind {
  valueShared("shared");

  const WorkbookSharedTypeKind(this.wireValue);
  final String wireValue;

  static WorkbookSharedTypeKind fromValue(String value) {
    for (final item in WorkbookSharedTypeKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkbookSharedTypeKind value: $value');
  }
}

