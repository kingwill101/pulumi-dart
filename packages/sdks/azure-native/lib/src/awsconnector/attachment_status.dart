import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum AttachmentStatus implements pulumi.PulumiEnum<String> {
  attached("attached"),
  attaching("attaching"),
  detached("detached"),
  detaching("detaching");

  const AttachmentStatus(this.wireValue);
  @override
  final String wireValue;

  static AttachmentStatus fromValue(String value) {
    for (final item in AttachmentStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachmentStatus value: $value');
  }
}
