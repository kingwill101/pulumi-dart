import 'package:pulumi/pulumi.dart' as pulumi;

/// The operation for the patch on the resource.
enum Operation implements pulumi.PulumiEnum<String> {
  valueAddBegin("AddBegin"),
  valueAddComplete("AddComplete"),
  valueDeleteBegin("DeleteBegin"),
  valueDeleteComplete("DeleteComplete"),
  valueActive("Active");

  const Operation(this.wireValue);
  @override
  final String wireValue;

  static Operation fromValue(String value) {
    for (final item in Operation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Operation value: $value');
  }
}
