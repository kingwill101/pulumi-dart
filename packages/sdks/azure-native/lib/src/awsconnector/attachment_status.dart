/// Property value
enum AttachmentStatus {
  attached("attached"),
  attaching("attaching"),
  detached("detached"),
  detaching("detaching");

  const AttachmentStatus(this.wireValue);
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

