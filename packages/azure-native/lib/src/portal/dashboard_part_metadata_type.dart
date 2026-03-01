/// The dashboard part metadata type.
enum DashboardPartMetadataType {
  markdown("Extension/HubsExtension/PartType/MarkdownPart");

  const DashboardPartMetadataType(this.value);
  final String value;

  static DashboardPartMetadataType fromValue(String value) {
    for (final item in DashboardPartMetadataType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DashboardPartMetadataType value: $value');
  }
}

