import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of workbook. Only valid value is shared.
enum WorkbookSharedTypeKind implements pulumi.PulumiEnum<String> {
  shared("shared");

  const WorkbookSharedTypeKind(this.wireValue);
  @override
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
