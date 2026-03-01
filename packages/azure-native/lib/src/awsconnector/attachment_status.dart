/// Property value
enum AttachmentStatus {
  attached("attached"),
  attaching("attaching"),
  detached("detached"),
  detaching("detaching");

  const AttachmentStatus(this.value);
  final String value;

  static AttachmentStatus fromValue(String value) {
    for (final item in AttachmentStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachmentStatus value: $value');
  }
}

