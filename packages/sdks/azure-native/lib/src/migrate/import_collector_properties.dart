// ignore_for_file: unused_element, unnecessary_cast


class ImportCollectorProperties {
  final String? discoverySiteId;

  /// Creates a new [ImportCollectorProperties].
  /// [discoverySiteId] Optional.
  ImportCollectorProperties({
    this.discoverySiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoverySiteId': ?discoverySiteId,
    };
  }

  factory ImportCollectorProperties.fromMap(Map<String, dynamic> map) {
    return ImportCollectorProperties(
      discoverySiteId: map['discoverySiteId'] == null ? null : map['discoverySiteId'] as String,
    );
  }
}

