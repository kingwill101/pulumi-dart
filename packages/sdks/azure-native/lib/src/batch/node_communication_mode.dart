import 'package:pulumi/pulumi.dart' as pulumi;

/// If omitted, the default value is Default.
enum NodeCommunicationMode implements pulumi.PulumiEnum<String> {
  default_("Default"),
  classic("Classic"),
  simplified("Simplified");

  const NodeCommunicationMode(this.wireValue);
  @override
  final String wireValue;

  static NodeCommunicationMode fromValue(String value) {
    for (final item in NodeCommunicationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeCommunicationMode value: $value');
  }
}
