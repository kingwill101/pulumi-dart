import 'package:pulumi/pulumi.dart' as pulumi;

/// Valid actions for a filtering tag.
enum TagAction implements pulumi.PulumiEnum<String> {
  valueInclude("Include"),
  valueExclude("Exclude");

  const TagAction(this.wireValue);
  @override
  final String wireValue;

  static TagAction fromValue(String value) {
    for (final item in TagAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TagAction value: $value');
  }
}
