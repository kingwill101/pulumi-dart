import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Gets or sets the Kind of the resource.
enum Kind implements pulumi.PulumiEnum<String> {
  sdk("sdk"),
  designer("designer"),
  bot("bot"),
  function("function"),
  azurebot("azurebot");

  const Kind(this.wireValue);
  @override
  final String wireValue;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}
