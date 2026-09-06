import 'package:pulumi/pulumi.dart' as pulumi;

/// Synapse notebook reference type.
enum NotebookReferenceType implements pulumi.PulumiEnum<String> {
  notebookReference("NotebookReference");

  const NotebookReferenceType(this.wireValue);
  @override
  final String wireValue;

  static NotebookReferenceType fromValue(String value) {
    for (final item in NotebookReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotebookReferenceType value: $value');
  }
}
