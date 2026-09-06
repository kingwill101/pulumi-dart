import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum to indicate default Priority Level of request for Priority Based Execution.
enum DefaultPriorityLevel implements pulumi.PulumiEnum<String> {
  valueHigh("High"),
  valueLow("Low");

  const DefaultPriorityLevel(this.wireValue);
  @override
  final String wireValue;

  static DefaultPriorityLevel fromValue(String value) {
    for (final item in DefaultPriorityLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultPriorityLevel value: $value');
  }
}
