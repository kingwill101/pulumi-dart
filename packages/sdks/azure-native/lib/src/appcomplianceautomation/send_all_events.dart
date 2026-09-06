import 'package:pulumi/pulumi.dart' as pulumi;

/// whether to send notification under any event.
enum SendAllEvents implements pulumi.PulumiEnum<String> {
  true_("true"),
  false_("false");

  const SendAllEvents(this.wireValue);
  @override
  final String wireValue;

  static SendAllEvents fromValue(String value) {
    for (final item in SendAllEvents.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SendAllEvents value: $value');
  }
}
